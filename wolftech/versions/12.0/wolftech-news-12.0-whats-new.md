# Wolftech News — What's New v12.0
**July 2024 Update (12.0)**
**Source:** Release notes #12 patch 13 Wolftech News.docx (embedded v12.0 overview section)
**Added to KB:** 04/06/2026
**Version scope:** 12.0 only — do not apply to other versions

---


Note: For a step by step guide on how to leverage the new features go to the detailed overview of functionality. For best practices on updating your system contact your account manager.


## SUMMARY BREAKDOWN:

This release comes with some excellent new features including a redesigned Feed page, Follow Stories capabilities that interact with mobile, Sharing searches, List views and a concerted effort to make our Publishing framework more interactive with 3rd party systems. We are now making the best of the current AI capabilities for publishing too.
Over on the media side we continue our efforts to support content authenticity initiatives as well as bring powerful new integrations to our partnership ecosystem to continue to build our production capabilities. Finally, we have also focused on bug fixes and performance and I am making them more visible than ever in this release note. Do check the patch releases notes on R11 as they will also include many fixes that are now of course also included in 12.
Overall I am pleased to see how aligned our output is with our recent user conference goals and look forward to continuing to deliver on our exciting road map ahead of us.
Stories
- Content Categorisation
- Searching for a department will now also display sub departments rather than only matches at the department and sub department level
- Fix:  issue with some department colors not being applied correctly
- Fix: In Filters Select all will correctly take into consideration department settings that enable or disable content creation in them
- Fix: Improvements to deletion of Organisations, Calendars and Offices in Admin to correctly move the references
- Fix: Making offices “booking only” in admin correctly hides it from your story categorisation options
- Fix: 'Shared with Department'-Tooltip is being displaced by 'You are not allowed to update story organization'-Tooltip

Background information (Editorial)
- Activity Log (Log Activity Option): Activity Log will send a notification on new editorial segment creation when users click on done. If a user clicks outside the text box to save the new editorial segment we will not send an change event. For further edits after the initial change event the user will be able to decide whether to notify the change so that spelling checks etc do not necessarily send activity log notifications.
- Stick Froala editor to bottom of the editor For a full responsive design
- Print background information items: The printout will include guidance.
- Time out of Background information items updated to 150 seconds to improve collaboration and avoid locking of segments when users become inactive
- Fix: Deleting Editorial Segments: Improved handling of deletion
- Fix: Link Cards can be opened from anywhere on the link card now.
- Fix: Mark important saving behavior when in edit mode
Logs (Read-in Notes):
- Add Description from quick add to Log Notes field
- Copy log from one department to another
- Link Story, Event and Pitch to Logs via hunter
- Track activity in Logs
- Use Hunter in Logs
- Fix: Sticky Header removed gap
Events & Calendars
- Display Discarded Events in Plan view: Option to display discarded events. They will be shown alongside active events but will have a clear discarded icon. (future we will include the group by content type to separate them)
- Drag and drop external calendar item to new plan view to create story from it.

Long Form
- Link Internal and external calendars to Episode
- Link Stories, Feeds, Pi
- tches, Episodes to Episodes via Hunter
- Link Episodes to Stories, Pitches, etc. via Hunter
- Link Dataminr Feed to Episode
- Create Sticky Notes in Episode Board
- Prefill Episode Booking Task Name with Episode Task Name: To enable searchability in the global search requests category
Chat, Alerts, Activity & Notifications
- Activity

- Activity Log Tracking of Status Changes: Story, Pub Point and Editorial Segment Status changes are now tracked in activity log and the new status is included in the notification
- Activity Log Tracking of Deletion of Board items: previously we logged the addition of items, we now also support the tracking of the deletion of them.
- Optional Logs: We acknowledge that sometimes you don't want to send logs for minor changes so we have created a new workflow for notifying of changes to editorial segments and publishing point templates and additional information.
- Activity Feed and Docking: The activity Feed can now be docked to the right if users have enough screen real estate, allowing them to see live updates to activity across their followed stories while they continue to work in stories or any other view in the system
- Follow Stories, Pitches, Events, Logs, Episodes and Pubpoints and decide whether you also want to receive notifications on the updates or just track them in the activity feed.
- Alerts
- Fix: Text Color: Improved the text color contrast with background when writing an alert

