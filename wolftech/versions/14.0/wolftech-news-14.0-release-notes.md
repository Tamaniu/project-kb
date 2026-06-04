# Wolftech News — Release Notes v14.0
**March 2025 Update (14.0)**
**Source:** Customer release document — distributed to customers, not posted publicly
**Added to KB:** 04/06/2026
**Version scope:** 14.0 only — do not apply to earlier versions

---

## Summary

In this release we focus on expanding our digital first publishing workflows, connecting your CMS in new ways and now adding emails to the previous list of rundowns and audio publishing workflows.

Bringing everyone together means bringing the best views to each team, improved list views and refined data points across web and mobile are part of it. This release also comes with a new optional add-on to the family: our Wall monitor plugin, that allows you to preview Wolftech pages on external display monitors across your office seamlessly.

On the production side, media contributions on the web and mobile are now faster with direct to S3 uploads. As soon as the assets are ready your colleagues can be notified of those uploads in the activity feed, which now includes image previews on hover for asset uploads, saving precious time for the journalists who no longer need to navigate to the story to check if the image is useful to them. And to better leverage your existing library content we are taking steps to attach your 3rd party MAM assets to your editorial segments.

Finally, as part of our commitment to supporting your day-to-day change management we continue to improve security and performance and areas like notifying users when an updated version is available, help documentation and better shortcuts across the board, making it easier than ever to deliver our solutions to your teams.

> **Note:** To continue to improve our communication, we are now breaking the release notes into our core components.

**Release notes components:**
- Research: Feeds and Ext data sources
- Planning: For quick add, content pages, categorisation, greenlight and plan view
- Resourcing: For all things bookings, risk assessment, locations, finance and resource management
- Production: For Editorial section, Media workflows and AI assistants
- Communication & Collaboration: For chats, notifications, alerts and activity feeds
- Publishing
- User experience, navigation and accessibility: Including my page, help, and overall design navigation and accessibility items.
- Administration: For all things authorisation, security, admin, API, performance, etc.

---

## Research

### Feeds

- Refined Layout of Feed list view for better readability
- Eye icon control in Feed page to control metadata columns visible in List view
- Show Feed Subjects in Feed Pop up page and list view (for supported sources)
- Expanded Keyboard Shortcut navigation for Feed Page
- Assign Plan or Feed list views to departments directly in admin without needing to assign permissions previously
- Improvements to the handling of Live Feeds via API (see administration API section)

---

## Planning

### Quick Add

- Support Rich text in quick add description Field

### Events

- Display Location in External Calendar items if provided

### Read-in Notes (Logs)

- Improved Tracking support to track Copied Read-in Notes (Logs)
- Discontinued the Old Logs Top Menu function. Please transition to the more feature rich read-in notes.

### Long Form

- Bug fixes including timeline view, publishing dates in timeline view and optional stages

### Categorisation

- Improved handling of changes in colours in departments

### Plan View

- Discontinue Old Plan View. From this version we no longer support the old plan view. Please complete your transition in release 13 and enjoy the new performance and possibilities!
- Support for Events and Publishing Points in Plan List view
- Admin to assign Plan or Feed list views to departments without needing to assign permissions previously in view collections manager
- Display publishing template in plan view publishing cards. Great to see what type of package they are

---

## Resourcing

### Bookings, Requests, Guest Overview, Finance, Map, Risk Assessment and Tracking

- In the Booking top page, sort the resources that have the same booking start time by start time and then by order added
- Miscellaneous bug fixes

---

## Production

### Editorial (Background information)

- Draft Mode (BETA): When you start a new text box it will go into draft mode. Others will be able to see you are writing something new, but they won´t be able to see its content or edit it until you save it for the first time. This first version of the item won´t be auto saved on time out either. It will appear locked for others until you save it first.
- This also means that if you had added @mentions in your draft, we will not send the mention until you save the changes to avoid unnecessary notifications. If you click outside of your text box, we will not save the changes but keep it in draft mode so you can continue working on it until you are ready to share it. A new warning flags that there are unsaved changes to make sure important updates to stories are never left behind. This warning is escalated if you try to close your story.
- Select and copy content from editorial segments without going into edit mode

### Media Management (Board/Connected Devices/Footage/Media Storage)

