# FEEDS
**Source:** Wolftech OFFICIAL_Documentation — 02_Research (Feeds and Ext.Calendars)/FEEDS
**Revision:** R12
**Added to KB:** 04/06/2026
**Version scope:** R12 only — do not apply to other revisions

---

### FEEDS

Although Feeds shares much of the structure you are now familiar with from the Plan Module, we built it as a separate module because users need to frequently switch between Feeds and Plan views easily without having to load different collections all of the time.

On another note the Feeds view is a very fast page where you are able to quickly create events, pitches, stories or episodes out of a feed in a matter of seconds.

### Access

##### Access to Feeds Module
Access is granted with the ability “Access new Plan and Feed pages” and will default to the new feed view but users will be able to change their view to the old plan view if needed via the Profile Menu

To navigate to the Feeds view select it from the top menu:

##### Access to Shared Views
The individual user will initially get access to the default collection of views for their department from the moment they log in. This means they are not required to configure the filters themselves,  making sure users can see the same dashboards as their colleagues in the organization.
Before you can set a default view for your department your department needs to have the enable user group function checked:
Now, if you go to your user groups you should be able to see your department listed:
To set up the default views for your department, admins need to go to the admin organizational levels menu and select the default view collection they would like their team to see on first login.
Note: If no default collection of views has been determined for a specific department and the user from such department had other collections of views shared with them they will see a pop up menu to ask them to choose to load their first Collection of view.
Note2: If the user from such a department didn't have any collection of views shared with them and a default has not been set for their department their plan view will look empty and they will only be allowed to create personal views.

Provided a collection is shared with them, as soon as a user lands on the Plan Module you will see the active View Name you are on in the top left (see “All Departments”). Next to it you will see a dropdown icon that will expand to display the other views you have access to as part of the shared collection of views.
If users have been given access to multiple shared collections of views we will first display the department’s default collection but they will be able to load the other shared collections as needed. See Loading other shared collections section.

##### Loading Shared Collection of Views
For more advanced users you may have access to multiple collections of views. To load a different collection to the one you are currently viewing simply navigate to Edit->Load collection
You will then be able to see the collections you have access to and the views available in those collections before clicking to load them:
Note, selecting a view in the collection, on the right side (see “Internal Alerts” above), will help you navigate directly to the chosen view when you “Load” the new collection. All of the other views from the chosen collection (See “Eirik´s View”) will be available now in the drop down:

##### Accessing Favorites
Users now have a powerful way to access their favorite views across any number of collections. When you want to favorite a view simply click on “Mark as Favorite”.
You can then navigate to another view in the same or a different collection and favorite them to create a list of favorites. These are now easily accessible via the “Star” Favorite drop down at the top that also indicate which of those favorites are personal views:
To remove them as favorite navigate back to the view where instead of “Mark as Favorite” you will now see “Remove as Favorite”

##### Personal Views
In the Feed Module you will typically get to see shared views that have been configured for collaboration across a department, we call these Shared Plan Views. However one can also configure variations of these views, or a completely different view, for private use, we can access these under “My Views”.
Note personal views can also be marked as favorites to easily have access to a combination of shared and personal views.

To create a new personal view simply go to the manage menu and select create a new view.

### Navigation

##### UI Overview
A Feed View consists of a dashboard that can contain any number of Columns representing different filtered feed sources.
There are 2 main ways of representing the feed columns: Kanban or List view. These can be toggled using the icons on the right corner:

##### Kanban Style
The feeds can be displayed in a Kanban style:
##### List mode with Keyboard navigation
The Feed view can now be experienced as a list view
Toggle the list view with the top right list icon
You will then see
  - your columns listed on the left pane
  - A header in the middle  displaying source, date, priority, title, and category
  - all feeds belonging to the selected column listed in the middle
  - Selected feeds that you choose to expand on the right.
The keyboard navigation is simple and very fast.
- -> From the left column you can tab to move through them
- Enter will load the column to see the feeds without navigating into the feeds center pane..
- ␣ Hitting the spacebar in a column will both load the column and land you on the first feed in that column
- ␣hitting the spacebar on a feed will pop up the expanded view for that feed.
- ↑ Using up and ↓down arrows you can move through the feeds either in list or expanded.
- Esc Hitting the escape will navigate out of the expanded view
- ← Hitting the left arrow will take you back to the column navigator