- Notifications:
- Email notification Improvements: revisited the formatting to be able to see the notification at a glance without opening the email and to improve readability of the email body
- Miscellaneous Bug Fixes: Improved email notification on follow stories
- More resourcing notifications *see resourcing section
Guidance (R&C, S&P, Legal, Risk, etc.)
- Notify all guidance teams: Added the admin configuration to keep all guidance teams aware of each other’s guidance conversations
- Fix: Improved Guidance behavior with selectable resource types for guidance

Media Management (Board/Connected Devices/Footage/Media Storage/API)
- Avid Media Central (StoryID based Media Storage): You can now set the Media Storage to display all assets in media central that are tagged with the storyID, rather than create a collection for it. This will display assets across the whole system that may have been ingested in multiple ways and places giving you a full overview without the need for Story folders or collections.
- Haivision Integration (Phase1): You can now manage your haivision units in your resources and assign them the correct transmitter information. When you book Haivision Units in Wolftech we will track them in the Live Media section as another connected device. The StoryID will be available to the unit as a Mission so they can record against it.
Resourcing (Bookings, Requests, Guest Overview, Finance and Tracking)
- Guests:
- New Guest booking workflow allows you to add a new guest and book them at the same time.
- Temporary Guests: New guests can be marked as temporary to enforce a different cadence of purging (Flushing)
- Print Guest Overview Page
- Fixes to Guest overview with date sorting, removed end date and alignment of the Global search column list to that of the guest overview
- Notifications
- Confirm Push Notifications: Booking confirmation request now sends push notifications to mobile app and direct the user to the booking where they can confirm it or decline and add message to booking
- Notifications on ungrouped bookings: Employees booked in the booking page as an ungrouped booking (where no story is associated with the booking) will now get a notification for it too.
- Map
- Abax Car Tracking integration: You can now track all production vehicles managed in Abax directly within the map section in wolftech. GPS location data will be updated live. Newly added vehicles in Abax automatically create new resources in Wolftech.
- Default location of booking to resource you are booking
- Map Live available resource indicator improvements
- Fix: Draw only resources that are visible in map view
- Fix Update of location in Mobile updating location in browser
- Fix Map Eye icon in dark mode
- Fix selected resource card color in map dark mode
- Fix location banner sometimes obstructing POI card

- Resource Profiles
- Resource Profiles multiline fields (including the about section) now have a 5000 character limit and can use the Froala editor for styling.
- Fix: Improved behavior when setting main image on resources

- Bookings:
- Fix: Correctly display the calendar color when dragging an event to a resource to book them in booking page
- Fix: Private ideas now become visible to people with no previous permissions on them that are booked on it.
Publishing
- Use Scout to Import content from Story: bring content into template and leverage AI to transform into social posts etc.
- 2 way CMS integration: Allow for external CMS systems to generate new stories and pub points in Wolftech for tracking as well as update the existing ones with changes.
- Follow Pub points to track their activity
- Improved Log Activity Flow for publishing points.
- Add Read Status to Pub points
- Additional Story Import Values for Publishing templates: Now you can map: Titles, Pub point Description, Story Office(s), Story Department(s), PubPoint Owner, Pub point TRT, planned Publishing Date and Time and Publishing Folder Name. (all of these values can be pushed to Open Media too).
- iNews Template Editor Redesign
- Add Unique IDs to Pub point Folder and Sub platform and make them available in API
- Pub Point Notes Field 4000 character restriction: Count characters left and enforce not being able to type or paste beyond the character limit
- Improved behavior when saving Rich text format template fields
- Allow connecting sub platforms to folders connected to other platforms so long as they have the same package template and workflow template.
- Improved pagination of Pub Point list to improve performance of stories
- Fix: Ability to edit a pub point date using the Today feature
- Fix Pub point Printing to include all fields in template
- Fix: Delete a pub point inside of a pub point
- Fix: Default values from templates
- Fix: Copying of products to columns with different templates
Plan
- Plan List view with keyboard navigation
- Reorder Publishing Points
- Print Plan Column (V1)
- Allow for multi-select when dragging and dropping across columns
- Improved handling of plan view when you load a story and it goes into the background to significantly improve story performance
- Fix: Week columns display weekday rather than year
- Fix: When copying story copy genre from source story
- Fix: Order of Pub Folders was not consistent with column order when creating a pub point in plan view
- Fix: See views in draft mode when loading a collection with See Draft enabled
- Fix: Added the + button to create new entry in plan month view
- Fix: Display publishing points in plan view when grouped by office
- Sorting Options for Publishing Points in Plan View: This is a new enhancement to the Plan View in our platform, providing users with flexible sorting options for Publishing Points.
- Sortable Publishing Points: Users can now select sorting options for Publishing Points using the new "Sort By" dropdown menu in the filter, with options to sort by "Manual" or "Time".
- Time sorting: Selecting "Time" will automatically sort Publishing Points based on their publish time.
- Manual Sorting: When "Manual" is selected, users can drag Publishing Points to their desired order within a folder.
- Folder timezone with enhanced clarity: Introduce a new feature in Plan View for Publishing Points that is Publish times are displayed in the folder's time zone, not converted to the viewer's local time. For example, if a folder is set to Samoa time zone and a publish time set in that timezone, when viewed from Asia, the times will appear in Samoa time.