- Direct to S3 Uploads in Board (Web and Mobile) for faster and more secure uploads
- Improve upload progress tracking
- Attach MAM assets to your Editorial Segments
- Download assets attached in Editorial Segments
- Improved Display of MAM assets metadata in Hunter Search
- Pagination on MAM assets Hunter search results to better account for all matches
- Consistently use the same secondary browser whenever you open a MAM asset in 2nd tab.
- Improved Hunter Search of Avid Media Central Production Management Assets
- Use Story UniqueID in Haivision Connected Devices workflow for orchestration

### AI Assistant

- Support for larger data sets in scout functions

---

## Communication & Collaboration

### Chat

*(No new features listed in this release.)*

### Activity

- Hover over an activity feed entry for a new image upload to preview the image without needing to navigate to the story saving important time.
- Bookmark Activity Feed items: You can now bookmark an activity feed item to check it later so you can mark all recent activity as read but keep some for later.
- Save Activity Log Behaviour (Description and Background Information): Updated the description logging behaviour to match the functionality with background information items. The new save button allows you to save it (and log it), save without logging, or cancel changes.
- Improved Description Activity Log: The Description now logs changes in the same way as background information items and is supported across story and publishing point descriptions. Navigation from the activity feed to the description field has also been improved.
- Removed board asset deletion from activity log (for now), to prevent too many messages when deleting unwanted assets pasted from other websites.

### Notifications

- Prevented sending 2 notifications when someone is mentioned, and they are following the content too.
- Improved email notification routing for follow content description changes
- Miscellaneous bug fixes

### Alerts

- Automatically populate resource phone number when creating internal alert with phone number field in template.
- When exporting internal alerts to 3rd party systems include reference to Wolftech Object (Story, Event, Editorial Segment, etc.) with Feeds that was previously not included

---

## Publishing

### Publishing

- New Full Screen Publishing Point Design (to make the most of your laptop screen space)
  - Full screen layout
  - Editor tab for immediate access to editing the content
  - Improved Scroll Down Sticky Behaviour
  - Collapsed Publishing point list with quick access
  - Collapsable Right panel to focus on the writing
- Publish to Email: Perfect for Publishing to Newsletters or for using email publishing to push publishing information to Fast Platforms tracking email inboxes. Set your template and use the system email address to deliver your email.
- New APIs for better management of Publishing Points from your CMS (See admin API)
- Improved Publishing Admin Area
  - Design
  - Clearer Admin terms (Publishing section, Platforms, Templates, Folders)
  - Change the color of publishing folders independently of the color of their source platforms or hierarchical folders to better categorise your output
- Discontinued Old Plan view

---

## User Experience, Navigation and Accessibility

### Search

- Filter Story Search by Story Owner
- Tooltip for long saved search titles

### Pins

- Improved handling of Event Pins to separate them from story pins

### Help

- Notify users to refresh when an updated software version is available.
- New Redesign Keyboard Shortcuts Page with more keyboards! Option+K

### Accessibility

- Jaws correctly reads out story title before reading status
- Miscellaneous aria label improvements

### Wall Monitor (NEW MODULE!)

- (Requires connector Fee) Display Plan view, Feeds views, Guest View or Saved Searches or a combination of them in office display monitors, iPad outside of meeting rooms etc.

---

## Administration

### Authorisation and Security

- Removed the option to toggle the allow to map roles to resource types in the authorisation page. This option is available via initial config stored in secret manager, but it is too dangerous to have it available to toggle on and off.
- Improved handling of session identifiers for increased security
- Unsubscribe based on permissions: Users that no longer have permissions to access a story are now automatically unsubscribed from following such story
- Miscellaneous important security fixes

### API

- Story API — now returns
  - Get Story includes
    - Number of locations set on story
    - Number items uploaded to board
    - Calendar items
  - List Stories:
    - shared with department x
    - Owned by department x
    - Modified after date x
- Live Feed API
  - Edit Live Feed source title
  - Edit Live Feed existing message
  - Improvements to the expire live feed API
- Publish API
  - Set Publishing point destination (folder) after creation
  - Set Publishing point status
  - Delete Publishing point
  - Miscellaneous Bug fixes

### Performance