##### Calendar navigation:
You can filter the Feed page with calendar selectors to see
- Undated (This is the default and shows all feeds from today backwards)
- Day (Select one date and see all of the selected´s day feed)
- Week (the last 7 days of feed from the selected date)
- Month (the last 31 days of feeds from the selected date)
Do note, Dataminr feeds will continue to show regardless of the date filter because they don’t have a date (they are live events)

##### Focus Mode
As you navigate through your list of feeds in either column or list view you may scroll down a list. Wolftech will lock that view so that when new incoming feeds arrive in that column or list the experience is not jarring and does not scroll automatically for you. We call this focus mode and it is a default that is activated the minute you scroll down a list. If your focus is on the first feed at the top new feeds will appear.

##### Pausing a column
You can pause a column with the hover over pause button. This will pause new feeds coming into the column so you can make sure to review all of them before hitting on the play button to resume the input of new feeds.

##### Column Filters info
Each Column can be configured with a filter that acts as a live search displaying matches. To check the filter you can click on the 3 dots menu:
If you are not the owner of the shared view you will be able to see the filters applied to this view but you won't be able to edit them. Instead in the 3 dot you will see an information icon:
Click on it to reveal the applied filters:

##### Tiles overview

As a general framework, feed tiles will display the source Icon on the top left, the date and time it was created, the alert threshold level on the top right and the first few lines of the report.
Below is an example of an official newswire:
When you open them you will be able to review the full report, create a story out of it or pin it. You will also see if stories have already been created out of it.

RSS tiles won´t present the alert threshold level but otherwise work similarly with a link pointing to their source. They may include an image if present on the source.
Youtube tiles are a great way to track output on your or other´s youtube channels. The tile itself when expanded will let you interact with the video player full functionality without leaving Wolftech.