Feeds
- Feed List View with Keyboard navigation
- Calendar navigation of Feed Page: See undated, today, last week or last month. Know that dataminr feeds will continue to show because they don’t have a date (they are live events)
- Pause a Feed column and Focus Mode
- Column Notifications in Feed page. This way you can be notified of any new feeds coming into the column, combined with the new keyword filter in feed view you can now effectively monitor your email feeds with certain keywords and be notified of incoming matching feeds.
- Show Categories and Keywords in list view: Description (To do)
- Display NEW indicator for new feeds in list view (TO CONFIRM)
- Trigger AI summaries of Dataminr events so you can get the latest on the status of a story without reading the whole list of feed items.
- Print Feed column
- Email Sanitizer (for formatting of email feeds)

User Groups
- Enable a department as a user group by default
- Fix: Delete user groups


Search
- Global Search
- Share Saved Searches: Share a saved search and organize them as needed. Including a new API for shared searches, abilities to share, and abilities to admin shares
- Feed filter to include Source Type categorisation before presenting all sources
- Fix: Search additional information fields that have the Search indexing enabled
- Hunter
- Search for Episodes in Hunter
- Search additional information fields that have the Search indexing enabled

- Find Similar Stories
- Search additional information fields that have the Search indexing enabled

Other:
- Accessibility (Almost AAA compliant!):
- Moved UI options (including High Contrast to My Page / Settings)
- Font Spacing User Preference to improve readability
- Improved High Contrast compliance across the application
- Improved Tabbing highlight across the whole application with
- Consistent design
- Navigation going into columns when selecting a column in left menu
- Ability to tab through stories, publishing points etc in left menu and plan view
- Escape shortcut to navigate back to group divider for ease.
- Improvements to Jaw’s experience including
- Translation file across screen reader
- Flagging of important tag on background information items
- Improved labeling of buttons for better navigation
- Improvements to date picker behavior in multi day stories
- Improved focus when deleting a section of a background information item.






## DETAILED OVERVIEW:
### STORIES
- Content Categorisation
- Searching for a department will now display sub departments rather than only matches at the department and sub department level

- FIx: Improved SignalR handling to load less data each time a story category has been updated - improving story performance overall
- Fix:  issue with some department colors not being applied correctly
- Fix: In Filters Select all will correctly take into consideration department settings that enable or disable content creation in them
- Fix: Improvements to deletion of Organisations, Calendars and Offices in Admin to correctly move the references
- Fix: Making offices “booking only” in admin correctly hides it from your story categorisation options
- Fix: 'Shared with Department'-Tooltip is being displaced by 'You are not allowed to update story organization'-Tooltip

### BACKGROUND INFORMATION (Editorial)
- Activity Log (Notify Option): Activity Log will send a notification on new editorial segment creation by default but for further edits the user will now be able to decide whether to notify the change so that spelling checks etc do not necessarily send activity log notifications. (See the Chat, Alerts, Activity & Notifications section for more info)
- Stick Froala editor to bottom of the editor For a full responsive design






- Print background information items:
Use the Print Action in the 3 dot menu

Then select which elements you would like to print including:
Text, Attachments and Content Guidance:


- Time out of Background information items
Please note that to improve the collaboration workflow we have a time out mechanism to lock any open multi-line Froala Field after 2.5mins of inactivity. This is to prevent the accidental locking of a field for an extended period of time, where a user may forget to click done or escape the edit mode.
Fix: Deleting Editorial Segments: Improved handling of deletion
- Fix: Link Cards can be opened from anywhere on the link card now.
- Fix: Mark important saving behavior when in edit mode

### LOGS (READ-IN NOTES):
- Add Description from quick add to Log Notes field
When adding a description as part of the quick add process for Logs we will now use such description in the Notes field

- Copy log from one department to another

- Link Story, Event and Pitch to Logs via hunter

- Track activity in Logs
You can now follow logs

- Fix: Sticky Header to remove unnecessary gap