- My Pins - Pagination (load more)
- Redis Backplane for SignalR messages — improves performance and system robustness in high volume situations
- Adjusted Delete Pub point payload for performance
- Improved indexing of recent stories in elastic search
- Improved Resize listeners
- Upgrade to .Net8
- Loaders on content creation

---

## Detailed Overview

---

### Research — Feeds (Detailed)

#### Refined Layout of Feed list view for better readability

The Date Time and priority have been moved to the right of the title and some padding has been reduced to allow for longer title visibility in list view

#### Eye icon control in Feed page to control metadata columns visible in List view

#### Show Feed Subjects in Feed Pop up page and list view

Visible in list view and feed pop up window for sources that provide the information

Subjects are also displayed at the bottom of the feed item when you open them.

#### Expanded Keyboard Shortcut navigation for Feed Page

See the keyboard shortcut list (option+K) to see all of your plan and feed view navigation and action options.

- Arrow Up - Open previous feed item
- Arrow Down - Open next feed item
- Space Bar - Toggle open/close mini content view in list view)
- Enter - Toggle checkbox selection in list view
- Shift+Cmd+A opens add to modal to add a feed to the stories listed on the left browse menu
- Shift+Cmd+C Create new content from selected feed items in list view
- Shift+Cmd+R Mark selected items as read
- Cmd+C Copy feed to clipboard when opened *
- Option+ O Open page (views) menu in Plan or Feeds page

#### Improvements to handling of Live Feeds via API

- Control the title of the source live feed via ext. API
- Modify the title and message in the live feed item or delete it via ext. API

---

### Planning — Detailed

#### Quick Add

Support Rich text in quick add description Field

#### Events

- Display Location in External Calendar items if provided

#### Read-in Notes (Logs)

##### Improved Tracking support to track Copied Read-in Notes (Logs)

Logs are now tracking copies of the log on top of the previously supported created items out of the log or the linked projects.

#### Long Form

*(Bug fixes in this release — no detailed feature description provided.)*

#### Categorisation

*(Improved handling of changes in colours in departments — no detailed description provided.)*

#### Plan View

##### Discontinue Old Plan View

In this release the old plan view is no longer available. Please plan your transition accordingly before migrating to this release

##### Support for Events and Publishing Points in List view

The plan list view now supports the preview of publishing points and events in list view

##### Assign Plan or Feed list views to departments

Directly in admin without needing to assign permissions previously.

You will now see the full list of view collections in the "organisational levels" menu. By selecting a view collection in this dropdown, you will both assign it as its default as well as assign the permissions if not there yet.

---

### Resourcing — Detailed

#### Bookings, Requests, Guest Overview, Finance, Map, Risk Assessment and Tracking

*(Bug fixes and sort improvement — see summary section for details.)*

---

### Production — Detailed

#### Editorial Draft Mode

When you add a new text box we won´t notify anyone of an empty text as there is no content to share.

When you start writing inside of a new text box it will go into draft mode by default, meaning others will be able to see that you are writing something new, but they won´t be able to see its content or edit it until you save it.

This first version of the segment won´t be auto saved on time out either. It will appear locked for others until you save it first, for as long as it takes. This means that if you had added @mentions in your draft, we will not send the mention until you save the changes to avoid unnecessary notifications. Likewise, no one will see any activity log until the first version has been saved.

Now, If you have done some writing but are still not ready to share it with others, you can click outside of your text box instead of saving it. This means, we will not save the changes but will instead keep it in draft mode so you can continue working on it until you are ready to share it.

When you do so, a new warning flags that there are unsaved changes on this text box to make sure important updates to stories are never left behind. (Whilst the other users will continue to see that there is a new text box unsaved.)

This warning is escalated further if you try to close the story to navigate away.

Underneath it you will see an option not to see this warning again.

Warnings can also be disabled in the My Page Settings area.

Now, If you come back to the story, after you closed it without saving, you will continue to find the text box in its latest draft mode until you go into it and save it. The minute you save it people following the story will see the new activity, people you have @mentioned will receive a notification, and everyone will be able to see the content when entering the story.

After the initial segment creation, you or others may edit the text box again, this will lock it for others and if they try to edit the text box, they will get a flag of who is locking the story

After original creation and saving, if you do further edits and once again click outside of the box, you can keep the box in draft mode again until you are ready to save the new changes.