Internal Alert tiles are a means of sharing an alert to a group of people in your organization via Wolftech. They can be created out of stories or events or be created from scratch. The card follows the same principles but (depending on how you have them set up, they can also indicate who created it, the alert type and the department and offices it relates to.

Dataminr tiles allow for tracking events happening across social media and other sources even before they have been confirmed by official newswires. With our integration, when expanded it will present the full report including the location (which will be used if creating a story out of it), its, source link and related terms:

If you create a story out of  a Dataminr feed, or if you link it, Dataminr will also keep you updated with any related events around the feed from within your story.

Sony CI tiles will be created with every new asset added to your designated CI Hyb and they will present the file type information on the tile:

Email Feeds are a great way to display feeds for internal email communications. The tiles will present the content of the email, including attachments and the sender details

##### Feed Searches

Users can use the search bar to further filter the results they are seeing.

##### Creating Versions of Shared views (Private or Shared)
Beyond a simple search within an existing shared view you can create a new variation of a shared view for personal or collective use. To do so simply go to the Manage section.

Depending on your permissions you will be able to “Share view with collection”, “Copy view to Collection” or just “Save to My Views” (from where a version can be quickly created.

### Collaboration

##### Quick adds
The key action out of an incoming Feed is to quickly create Stories/Pitches/Logs or Episodes out of it.
To do so simply click on the + quick add button inside of the feed.
All of the information from the feed will be contained in the new story that is created.

This action can also be done by dragging a feed from the feeds view to the left menu stories list. Simply drag it to the appropriate story column group header (department or content type) to create it.
Note - you will see how the header becomes blueish to indicate that you are targeting the creation of a story.
You will be able to choose the type of project you would like to create
And then the feed will be labeled in the Board as a “Created From” the chosen feed:

##### Linking
You can drag a feed from the feeds page directly on to a story tile, rather than to a column group, and this will link the feed to the story:
Note how the story becomes bluish to indicate the targeted story.

From within a story it is also possible to link feed items via the Hunter panel on the right. Simply search for a feed and drag it
In both cases the linked feed will show in the story Board as a linked feed:

##### Feed Media

When linking an email feed or creating a new story from an email feed that contains any attachments the feed will be linked in the board and the attached assets will be automatically ingested to the board as separate items, linked to its original feed entry)

When linking a newswire or creating a new story from a newswire that contains media and is configured to make the media available (ie. Reuters, AP, etc) the assets can be ingested to the board too.

Note, we are not downloading the source content from Youtube or other social feeds. We can link Youtube Feed items and you will be able to preview the content within Wolftech News but to download the content you will need to resort to other applications.

##### Pinning
The other action that can be done with a feed is to pin it to save them for later:
When you hover over them you will see an unpinned icon to confirm this feed has not been pinned yet. If you click on it you can pin it.
This will save it to your Pins section on the bottom left.

##### Dataminr
Dataminr is a 3rd party tool that enables early detection of events, allowing users to stay ahead of real time events. Dataminr looks into social platforms, emergency services and a myriad of sources to understand that an event has happened before it is reported officially.
With this integration, available to those with a Dataminr license, users can create a Dataminr Feed column in the Feed page leveraging your account’s company, keyword and topic lists in combination with your own set of keywords (with support for operators) and an alert level threshold.
Note: Combining multiple lists is supported.
In the case of Dataminr to create the story from a Dataminr event follow the same quick add button or drag and drop options:
all of the information will also be gathered:
Including location data where available

As per regular feed items, the Dataminr event will display in the Board section:
Dataminr Feeds have the ability to group related events into one feed event. This allows you to track how a story evolves over time. You can do so via the Dataminr Panel on the right where you can see the linked dataminr events and you can open it to scroll through all of the related developments:
Because these events can grow fairly large Wolftech has added a summarize button that can provide the current status of the event by summarizing all of the related events until the point you trigger the summary.
Searching Dataminr feeds whilst you work on your story can also be done via the Dataminr Panel and from it you can link other dataminr events to your story:

### Communication

##### Notifications
You can activate to receive alert notifications for every new entry in a column you have setup:

Use the check box to add notifications to your columns. When you enable it new entries to your filtered Feed Search will send a notification.
Combined with the keyword searches it means you can set up a feed column for a source (whether internal emails or external newswires), add a few keywords to narrow down the type of result you are after and move onto something else knowing that when a new feed comes in you will be notified.
When enabled you will see a notification bell icon pop up so you know which columns have it enabled.

##### Alerts
Feeds can send automated alerts to system users depending on the severity (newscale importance) of the feed.

In the Feed  admin section, for official newswires and internal Alerts, you can define whether a certain newscale level will send
- no alerts (none)
- alerts only to those subscribed - with the show alert option enabled- (non-critical)
- Alerts to everyone (Critical).
Choose the source type on the left and apply the logic on the right:
Note: users can subscribe or unsubscribe to non-critical alerts with the show alert notifications toggle (note this is checked on by default)
Alerts notifications come as alerts

##### Printing
To share the feeds with others who don't have access to the system you can print a column by  simply going to the 3 dot menu for the column
Results typically display best in Portrait mode:

### Managing Views
Each view can live in more than one collection of views so it is easy to configure a view once and it can be leveraged across multiple collections. To organize which views appear in each collection simply either create them inside of a collection or drag an existing view to another collection so it can exist across multiple collections.
Depending on your permissions you will be also be able to “Share view with collection”, “Copy view to Collection” or just “Save to My Views” (from where a version can be quickly created) right inside of the feed view:

Reordering views within a collection can be done from the Admin-view collections menu by simply clicking and dragging the view up and down in the list.

##### Creating Shared Feed Views
To create a new feed view go to a collection and click on the “Add View” button and name your view. This will set it as draft.
To be
Once you have a view you want to configure, make sure to first have access to the collection in the permission tab, then navigate to the feed page and load the collection it belongs to.
Note: in this view you will not see the views that are in draft mode.
Once it is loaded go to the edit and enable edit mode to be able to display views that are in draft mode.
Now that you are in edit mode you can navigate to the view you want to edit which will initially be set as in draft:
Begin to create columns with the plus button, naming a new view, selecting the column type and sources for you different columns.
Setting the column width will also be part of the setup. Below is a reference idea of the different column sizes and how they fit the screen:
The columns can be reordered by using the move left and right buttons under the 3 dot menu.

The move or copy to view allows you to reuse a column inside the same collection or a new one.
When you are ready to publish a completed view simply click on the publish button:
This will have saved your view in the collection, which will no longer appear in draft:
##### Renaming Views
To rename a personal view you can do so from the Manage Menu:
To rename a shared view you will need to do so from the Admin View collections menu under the 3 dot menu next to the view.
All changes done to a shared view after publishing it will update the view for all users with access to that view in any collection where that view is present. They will see the changes the next time they open that view.

##### Deleting Views
Personal views can be deleted from the Manage Menu
Shared views can only be deleted from the Admin - View Collections menu:
Note you can also just remove it from the collection if needed but operate with caution as this will remove it for everyone with access to the View Collection.

##### Filters

There are 3 types of column filters. Regular, Hunter or Dataminr. Here is how they differ:
###### Regular Column
Will let you mix and match any number sources across newswires, yt feeds, rss feeds or  internal alerts.

Official Newswires
it will allow you to select the feed categories, set the alert level and add keywords (even using operators).

RSS Feeds
Simply search them by entering the url:
Youtube channel
you can just search for a youtube channel and add it to the list then add keywords
Once created the videos are playable with a fully embedded experience in Wolftech.
Other
Internal Alerts and Sony CI just need to be selected with no further options

###### Hunter column
Allows you to create a search column that searches across all sources using keywords (and operators)

###### Dataminr column
Dataminr enables early detection of events, allowing users to stay ahead of real time events. This integration, available to those with a Dataminr license, allows you to create a column in Wolftech leveraging your account’s company, keyword and topic lists in combination with your own set of keywords (with support for operators) and an alert level threshold. Combining multiple lists is supported.

### Admin

#### Setup Feed Sources
Feeds are streams of posts, whether newswires, rss, youtube channels, or internal alerts. As such you need to define where these streams come from.

Official Newswires
You will need to provide us with the license keys and we will set the inputs in the workflow engine.
Once we have added them for you you will be able to manage them in your system by going to the admin /feeds section where you can set the critical alert levels.
Do note: AP/Reuters etc Feeds are only kept for 7 days in line with contract agreements

RSS Feeds
RSS  can be added  directly when configuring each column in a view.
You will then be able to remove them from the list from the admin feeds section:

Youtube Channels
You will need to enter your YT API Key in the Admin Feeds section on the Source Platform tab:
Once that is in place you can search for YT channels when setting up each column.

Twitter accounts
You will need to enter your organization's paid Twitter API Key in the Admin Feeds section on the Source Platform tab:
Once that is in place you can search for Twitter accounts when setting up each column.

Sony CI
As an external connection you will first need to setup your license with them and enter it in the admin / external connections section

Once configured you can manage it in the admin / feed section:

Dataminr
As an external connection you will first need to setup your license with them in the admin / external connections section:
As the alert threshold levels are set within Dataminr there is no further setup required and once the connection is in place you will be able to configure the filters  leveraging your dataminr’s account’s topics, etc.

Internal Alerts
Internal Alerts are a good way of managing internal communications that inform a user group or a department. To see them in your feeds columns you will first need to set them up in the admin / alerts / internal alerts section with your desired configuration:
Once they are set you will be able to manage them from the Admin / Feeds section:

Email Feeds
These are Feeds that add tiles per email sent to a specific email address. These are configured in the workflow engine. Please get in touch with your project manager if you'd like to configure this in your instance.
Note emails will be sanitized on import for security and compatibility.

##### Manage View Collections
Once you have all of your sources and their critical levels configured you are ready to set up Feeds View Collections.
To create a new Feeds Collection go to the Admin / View Collections section.
Choose Feeds and click on the New Collection button:

From there you can add the view pages you would like to add to your collection, edit their name or delete some.

From this  “Details” section you will be able to see the list of views that belong to the collection on the right. Which ones are active and which ones are in draft mode (not published yet)
You will also be able to edit the collection name, delete it (if you have the permissions) and add new views to the collection.
If you navigate to the “Permissions” section you will be able to manage the user groups that get access to the collection:

Do note, you can make user groups out of your departments in the admin -organizational levels section. So feel free to use these to share the collection of views with them.