### EVENTS & CALENDARS
- Display Discarded Events in Plan view: Option to display discarded events.


They will be shown alongside active events but will have a clear discarded icon.

(future we will include the group by content type to separate them)
- Drag and drop external calendar item to new plan view to create story from it.
Users can now create stories out of external calendar events by dragging an external event from the left panel into the plan view

### LONG FORM

After adding the right panel to the long form module we have added the ability to link elements to and from episodes
- Link Stories, Episodes, events and logs to Episodes via Hunter

- Link external calendars and Feeds to Episode
External events can be dragged from the left menu. Feeds from left menu or right hunter panel




- Link Dataminr Feed to Episode

Dataminr Feed will be tracked in the dataminr right panel like in stories


- Link Episodes to Stories, Logs and Events via Hunter

- Create Sticky Notes in Episode Board
Added the missing functionality in the episode board to create sticky notes.


- Prefill Episode Booking Task Name with Episode Task Name: To enable searchability in the global search requests category
When you create a booking inside of an episode task we will prefill the booking task name with the episode name followed by the episode task name
This is both to avoid duplication and to make sure a booking task name is indeed always filled so you can search episode tasks efficiently from the global search:




### CHAT, ALERTS, ACTIVITY & NOTIFICATIONS
- Chat
- Alerts
- Activity

- Activity Log Tracking of Status Changes: Story, Pub Point and Editorial Segment Status changes are now tracked in activity log and the new status is included in the notification


Do note that depending on your greenlight workflow you may automatically change the story status to the next story status on greenlight and that will log it. If your workflow does not move the status on greenlight it will log it as “ordered”.


- Log Deletion of Board items: previously we logged the addition of items, we now also support the tracking of the deletion of them. This can also be filtered in the Sow filter drop down above:


- Optional Logs
We acknowledge that sometimes we do not want to log all changes as it causes more noise than helps.
That is why we have established a mechanism whereby:
Editorial Segments automatically create a log on creation as you mark them “done”
however when you edit them after the fact you choose to notify the activity or not, so when you are doing spell checks or minor changes that are not worth sharing no one is interrupted by unwanted prompts


- Publishing points will only send updates of changes in the editor template or additional information  if you press the notify button when you want to share the changes to the rest of your colleagues.

- Fix: Event color addition on Activity Feed Focus mode

- Follow Stories, Pitches, Events, Logs, Episodes and Pub Points
You can now easily be kept up to date with the editorial progress of the items you need to be close to. The follow action will subscribe you personally to be notified of the items that are tracked in the activity log (Changes across Description, Background editorial segments, Board activity, Comments, or its overall status)

Once you click on it you will be able to see the Following status:

The Follow action is also available via the mobile app:

- Decide whether you also want to receive notifications on the updates or just track them in the activity feed.
The default when following an item is to subscribe to notifications but if you just want to see the logs in the activity feed click again on the following button to then disable notifications. This will keep you following the item in the activity feed but notifications will not be triggered.

Notification preferences can be set in the my page - notifications panel

They will push to mobile from where you can be taken straight into the action:

- Activity Feed: The activity Feed is a panel that can be pulled on the top right and indicates where there have been new activities logged:

If you click on it you can expand and minimize it like you do with the notification panel





In the activity feed you can look into a specific story with the eye icon

This will reveal all of the latest activity on that item with a left arrow to navigate back to the overall activity list:









If you have many notifications it is easy to mark them all as read or to unfollow them all from both web or mobile.


To unfollow an individual story or production just click on the notification that will direct you to that story and hit unfollow.

The activity feed panel can be docked to the right, if users have enough screen real estate. Although the default mode for the activity feed panel is floating, docking allows users to see live updates to activity across their followed stories while they continue to work in stories or any other view in the system.





To dock and undock simply click on the dock and undock buttons on the activity feed:

This will dock it to the right so you can work alongside this preview









- Notifications:
Email notification Improvements: revisited the formatting to improve readability.

- Miscellaneous Bug Fixes: Improved email notification on follow stories
- More resourcing notifications *see resourcing section
### GUIDANCE (R&C, S&P, Legal, Risk, etc.)

- Notify all guidance teams: Added the admin configuration to keep all guidance teams aware of each other’s guidance conversations. This will notify them of comments, not the initial request, as the request should only go to the resource types being requested.

- Fix: Improved Guidance behavior with selectable resource types for guidance

### MEDIA MANAGEMENT (Board/Connected Devices/Footage/Media Storage/API)