Others will see the text box in the latest saved version but won´t be able to edit it.

However, on this occasion, a time out mechanism does kick in, so if there is no activity on the editorial box for the length of time defined in the admin section, the text box will save automatically to allow others to continue editing.

For example, If you set a time out of 3mins (180secs), and you didn´t do any edits for 3mins 30secs It will auto save at 3mins in whichever state it was in and unlock it for others. Others will be able to edit the item again from the autosaved version state. If your version included any @mentions these will be sent on the autosave so be mindful of this.

The admin settings for the time out length for unsaved changes on edits (after initial save) can be defined in the Customer Options Admin Area.

The default is 1200 seconds (20mins).

#### Media Management (Board/Connected Devices/Footage/Media Storage) — Detailed

Direct to S3 Uploads in Board (Web and Mobile) for faster and more secure uploads

Improve upload progress tracking

**Attach MAM assets to your Editorial Segments**

- Select the asset
- And it will be listed as an attachment
- You can add it to the board, then remove it from the board or detach it from the segment
- You can choose the download file which will take you to the 2nd browser and open your MAM asset
- You can choose to delete it which will delete it from the segment, not the media storage section nor from your MAM system.

Download assets attached in Editorial Segments

**Improved Display of MAM assets metadata in Hunter Search**

A consistent layout for different PAM systems guarantees the best UX experience inside of Wolftech. Thumbnails provide clear visibility of assets.

Beyond file name and size, we now also display other metadata fields made available by your PAM/MAM provider at the bottom. On hover over you can expand for improved readability.

**Pagination on MAM assets Hunter search results to better account for all matches**

Pagination ensures that searches with over 20 matches are handled in a performant way while correctly displaying the total number of hits. As you load more all thumbnails will be displayed for consistency.

**Consistently use the same secondary browser whenever you open a MAM asset in 2nd tab.**

Every time you click on a MAM asset it will now open in the same secondary browser tab.

Use Story UniqueID in Haivision Connected Devices workflow for orchestration

**Improved Hunter Search of Avid Media Central Production Management Assets**

Filter by:
- Asset type (Master Clip, Sub clip, Sequence or Folder)
- Assets uploaded since date X

Other fields can be added to the search filters on a client request basis.

---

### Communication & Collaboration — Detailed

#### Activity

##### Hover over an activity feed entry for a new image upload to preview the image

without needing to navigate to the story saving valuable time.

##### Bookmark Activity Feed items

You can now bookmark an activity feed item to check it later so you can mark all recent activity as read but keep some for later.

Bookmarked items appear in the new saved section of the activity feed

##### Save Activity Log Behaviour (Description and Background Information)

Updated the description and background information logging behaviour for consistency. The new save button allows you to save an entry (and log it)

Save without logging is possible, under the submenu, or simply cancel changes.

##### Improved Description Activity Log

The Description now logs changes in the same way as background information items and it is supported across both story description as well as publishing points. Navigation from the activity feed to the description field has also been improved.

#### Alerts — Detailed

Automatically populate resource phone number when creating internal alert with phone number field in template.

When exporting internal alerts to 3rd party systems include reference to Wolftech Object (Story, Event, Editorial Segment, etc.) with Feeds that was previously not included

This will include the content title and the URL link to the content including background information segments.

---

### Publishing — Detailed

#### New Full Screen Publishing Point Design

New Full Screen Publishing Point Design (to make the most of your laptop screen space)

- Full screen layout
- Editor tab for immediate access to editing the content
- Improved Scroll Down Sticky Behaviour
- Collapsed Publishing point list with quick access
- Collapsable Right panel to focus on the writing

The new Editor tab takes you to directly to editing your content for quicker access

The full screen layout to get the most out of your laptop real estate. The Publishing point list is now collapsed by default. Clicking on the arrow at the top will reveal the information or collapse it again.

There is a new template Form Panel to the left of the Publishing point template. This panel is currently only showing the template selector, but more actions and items are expected to come into it in the future. It can be collapsed with the arrow too.

The right panel can be collapsed to focus on your script writing

Your options for collapsing the Form Panel and the right panel will be remembered the next time you open a publishing point.

