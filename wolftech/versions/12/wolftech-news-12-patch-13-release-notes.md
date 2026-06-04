# Wolftech News — Release Notes v12 (Cumulative Patches 1–13)
**Source:** Customer release document — distributed to customers, not posted publicly
**Added to KB:** 04/06/2026
**Version scope:** v12 patches only — do not apply to other versions

---

## Patch 13

### Bug fixes and changes

- Improved server performance under high load.
- Added loading animation to the quick adds ADD button.

---

## Patch 12

### Bug fixes and changes

- Fixed an issue where Editorial item's status was not accurately showing in the email notification for any change in status
- Fixed an issue where it was not possible to select text to copy in editorial items without entering edit mode

---

## Patch 11

### Bug fixes and changes

- Fixed an issue where printing of all additional fields in publishing point was not working
- Fixed an issue where distribution point with assignment was not loading properly
- Fixed an issue where popup for text colour editor was hiding beyond the sticky panel
- Fixed an issue where tracked vehicle was showing jumping back and forth
- Improved message when a view residing in a single collection can't be removed
- Fixed an issue where signalR used to stop working when browser was not active
- Made a change so that delete board attachment does not post an activity log
- Improved background information status activity log by adding some text from the item
- Fixed an issue where feeds dates were incorrect at times
- Fixed an issue where deleting empty editorial text was posting an activity log
- Fixed an issue where printing of some fields in story additional information was not working

---

## Patch 10

### Bug fixes and changes

- Fixed an issue where unshare department when shared with own department was not working
- Fixed UI issue where font selector in editorial text-box was hiding behind other UI elements
- Improved how follow push notification is previewed on mobile
- Added the possibility to see all plan and feed collections under admin organisation
- Fixed an issue that caused lag in typing for several users
- Fixed an issue where cache invalidation for errors did not work properly
- Increased timeout for notification handler to fix an issue where notification was not generating any preview always

---

## Patch 9

### Bug fixes and changes

- Fixed an issue where removing views that are marked as favorite was not working
- Fixed an issue where copying a publishing point with time in plan view was not updating the time correctly
- Added a group indicator icon to request guidance types when alert setting for guidance is set for all resources of that type
- Fixed an issue where platform alert was partially covering the sticky text editor
- Fixed an issue where link preview on hover in editorial text was getting stuck sometimes
- Fixed an issue where publishing point creation modal would open twice when copying in Plan view
- Fixed an issue where copy of publishing point into a column was only possible if there was at least one publishing point already visible
- Fixed an issue with distribution point date during creation where today's date in story was ignored where there was a future date as well
- Fixed an issue where SHIFT+ENTER was adding extra line space in the text editor
- Fixed an issue where pressing ESC twice was not closing the opened story anymore
- Fixed an issue where platform alert was blocking background information text editor's buttons in edit mode
- Made it possible to log activity for publishing point description
- Fixed an issue where switching between publishing points in list view inside story, was causing visual duplication of description activity log

---

## Patch 8

### Bug fixes and changes

- Fixed plan view reordering drop target not appearing when moving content fast
- Fixed issue when users who uncheck "receive notifications" when following a story, continued to receive notification
- Fixed an issue where user following several stories received wrong story title when focus on eyeball in activity log
- Minor performance fixes

---

## Patch 7

### Bug fixes and changes

- Fixed issue where publishing points would remain in plan view after deleting the main story.
- Fixed issue where booked contacts would be shown as guests when they were booked as staff.
- Fixed issue where location reports for vehicles would overload the database.
- Fixed issue where copy a publishing point, copied it to today's date by default

---

## Patch 6

### Bug fixes and changes

**Accessibility**

- Fixed an issue where close button for distribution point opened modal was not labeled properly
- Fixed an issue where shared with department UI had navigation attribute for the departments with no access. This caused unnecessary navigation for accessibility users
- Fixed an accessibility issue where navigating to publishing point description with header level 3 was not working

**Publishing point**

- Fixed an issue in additional information for publishing point where check was not showing as checkbox
- Fixed an issue where time information was not editable when create publishing point from plan view using plus button
- Fixed an issue where booked staff on publishing point sometimes did not appear without a refresh

**Booking**

- Fixed an issue where booking grid view was slow and resulted in timeout error

**Communication**

- Restored display of @ before name when someone is mentioned
- Fixed an issue where activity log from description or editorial text will not include any text when the text is too large
- Fixed an issue where "show more alert" option was shown when alert setting for non-critical alert was switched off
- Change editorial text saving so that initially there is only one button Log Activity, once this is used, there will also be a Done button to only save but not log.
- Fixed an issue where event status nomenclature was not the same when hovering over the orange triangle in the plan view