- Avid Media Central (StoryID based Media Storage): You can now set the Media Storage to display all assets in media central that are tagged with the storyID, rather than create a collection for it. This will display assets across the whole system that may have been ingested in multiple ways and places giving you a full overview without the need for Story folders or collections.

To switch your system to this mode go to admin - MAM options:

- Haivision Integration (Phase1): You can now manage your haivision units in your resources and assign them the correct transmitter information. When you book Haivision Units in Wolftech we will track them in the Live Media section as another connected device. The StoryID will be available to the unit as a Mission so they can record against it.
### RESOURCING (Bookings, Requests, Guest Overview, Finance and Tracking)

###### Guest Booking

When you want to book a guest, go to story bookings tab, choose to book either on the story or the location, select guests as the booking type:


Once you have the right selection, if you when you do a search if you don't find the right talent in the system then you can simply use the new + button next to guests on the top right


This will provide a window to create a new guest and upon completion it will land you on the correct booking page to finish the booking process.

Here you will have options to select the resource type for the guest
Enter any metadata fields from the overall human template as well as specific ones for the resource type
Add a department to limit who can see the guest
Add a location, picture, etc.
Then Proceed to the booking
In the booking you will be pleased to know that any field in the request template that is part of the profile will not need to be filled in as it will sync automatically from your previous page, saving you precious time.

###### Temporary Guests
New guests can be marked as temporary to enforce a different cadence of purging (Flushing)
When you create guests you now have an option to mark them as temporary.


This is a tag that allows you to differentiate guests you would like to keep in your database for longer from guests you are using as one offs or should be cleared sooner.
In the admin resources section and navigate to the Purge Guest menu.
Here you will be able to define the rules for regular guests vs temporary guests.

The first tab will show you the rules and those resources that match the criteria
The second and third tab will show people listed under the temporary vs standard guests.
Don´t worry. No one is deleted automatically. They will just show up in the list based on your defined options so you can choose to easily flush them after the fact or keep them.


###### Guest Overview
In the guest overview you can see exactly which guests are booked for a given time range.
Who is coming into the building with clear start and end date-times.
You also have the option to display the booking note field

The view can be sorted by Start Date, Title or End Date.
It is easy to define custom fields that you would like to display (like the studio location), which the admin can also sort as needed.

Simply add them to the request template, and “include them in search results”.
The order of the fields from the request template will mirror in the guest overview.

The overview can be printed  to easily share it as a PDF with others for daily planning.


- Notifications
- Push Notifications: Booking confirmation request now sends push notifications to mobile app and direct the user to the booking where they can confirm it or decline and add message to booking



- Notifications on ungrouped bookings: Employees booked in the booking page as an ungrouped booking (where no story is associated with the booking) will now get a notification using the booking task name:



- Map

- Default location of booking to resource you are booking
When booking a resource, if the resource has a defined location in their profile we will take this as the default starting point when adding a location on the booking. Helping you save time every time you book resources that may be updating their location live.


Any updates to your location in the Wolftech Go app will automatically update your location on the web UI.

- Map Live available resource indicator improvements
Available resources show with a green indicator and if you click on them they will be clearly displayed as available.


- Fix: Draw only resources that are visible in map view
- Fix Map Eye icon in dark mode
- Fix selected resource card color in map dark mode
- Fix location banner sometimes obstructing POI card
- Fix if a person is booked on a private story give them access, if the booking is canceled remove the access.

- ABAX integration:
We have a number of integrations that allow you to track your production vehicles in real time in the map view (See Abax for example)
- With this functionality it is easier than ever knowing where your production vehicles are to determine which one is best positioned to cover a story.
- If you have a location defined you can actually work out its distance and how long it will take them to drive to the required location.
- If the vehicles are showing live GPS data you will be able to see their position updating in real time for improved coordination.

- Resource Profiles
- Resource Profiles multiline fields (including the about section) now have a 5000 character limit and can use the Froala editor for styling.

- Fix: Improved behavior when setting main image on resources

- Bookings:
- Fix: Correctly display the calendar color when dragging an event to a resource to book them in booking page
- Fix: Private ideas now become visible to people with no previous permissions on them that are booked on it.
### PUBLISHING
- Use Scout to Import content from Story: bring content into template and leverage AI to transform into social posts etc. (Note, requires your own API Key to Azure or OpenAI)
The import content function is now paired with AI functionality so you can convert your source content before importing into a Publishing point field. Perfect for converting articles into social media posts, translating content before publishing or getting some suggestions for the perfect title or keywords for your Publishing point.
To do so, when you use the import content function