Sticky behaviour correctly places the editor aligned under the tab. The TRT has been repositioned on the top right of the editor.

#### Publish to Email

Publish to Email: Perfect for Publishing to Newsletters or for using email publishing to push publishing information to Fast Platforms tracking email inboxes. Set your template and use the system email address to deliver your email.

Set your template and use the system email address to deliver your email.

Include Subject, Body, Images, and attachments with ease.

#### New APIs for Publishing Points

New APIs for better management of Publishing Points from your CMS (See admin API)

We are expanding the APIs across both stories and Pub points, so you are able to create publishing points and update them with more ease from your CMS.

- Move publishing points from one folder to another
- Update Publishing Point Status
- Delete Publishing Points

#### Improved Publishing Admin Area

**Design**

**Clearer Admin terms (Publishing section, Platforms, Templates, Folders)**

The publishing admin area has been renamed from "Platforms" to "Publishing"

Inside of it you will now see tabs for:
- Platforms (used to be General)
- Templates
- Folders (used to be custom structure)

The publishing template builder has had a facelift to align it design wise to the latest changes in the application UI.

**Change the colour of publishing folders independently of the colour of their source platforms or hierarchical folders to better categorise your output**

To allow for better visual identification of your different publishing folders we have added the possibility of adjusting the color of the publishing folder independently of the color of their source platforms or hierarchical folders.

---

### User Experience, Navigation and Accessibility — Detailed

#### Search

Search stories by story owner

#### Help Area

#### Redesigned Keyboard Shortcuts Page

Improved experience to access all shortcuts in the application

Newly created shortcuts for improved navigation across the whole application. Please review the list.

#### Notify users when an updated version has been deployed

Users working in the system will now receive a message when an updated version is available prompting them to refresh their browser to see the changes. We encourage users to read the release notes in the help area when they do get the warning

#### Accessibility

Bug fixes and improved stability for assistive technology users.

---

### Wall Monitor — Detailed

> **Note:** The Wall Monitor is a new optional module requiring a connector fee.

The Wall monitor Application is a web application aimed at displaying plan views, feed views and search views to the user. The application's main use is to display content in receptions and office landscapes.

Wall monitor benefits from separate authentication, restricting the user from accessing data that they would otherwise do in the main news application, contributing to enhanced security. Additionally, Wall monitor is built for a single purpose, to display views and run seamlessly on all devices, Views are displayed in a carousel, enabling better performance since views that are not displayed are being deactivated.

**Wall Monitor Authentication:**

The Wall Monitor application can be accessed here: Wolftech for users that has a backend version >= 14. Before logging in, the users need to define the server URL. This is can for example be https://news3.wolftech.no.

Then the authentication process begins, and the users are prompted to either scan a QR-code (Great for authenticating with a mobile if setting up a display) or open a link to authenticate via identity server. (If the device is plugged to a PC and it is easy to type on it)

**Wall Monitor Setup:**

To display collections and views in the wall monitor application, these collections and views need to be set up in the main News application. Only Admin users can do this. Admin users need to navigate to Admin → External Displays.

First the user needs to create a collection, "Add collection":

Then the user can add pages to the collection, "Add page":

The new page is initially empty, but can select from either plan, feed, or search view.

Search view is a shared search.

The plan, feed, and search (saved search) views are already existing collections and pages in the main News application:

- Plan/Feeds collection and view page selection
- Shared search selection

The user can set multiple view pages, and the pages do not have to be of the same type. Additionally, the user can set "Show each page for" in seconds. This value can be minimum 10 seconds. This makes it so that each page is displayed for a set amount of time, before moving on to the next page.

The views are updated based on the seconds defined here, meaning if there is only one page and the seconds are set 60, it will update with the newest information every 60 seconds. If there are multiple pages the application will slide to a new page every 60 seconds and show the page with the newest data.

Once an External Display collection is set up, it can be selected from the Wall Monitor application in the top right menu, then "Select collection." If external displays have been updated while the wall monitor application is running, the wall monitor web page needs to be refreshed

---

### Administration — Detailed

#### Authorisation and Security — Detailed

Disabled the option to enable and disable connecting Resource Types to SSO roles to prevent issues when inadvertently checking the option off — this feature is now part of your secret manager and handled on request to the support team rather than available via the admin UI.