**Story**

- Fixed an issue where it was difficult to type hyper links in an editorial text

---

## Patch 5

### Bug fixes and changes

**Story**

- Fixed issue in print format for background information when printing story
- Fixed a printing issue with story where date in the header was missing
- Fixed an issue where show more button in background information text was not showing when add a large text during an edit
- Fixed an issue where linking a story to log was not creating tracking link
- Fixed an issue where opening log from tracking section was not working

**Plan and Feed**

- Fixed an issue with list view so that content always opens with mouse click
- Fixed an issue where event did always show up in plan view
- Fixed an issue where create story from event was failing
- Fixed an issue where long view name for plan view was overwriting the favorite button
- Fixed an issue where comma separated keyword was not working for hunter column
- Improved feeds with video to include more metadata
- Fixed broken drag and drop on plan view event
- Fixed an issue where ALT + Arrow did not work for publishing point manual sort
- Fixed and issue where publishing point time visibility on plan view was not updating before a reload when change in the view menu
- Fixed character escaping issue in plan view update triangle

**Admin**

- Fixed an issue with resource type export where it was exporting to a wrong format
- Fixed issue with moving references for brand and added a warning about reindex the need of reindexing
- Added a warning about the need of reindexing when changing calendar permissions
- Fixed an issue with dragging when sorting in collection view

**Communication**

- Fixed an issue where Bell/Browser notification content was not consistent always
- Fixed an issue where clicking on message activity log was not opening the message panel
- Fixed an issue where it was possible to send multiple alerts by clicking the send alert button multiple times
- Fixed an issue where description on note was not highlighted when navigated back from activity notifications
- Fixed an issue where email notification was not sent for board item deletion
- Fixed an issue where Open in Wolftech button from Log notification email did not navigated back to the story
- Fixed an issue where notifications from story status were pointing to description when navigated from a notification
- Fixed an issue where setting unavailable from mobile would not trigger an update to the location map in the web
- Added a separate button for event in pin section to be able to hide events separately
- Fixed an issue where private log was still marked as private after sharing with wtnAll permission group
- Removed push notification for old mobile app
- Fixed an issue where @here was not working on note
- Fixed status nomenclature on email notification of story

**Publishing point**

- Fixed an issue where Log activity button was showing twice in Publishing point additional information
- Changed Done button tool-tip to only say changes
- Fixed an issue where publishing point was disappearing when moved among different status columns in Plan view
- Fixed an issue where TRT was not calculating for shared publishing points
- Fixed an issue where Done button had wrong tooltip for several places
- Added Publishing point author and publishing point date fields to import in template
- Fixed an issue where imported formatted text in publishing point did not keep the format for a template's rich-text field
- Fixed publishing point default date selection so that it observes story date in order to set a default date for publishing point.

---

## Patch 4

### Bug fixes and changes

**Admin**

- Fixed an issue where Map zoom settings set in Admin were not applied
- Fixed an issue where the switch to turn on/off Background information segment edit warning was not working
- Fixed an issue where exporting resource type was not working
- Resource type template and request fields will now show field id
- Fixed an issue where search company with assigned resource type was not working
- Fixed an issue where feed view order feature in Admin was not working

**Content Creation**

- Fixed an issue where Genres were not selectable during creation of an event
- Fixed an issue where Timeless note was showing as Timeless story in note date picker
- Fixed an issue with note where it was not possible to move status back to To Do

**Resources**

- Fixed an issue where primary phone number field was not visible when creating contact
- Fixed an issue where assigned resource to a guidance that is not part of that particular guidance team was not able to resolve the guidance
- Fixed an issue where guest view was not updating when update guest information

**Booking**

- Fixed an issue in Booking view where last looked at date was not preserved when move out of the view and come back
- Improved resource search in story booking to show exact match at the top and a get more button for 100 plus entries
- Implemented mouse hover on resource name in booking resource finder to be able to show full name
- Removed office selection from Guidance request form
- Fixed an issue where non-requestable guest was showing up in the requestable list of booking
- Fixed an issue where adding guest from right panel to booking grid was not working properly

**Publishing point**

- Fixed an issue where Add new button, to add more folders in publishing point was missing
- Fixed publishing point folder selection panel so that it show the selected folders at the bottom
- Fixed an issue where showing the list of favorites allowed the non-matching folders to be selected together
- Fixed an issue with TRT slot update in old plan view
- Fixed an issue where sharing publishing point was throwing error
- Fixed an issue where publishing point list, when see them in a publishing point details view in story, did not have Get more to load all publishing points

**AI**

- The three dot menu on description to get AI assistance was missing. This is fixed now