Select a source from your story you will be able to preview the source and you will have 3 options, canceling the import, importing it as it (Add) or using the smart pubpoint function:




This smart pub point function will open up the scout assistant where you can select the type of smart assistance required to transform your source text (Social Media Post vs Translation, etc). Select the type of within your function (Facebook) and then hit create:

Once the prompt is selected you will be able to preview it before import. Always keeping you in the loop.
Click import once completed knowing that you can always continue to edit it in your template before publishing.


- 2-way CMS integration: We have delivered a new breakthrough in how we integrate with your CMS to enable both the push of stories from Wolftech to your CMS and the import of changes back to wolftech as well as the creation of stories in wolftech from your CMS. To find out more about how you could leverage this new functionality speak with your account manager.

- Improved Log activity flow
Activity Log
The publishing point´s activity log tracks the editorial activity inside of a pub point.
This includes  status changes, additional information changes, changes to the template editor and comments. Note: It does not include Publishing point title or description changes.

Users are able to choose when to notify of changes to the additional information fields by clicking on the log activity. This will give you a message that the activity has been successfully logged and those that click on the log will be directed to see the changes:


Users will also be able to manually log activity changes to the template in the editor with the same Log Activity button. This appears when you unlock the template for editing.

Note, in this instance you can do multiple changes to the template and we will just notify that the template has been updated.

Follow, Notifications and the Activity Feed
The owner of the pubpoint or those booked on it will be notified of changes to its status.
Other team members can follow a pub point to receive updates with any editorial changes to it.

This includes changes to, updates from the additional  information section, changes to the publishing template, comments or changes in status.

The activity will be presented in the activity Feed:

Clicking on those takes you directly to where the action is happening.

Push notifications will also be sent depending on your notification preferences.
To follow activity updates in the activity feed but silence notifications of them click on unfollow once to uncheck the notifications option

To change the notification preferences for pub point go to your My Page - Notifications menu:



Read and Activity Updated Indicators in Pub points

To help you navigate the increasing amount of content output and focus on what matters, when you are planning your publishing calendar we will give you 2 indicators to check

- New Publishing points you have never accessed (Unread) - Orange dot

- Publishing points that have been updated since the last time you accessed them - Orange triangle

With the orange triangle on hover over you will be able to see the last change and from there you can click to dismiss the update on the triangle or click on the publishing point to see the full activity log
No more chasing around for updates.

- Additional Story Import Values for Publishing templates:
The publishing template admin panel now allows you to map even more data points from your story to automate the import of metadata and pass it on to 3rd party systems like OpenMedia.
Now you can map:
- Titles,
- Pub point Description,
- Story Office(s),
- Story Department(s),
- PubPoint Owner,
- Pub point TRT,
- planned Publishing Date and Time and
- Publishing Folder Name.
To do so simply go to the publishing template admin editor, click to edit the field and click on the right corner arrow to select the source you would like to map.

- iNews Template Editor Redesign
The iNews template editor has had a clean up done with more planned in future.
On the top bar you will see your buttons to format existing text blocks or add elements into the editor

The fields below it are defined in the story template in iNews
Next under you will find all of the editor body items
- P stands for Presenter text (ie. the script for your presenter)
- PI Stands for Presenter Instructions (which will also be visible in the teleprompter but won´t be read)
- CC stands for Closed Captions to include a description of the media without making it readable or counting towards talk time.
On hover over you will be able to see the import content button to import text from background info items:

You can also see drag handles on the left and the accessible up and down arrow buttons to reorganize elements in the editor
If Graphic or automation elements are present in your story template you will be able to edit them directly from the editor. Some of them may have sub-classes to decide which fields to present:

Once a graphic has been selected you may have some fields to fill in directly from the editor:



The iNews editor has a sticky framework so that you can always have access to the format and element buttons


- Add Unique IDs to Pub point Folder and Sub platform and make them available in API
To improve our API connectivity we have added internal IDs to the sub platforms and we enable the clients to tag the publishing folders with their own ID.
To see the internal ID for the subplatform go to the admin-platform-subplatform level:



A unique ID for your publishing folder will be auto generated and can be seen from the edit page for the publishing folder:


- Pub Point Notes Field 4000 character restriction: Count characters left and enforce not being able to type or paste beyond the character limit
The notes tab allows you to add useful information for all of the teams working on the publishing point. It has the same 4000 character limit as the description field but does not require the Froala editor styling capabilities.
The notes field now has a character count to let you know when you are about to reach the 4000 character limit and will prevent you from trying to continue to write beyond its maximum capacity.

If you try to write or paste a text longer than its maximum character limitation it will prevent you from continuing to write:

- Allow connecting sub platforms to folders connected to other platforms so long as they have the same package template and workflow template.
When connecting slots or sub platforms to Publishing folders to migrate them to the new folder structure we now allow to connect Generic Platform or Open Media Platforms to folders that are not connected to the same Platform provided that
- They have the same Publishing Package Template
- They have the same Publishing Workflow Template
This allows to consolidate and merge teams that may have been previously grouped in different platforms but with the same workflow


- Notable fixes
- Fix: Ability to edit a pub point date using the Today feature
- Fix Pub point Printing to include all fields in template
- Fix: Delete a pub point inside of a pub point
- Fix: Default values from templates
- Fix: Improved copying of products to columns with different templates
- Fix: Improved behavior when saving Rich text format template fields
- Improved pagination of Pub Point list to improve performance of stories
- Fix - if additional info on pub point was set up with only one field it was not displaying correctly
### PLAN
###### Plan List view with keyboard navigation (V1)
You can now view the Plan view in list mode.



Toggle the list view with the top right list icon

You will then see
- your columns listed on the left pane
- all stories belonging to the selected column listed in the middle
- Selected stories that you choose to expand on the right, where the header and description are editable.
- Note. it currently only supports Story pages. It will support other elements (events, logs, Publishing points etc) soon.
The Eye icon allows you to add or remove columns from this list view
.
The keyboard navigation is simple and very fast.
- -> From the left column you can tab to move through them
- Enter will load the column to see the feeds without navigating into the feeds center pane..
- ␣ Hitting the spacebar in a column will both load the column and land you on the first feed in that column
- ␣hitting the spacebar on a feed will pop up the expanded view for that feed.
- ↑ Using up and ↓down arrows you can move through the feeds either in list or expanded.
- Esc Hitting the escape will navigate out of the expanded view
- ← Hitting the left arrow will take you back to the column navigator

Reorder/Sort Publishing Points

- Users have now one filter to sort Publishing point columns either manually or by Time.
If sorted manually users can rearrange publishing points in the column.
If sorted by time users change the time of the publishing point to affect the order.
For publishing folders (shows) where there is a fixed time users will be able to rearrange the publishing points regardless of the sorting preference in the column.
If a column contains both fixed time shows and publishing folders like social where they need to be sorted by time use the sort by time filter and it will work for both publishing folder types.


Publishing Points, showing folder-specific times with an indicator for differing time zones:
- Indicator: An indicator will appear when the folder's time zone differs from the viewer's local time zone. Hovering over the indicator reveals the folder's specific time zone.
- Admin Switch: An admin switch allows users to control the visibility of the time zone indicator. When the switch is on, the indicator will be hidden if the local and folder time zones match. When off, the indicator will be shown even if the time zones match. These enhancements will provide greater clarity and flexibility in managing Publishing Points in Plan View.

###### Print Plan Column (V1)
To print a shared view plan view column click on the (i) icon then select Print Column


To Print a private view hit the 3 dot menu and select print column


###### Drag a Story into a column with a publishing status other than to do
If the Pub point column has a status filter it will tag it with the status of the column. If you try to drop it on a status beyond a step that requires approval it will error out to make sure you don´t sidetrack the workflow template



###### Allow for multi-select when dragging and dropping across columns
By dragging a tile from one column to another you can reconfigure the information for such tile.
That may mean you want to change the status of a story or a publishing point.


Sometimes  it could be a combination of metadata changes for the tile, like department, genre and office. In that case we now present a pop up for you to define the options with radial menu for single select and checkboxes for multi select fields:


###### Notable fixes:

- Fix: Week columns display weekday rather than year
- Fix: Date picker displays day of the week so you can see the day of the week in day view
- Fix: When copying story copy genre from source story
- Fix: Order of Pub Folders was not consistent with column order when creating a pub point in plan view
- Fix: See views in draft mode when loading a collection with See Draft enabled
- Fix: Display publishing points in plan view when grouped by office
- +++
### FEEDS

##### Calendar navigation

You can filter the Feed page with calendar selectors to see
- Undated (This is the default and shows all feeds from today backwards)
- Day (Select one date and see all of the selected´s day feed)
- Week (the last 7 days of feed from the selected date)
- Month (the last 31 days of feeds from the selected date)
Do note, Dataminr feeds will continue to show regardless of the date filter because they don’t have a date (they are live events)

- Feed List View with Keyboard navigation
The Feed view can now be experienced as a list view