**Plan and Content management**

- Fixed an issue where a pinned event would appear as a pinned story in the Pin section
- Fixed order of calendar in left menu, so that it matches the sorting with how it is sorted in Admin
- Fixed issue for clients still using legacy workflow templates, where some plan view filters were not working on mobile app
- Fixed an issue where Dataminr feed was loading same feed repeatedly
- Improved performance when zooming or resizing the browser window
- Fixed an issue with old plan view where deleted publishing points were not going away from the view
- Fixed department list in shared search where the list of departments had error in the name

**Communication**

- Fixed an issue where guidance request was not sending notification to all the members associated with the guidance
- Fixed issue with escaping &nbsp in browser notifications
- Fixed an issue where update triangle was not showing without refresh
- Fixed an issue where red unread marker was not going away even after a story is read
- Fixed an issue where Open in wolftech from email for added board item was not taking to the story

**Media Integration**

- Fixed an issue were more than 20 items were not loading in mam search result

---

## Patch 3

### Bug fixes and changes

**Story**

- Fixed an issue where Copy of text was missing from the copied story title
- Fixed an issue where dead links were created for deleting content from tracking section
- Fixed the Label from Email to Feed when an attachment is added to the board from Feed
- Fixed an issue with video thumbnail when added a feed item to board

**Categorisation**

- Fixed story type selection popup in Plan view so that, the default selection is now set to Other story instead of Top story

**Accessibility**

- Fixed an issue with high contrast mode for episode number in production module
- Improved Activity log/Follow activity usability for smaller screen size
- Fixed some incorrect aria label for collapse/expand attribute
- Fixed button label for Home button
- Fixed accessibility issues with top menu and left menu story view so that accessibility tools can read them properly

**Feeds View**

- Included sender information for email feed
- Fixed an issue that caused inconsistencies in date format in the feeds view
- Fixed an authorisation error with Dataminr integration
- Fixed an issue where feeds in list view was not opening with mouse click

**Plan View**

- Fixed an error when moving a log within plan view
- Fixed an issue where switching between favorites in Plan view was not working
- Fixed an issue with chronological sorting of calendar in Plan view
- Fixed an issue where creating a publishing point in plan view was causing error
- Fixed an issue where story owner name in Plan view was not showing

**Logs (Read-in notes)**

- Fixed copy of log so that after copy, it opens the copied log

**Activity Log**

- Fixed an issue where deleted log email notification did not link back to the story
- Fixed an issue where activity log for delete item was pointing to description when clicked

**Communication and tracking**

- Fixed unmatched Nomenclature between editorial text status and activity log
- Fixed an issue where some users were not able to access pinned event
- Added browser notification for follow activity
- Fixed a margin issue when printing publishing point and story background information
- Improved push notification for mention in mobile so that user can see the contents around the mention partially as part of the push notification

**Publishing**

- Fix an issue where publishing point title was being squeezed when activity feed was open
- Fixed an issue where user would get incorrect error message about a publishing
- Fixed an issue where links in pub-point template fields were not clickable even in read-only mode
- Fixed an issue with month view where unable to drag and drop publishing points to a different date

**Resourcing**

- Fixed an issue where booking icon in the publishing point view was not showing

**Search and Filter**

- Fixed button name when create a folder for saved search in Global search filter

**Infrastructure**

- Fixed issue with cache validation across multiple servers
- Improved recycling process so that there is no downtime

---

## Patch 1

### Bug fixes and changes

- Fixed an issue where the "Get More" button in the Plan view created fake duplicate entries when pressed.
- Resolved an issue where users were unable to create a publication point in any status other than "To Do" from Plan view.
- Fixed a bug in Quick Add where a selected time zone resets when changing the time on events.
- Addressed an issue where organisation levels could not be deleted due to unmovable references, allowing for smoother management of organisational structures.
- Fixed an issue where checkboxes in the Booking popup did not receive focus highlight when tabbing, improving accessibility.
- Corrected an issue where stories disappeared from the left menu when switching story tabs, ensuring persistent visibility of content.
- Resolved a misleading warning message that appeared when uploading a 3.5GB file, incorrectly stating the file was over 4GB.
- The default time zone for Publishing Points now aligns with the show time rather than the user's default time zone, improving the accuracy of time displays.
- Fixed the Global Search function to work properly when filtered by Story Category and searching for Additional Information Fields.
- Restored the missing "+" button in the new Plan view's Month view.
- Fixed an issue where performing a search would close the left menu, allowing the menu to remain open and accessible during searches.
- Improved local date formats handling to avoid date formatting issues based on location.
- Fixed an issue where when we change the status on a segment of text, the status in activity log is not correct