Toggle the list view with the top right list icon
You will then see
- your columns listed on the left pane
- all feeds belonging to the selected column listed in the middle
- Selected feeds that you choose to expand on the right.
The keyboard navigation is simple and very fast (note this only applies to list view)
- -> From the left column you can tab to move through them
- Enter will load the column to see the feeds without navigating into the feeds center pane..
- ␣ Hitting the spacebar in a column will both load the column and land you on the first feed in that column
- ␣hitting the spacebar on a feed will pop up the expanded view for that feed.
- ↑ Using up and ↓down arrows you can move through the feeds either in list or expanded.
- Esc Hitting the escape will navigate out of the expanded view
- ← Hitting the left arrow will take you back to the column navigator

##### Focus Mode
As you navigate through your list of feeds in either column or list view you may scroll down a list. Wolftech will lock that view so that when new incoming feeds arrive in that column or list the experience is not jarring and does not scroll automatically for you. We call this focus mode and it is a default that is activated the minute you scroll down a list. If your focus is on the first feed at the top new feeds will appear.

##### Pausing a column
You can pause a column with the hover over pause button. This will pause new feeds coming into the column so you can make sure to review all of them before hitting on the play button to resume the input of new feeds.


##### Printing
To share the feeds with others who don't have access to the system you can print a column by  simply going to the 3 dot menu for the column

Results typically display best in Portrait mode:


##### Column Notifications in Feed page.

You can activate to receive alert notifications for every new entry in a column you have setup:

Use the check box to add notifications to your columns. When you enable it new entries to your filtered Feed Search will send a notification.
Combined with the keyword searches it means you can set up a feed column for a source (whether internal emails or external newswires), add a few keywords to narrow down the type of result you are after and move onto something else knowing that when a new feed comes in you will be notified.
When enabled you will see a notification bell icon pop up so you know which columns have it enabled.



##### Categories in list view
Feed Categories now display in list view

##### AI summaries of Dataminr events
Dataminr Feeds have the ability to group related events into one feed event. This allows you to see how a story evolves over time.
Because these stories can grow fairly large Wolftech has added the possibility to summarize the current status of the event by summarizing all of the related events until the point you trigger the summary.

To do so go to a dataminr event that contains multiple entries and click on the summarize button:


- Email Sanitizer (for formatting of email feeds)

### USER GROUPS
- Enable a department as a user group by default
Based on feedback, the default for departments now will be to enable them as user groups

- Fix: Delete user groups
### SEARCH
##### Feed filter to include Source Type categorisation

In Global Search when searching feeds you can now filter by Source Type ( RSS, Agency, etc.), the actual source. And also you can leverage categories for a full search experience in line with the filters that you can apply in the Feed page.

- Fix: Sorting of global search when Everything category is selected is chronological
- Fix: Search additional information fields that have the Search indexing enabled
- Global Search
##### Share Saved Searches:
The searches you do in Global Search can be saved for future use

You can choose to save it in the My Searches top folder or create a hierarchy folder to group them:

These will show up on the left side under My Searches

Once you have saved a search, if you have the right permissions, you can move them and reorganize them, and  also share it with others by clicking on the 3 dot menu.


You can share it with individual users, departments and custom user groups that have the share search enabled.

Once the search is shared with you it will appear in your shared searches section from which each user can organize it as needed into personal folders:


To enable the sharing of searches you can do so in the admin  user groups section:

To enable the sharing of searches you can do so in the admin  user groups section:


In the authorisation page you will find a new ability to share searches in case you want to restrict the ability to share searches:

In the shared searches admin section, System Admins will also be able to unshare shared searches across the whole organization if required



- Hunter
##### Search for Episodes in Hunter
##### Search additional information fields that have the Search indexing enabled

- Find Similar Stories
##### Search additional information fields that have the Search indexing enabled





### Other:
##### Accessibility:
- Moved UI options (including High Contrast to My Page / Settings)

- Font Spacing User Preference to improve readability enable users to widen the letter spacing

- Fixed issue with Tabbing where it skipped office field
- Flagging of important tag on background information items in Jaws
- Improvements to Jaw’s experience
- Improvements to date picker behavior in multi day stories
- Improved focus when deleting a section of a background information item.
- Fix labeling of collapse button
- Fix Aria Current Attribute to top menu page
- Fix text in booking screen
- Fix some items where high contrast mode was not adhering to AAA standard
- Fix tabbing to reach group dividers in plan and left column
- This version is being tested for WCAG AAA standard of accessibility And subsequent patches will get us to the certification.
