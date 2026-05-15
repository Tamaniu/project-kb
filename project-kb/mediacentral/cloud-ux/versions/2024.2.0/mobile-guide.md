---
product: mediacentral-cloud-ux
product-area: newsroom-platform
version: "2024.2.0"
release-date: 01/02/2024
doc-type: mobile-guide
source: pdf
confidentiality: public
date-added: 15/05/2026
status: current
---

Permissionhasbeengrantedtocopy,distributeandmodifygdinanycontextwithoutfee,includingacommercialapplication,providedthatthisnoticeispresent inuser-accessiblesupportingdocumentation.
Thisdoesnotaffectyourownershipofthederivedworkitself,andtheintentistoassurepropercreditfortheauthorsofgd,nottointerferewithyourproductive useofgd.Ifyouhavequestions,ask."Derivedworks"includesallprogramsthatutilizethelibrary.Creditmustbegiveninuser-accessibledocumentation.
Thissoftwareisprovided“ASIS”Thecopyrightholdersdisclaimallwarranties,eitherexpressorimplied,includingbutnotlimitedtoimpliedwarrantiesof merchantabilityandfitnessforaparticularpurpose,withrespecttothiscodeandaccompanyingdocumentation.
Althoughtheircodedoesnotappearingd,theauthorswishtothankDavidKoblas,DavidRowley,andHutchisonAvenueSoftwareCorporationfortheirprior contributions.
ThisproductincludessoftwaredevelopedbytheOpenSSLProjectforuseintheOpenSSLToolkit(http://www.openssl.org/) MediaCentralmayuseOpenLDAP. Copyright1999-2003TheOpenLDAPFoundation,RedwoodCity,California,USA.AllRightsReserved. OpenLDAPisa registeredtrademarkoftheOpenLDAPFoundation.
U.S.GOVERNMENTRESTRICTEDRIGHTS.ThisSoftwareanditsdocumentationare“commercialcomputersoftware”or“commercialcomputersoftware documentation.”IntheeventthatsuchSoftwareordocumentationisacquiredbyoronbehalfofaunitoragencyoftheU.S.Government,allrightswithrespect tothisSoftwareanddocumentationaresubjecttothetermsoftheLicenseAgreement,pursuanttoFAR§12.212(a)and/orDFARS§227.7202-1(a),asapplicable.
Avid,theAvidLogo,AvidEverywhere,AvidDNXHD,AvidDNXHR,AvidNEXIS,AvidNEXIS|Cloudspaces,AirSpeed,Eleven,EUCON,Interplay,iNEWS,ISIS,Mbox, MediaCentral,MediaComposer,NewsCutter,ProTools,ProSetandRealSet,Maestro,PlayMaker,Sibelius,Symphony,andallrelatedproductnamesandlogos, areregisteredorunregisteredtrademarksofAvidTechnology,Inc.intheUnitedStatesand/orothercountries.TheInterplaynameisusedwiththepermissionof theInterplayEntertainmentCorp.whichbearsnoresponsibilityforAvidproducts.Allothertrademarksarethepropertyoftheirrespectiveowners.Forafulllistof Avidtrademarks,see:https://www.avid.com/legal/trademarks-and-other-notices.
Footage IceFestival,LondonZoo,FengShui-CourtesyofReuters.
availableforpurchaseinprintedform.
Using This Guide This document provides instructions for installing, configuring, and using the Avid MediaCentral | Collaborate mobile app.
The following documents might be referenced in this guide:
Avid MediaCentral | Cloud UX ReadMe — Read prior to completing any MCUX installation.
- Avid MediaCentral | Cloud UX User’s Guide — Refer to this guide for detailed information on the apps
- and features of the MediaCentral Cloud UX user interface.
Avid MediaCentral | Cloud UX Installation Guide — Refer to this guide for information on creating and
- deploying certificates required for mobile workflows.
Important: See the following link on the Avid Knowledge Base for the latest updates to this guide and all related documentation:
https://kb.avid.com/articles/en_US/user_guide/MediaCentral-CloudUX-Documentation
> **Note:** For a list products qualified for use with Avid MediaCentral Cloud UX, see the Software Compatibility
Matrix on the Avid Knowledge Base.
Revision History Date Revised Changes Made February 29, 2024 v2024.2 initial release.
Symbols and Conventions Avid documentation uses the following symbols and conventions:
Symbol or Convention Meaning or Action
> **Note:** A note provides important related information, reminders, recommendations, and
strong suggestions.
A caution means that a specific action you take could cause harm to your computer or cause you to lose data.
This symbol indicates menu commands (and sub-commands) in the order you select > them. For example, File > Import means to open the File menu and then select the Import command.
- This symbol indicates a single-step procedure. Multiple arrows in a list indicate that
you perform one of the actions listed.
Bold font Bold font is primarily used in task instructions to identify user interface items and keyboard sequences.
Italic font Italic font is used to emphasize certain words and to indicate variables. Variables are often enclosed in angled brackets: < >.
Courier Bold font Courier Bold font identifies text that you type.
Ctrl+key or mouse Press and hold the first key while you press the last key or perform the mouse action.
action For example, Command+Option+C or Ctrl+drag.
If You Need Help If you are having trouble using your Avid product:
1. Retry the action, carefully following the instructions given for that task in this guide. It is especially
important to check each step of your workflow.
2. Check the latest information that might have become available after the documentation was
published. You should always check online for the most up-to-date release notes or ReadMe because the online version is updated whenever new information becomes available. To view these online versions, select ReadMe from the Help menu, or visit the Knowledge Base at https://kb.avid.com/articles/en_US/user_guide/MediaCentral-CloudUX-Documentation.
3. Check the documentation that came with your Avid application or your hardware for maintenance or
hardware-related issues.
4. Visit the online Avid Knowledge Base. Online services are available 24 hours per day, 7 days per week.
Search this online Knowledge Base to find answers, to view error messages, to access troubleshooting tips, to download updates, and to read or join online message-board discussions.
Avid Training Services Avid makes lifelong learning, career advancement, and personal development easy and convenient. Avid understands that the knowledge you need to differentiate yourself is always changing, and Avid continually updates course content and offers new training delivery methods that accommodate your pressured and competitive work environment.
For information on courses/schedules, training centers, certifications, courseware, and books, please visit https://www.avid.com/learn-and-support and follow the Training links, or call Avid Sales at 800-949-AVID (800-949-2843).
Collaborate Mobile App Overview The MediaCentral | Collaborate app enables organizations to create and manage topics that allow you to link ideas, people, and equipment through a streamlined user interface. Each topic can contain one or more assignments. When you are added to an assignment, you can review the job requirements and access resources that you can leverage to successfully complete the job. Example resources might include cameras, vehicles, drones, meeting rooms, or others.
Including many of the same features that are available in the browser-based version of the app, the Collaborate mobile app allows you to create or update topics and assignments from your iPhone. As you complete assignments, you can update the progress and status fields so that all members of your team are alerted to the latest updates.
All tasks and assignments include a media tab in which browser-based users can add media assets. As a user of the mobile app, you can view or play supported assets from MediaCentral Production Management and MediaCentral Asset Management modules that are connected either directly to your local MediaCentral Cloud UX system or remotely through a multi-site configuration.
For more information about the web-based version of the Collaborate app, see “Using the Collaborate App” in the Avid MediaCentral | Cloud UX User’s Guide.
Installing the Collaborate Mobile App The following procedure describes how to install the Collaborate app on your iPhone. For more information regarding supported operating systems and MediaCentral Cloud UX server versions, see the “MediaCentral Compatibility Matrix” on the Avid Knowledge Base at:
https://kb.avid.com/articles/en_US/compatibility/Avid-Video-Compatibility-Charts If your version of the Collaborate mobile app is different than the version of the MediaCentral Cloud UX server, some features might be limited or unavailable. In some cases the app might prompt you to download the latest version of the app to enable new functionality. In other cases you might encounter read-only or unavailable data (without a prompt).
> **Note:** Avid does not support installing the Collaborate mobile app on an iPad at this time.
To install the app:
1. Open the iOS App Store and search for the Avid MediaCentral Collaborate app.
A direct link to the app is provided here (link current at time of publication):
https://apps.apple.com/us/app/mediacentral-collaborate/id1489961113
2. Select the application and tap Download.
When the installation is complete, an “MC | Collaborate” icon appears on your home screen.
3. Before launching the app, you must import a valid certificate into your mobile device.
For more information, see “Creating Certificate Files” and “Importing SSL Certificates” in the Avid MediaCentral | Cloud UX Installation Guide.
Launching the Collaborate Mobile App This section describes how to launch and sign in to the MediaCentral Collaborate app, as well as how to sign out of the app. The following illustration shows the Sign In screen that appears when you first launch the app.
To sign in to your MediaCentral Cloud UX server from a remote location, you might be required to use a virtual private network (VPN) app on your device. Avid tested the MediaCentral Collaborate app using the Cisco™ AnyConnect® VPN Client.
To start the app:
1. Sign in to your device and tap the MC | Collaborate icon to start the app.
The Sign In screen appears.
2. Enter the FQDN (Fully Qualified Domain Name) or IP address of your MediaCentral Cloud UX system
into the System field.
3. Enter your MediaCentral Cloud UX user and password into the appropriate fields.
4. Tap the Sign In button.
The app opens and displays the Planner screen which features the Topics and Assignments tabs.
To sign out:
1. Tap the My Profile button at the bottom of the app.
2. Tap Sign Out.
Going Offline If you lose your data connection while using the Collaborate mobile app, a warning appears to alert you to the network loss. In some cases, the app displays a Retry button that you can tap to clear the message after service is restored. In other cases the app might alert you to the offline status through a simple banner message.
Top: Offline status with Retry. Bottom: Banner alert.
If you lose your connection to the MediaCentral Cloud UX server, other messages might appear such as “Contact your Administrator”.
Working with Mobile Devices Apps for mobile devices let users accomplish certain tasks by utilizing various gestures like fingertip swipes or taps. However, the actions resulting from these gestures might differ from one app to another. The following table describes some common gestures used with mobile apps and examples of how they might be used within the MediaCentral Collaborate app.
Gesture Description Swipe (Up, Down, Generally used for navigation, a swipe requires you to move press an area of the Left, or Right) screen and move your finger quickly from one direction to another. For example, you can swipe up and down in the Topics screen to scroll through the list of topics.
Tap Equivalent to a mouse tap on a personal computer. Used to press a button in the user interface.
Tap and hold Similar to a mouse click and hold action on a computer, you might use this gesture to adjust a section of the user interface. For example, you can adjust a topic’s start and end dates by tapping and holding the hour and minute wheels in the clock tool.
Gesture Description Drag Generally used to scroll or pan, drag requires you to place a finger on the screen and move it in the desired direction without lifting it from the screen.
Pinch A two finger gesture used to zoom in and zoom out. To pinch open, users place the thumb and a finger (or two fingers) close together on the screen and move them apart without lifting them from the screen. To pinch close, users place the thumb and a finger (or two fingers) a little distance apart on the screen and move them toward each other without lifting them from the screen.
Collaborate Notifications As you or other users work with the Collaborate app through (either a web browser or through other mobile devices), your device might display a notification when you are added to a topic, assignment, or task. You can tap these notifications to open the Collaborate app to the referenced topic, assignment, or task. If the topic, assignment, or task is deleted before you have the opportunity to access it, the Collaborate app might display either the upper-level item (such as the assignment in which the task was included), or the Planner's Topics or Assignments list view.
To receive notifications, you must be signed into the Collaborate app, but it must not be the active foreground app. If you are actively working within the Collaborate app, notifications are not displayed. If you sign out manually, or if you are signed-out automatically after a period of inactivity, Collaborate will not display any notifications.
Notifications work in “silent mode” where there is no haptic feedback or audio alerts. If you are not interested in receiving notifications from the Collaborate app, you can disable them through your mobile device’s settings at: Settings > Notifications.
User Roles As a user of the Collaborate app, you are assigned one of two roles by your system administrator:
Collaborator or Supervisor.
- Collaborators
This is the standard role that is assigned to the majority of all Collaborate users. The following high- level permissions apply to this user type:
  - You can create and edit topics, assignments, and tasks.
  - You can view the contents of the People and Resources panels.
  - You can delete tasks that you created (you cannot delete other user’s tasks).
  - You can delete topics or assignments that were created by you. Topics must not include any
assignments and assignments must not include any tasks.
Supervisors
- As a supervisor, you can participate in the same workflows that are available to collaborators, and
you have access to the following additional features:
  - You can delete topics, assignments, and tasks (created by any user).
  - You can create and modify items within the People and Resource areas of the app.
Roles can be assigned or reassigned in the administrator-only Collaborate Settings app. For more information, see “Using the Collaborate Settings App” in the Avid MediaCentral | Cloud UX Installation Guide.
Exploring the User Interface This section describes the following sections of the Collaborate mobile app:
- "Working with the Collaborate Planner" below
Working with the Collaborate Planner After you sign in to the app, the Planner screen displays the Topics and Assignments tabs. This introductory screen allows you to access existing topics and assignments, or create new ones. The user interface also includes controls to filter or sort the list of topics or assignments so that you can quickly and easily find the items that are important to you. The following illustration and table describe the different areas of this screen.
Section or Button Description 1 Search Button Allows you to search the Topics or Assignments areas.
For more information, see "Searching for Topics or Assignments" on page 16.
Section or Button Description 2 Topics Tab Tap this button to see the list of available topics. You can tap any item in the list to display the topic details.
For more information, see "Working with Topics" on page 19.
3 Only My Stuff Button Allows you to sort the Topics or Assignments areas to show only the items for which you are associated with.
For more information, see "Using the Filtering and Sorting Controls" on the next page.
4 Topics / Assignments When you tap either the Topics or Assignments tabs, the body of the app List displays a list of all available topics or assignments (respectively).
5 Button Tray Allows you to switch between these different areas of the app:
- Planner
You can tap this button to return to the Planner screen that displays the list of topics and assignments.
- Calendar
Displays assignments in a calendar view, based on the assignment's due date. For more information, see "Using the Calendar" on page 45.
People
- Allows you to view, edit, and create Collaborate contacts. For more
information, see "Collaborate Resources and People" on page 47.
- Resources
Allows you to view, edit, and create resources. For more information, see "Collaborate Resources and People" on page 47.
- My Profile
Allows you to access your Collaborate user profile, adjust settings, or sign out of the app. For more information, see "Using the My Profile Button" on page 17.
6 Filter and Sort Buttons Allows you to filter the list of topics or assignments. If you enable one or more filters, a number appears to the right of the Filter button to signify the number of active filters.
For more information, see "Using the Filtering and Sorting Controls" on the next page.
7 Add Button Allows you to create a new topic or assignment.
8 Assignments Tab Tap this button to see the list of available assignments.You can tap any item in the list to display the assignment details.
For more information, see "Working with Assignments" on page 36.
9 Assignment Landing This is a special topic that is common to all MediaCentral Collaborate Zone installations. For more information on this topic, see "Understanding the Assignment Landing Zone" on page 21.
Using the Filtering and Sorting Controls The Planner provides you with multiple ways of displaying the list of topics or assignments:
- This button opens the Filter and Sort options screen that allows you filter your content by the Status,
Departments, and/or People that are assigned to the topics or assignments. You can also use the Sort controls to organize the Planner by Create date, Title, Status, or other.
The Planner sorts all topics and assignments by the Created date by default— newest first.
Only My Stuff
- This button acts as a filter that allows you to limit the Planner to display only those topics or
assignments to which you are assigned.
Once tapped, the button turns blue to let you know that it is active, a “people” filter is added to the list of filters, and the list of topics or assignments is filtered accordingly. You can disable this filter by tapping the button again. If you filter the content by adding another user, the Only My Stuff button is disabled automatically (as you are no longer filtering by your account only).
To filter or sort the Planner:
1. Tap either the Topics or Assignments buttons on the Planner screen.
With the exception of the Only My Stuff filter, the Topics and Assignments areas work independently of each other. If you create a filter on the Topics tab and then switch to the Assignments tab, the filter is not applied. If you switch back to the original tab, the filter remains active.
2. Tap the Filter and Sort button to display a list of options.
3. (optional) Add one or more filters.
a. Tap a Filter category (People, Status, or Department).
The app displays a list of filters that belong to that category.
If you select the People filter, the app provides a search field at the top of the list that you can use to find a specific contact more easily.
b. Tap one or more items to add them to your filter list.
After you tap an item, a blue check mark appears to the right of the item to let you know that it is selected. You can deselect the filter by tapping it a second time.
c. Confirm your selection by tapping the Back button, or tap the Reset button to clear the filters in this category.
d. Repeat these steps to add filters from different categories.
4. (optional) Tap the Sort By menu option.
a. Tap an option from the menu to change the way in which the list of topics or assignments is displayed in the Planner. You can select only one Sort By option.
b. Confirm your selection by tapping the Back button, or tap the Reset button to revert the sort back to its default value (Created Date).
5. (optional) Tap the Order menu option.
a. Tap either Ascending or Descending (default) to determine how the Planner organizes the content.
b. Confirm your selection by tapping the Back button, or tap the Reset button to revert your selection.
6. Do one of the following:
- Tap the Done button to confirm your sort and / or filter selections.
- Tap the Cancel button to revert any changes that you might have made.
If you are returning to the Filter and Sort menu after having already applied one or more options, the Cancel button only exits the menu. It does not remove any previously applied filters.
To remove one or more filters:
1. Tap either the Topics or Assignments buttons on the Planner screen.
2. Tap the Filter and Sort button.
3. Do one of the following:
- Tap the Reset Filters button to remove any filters that you might have applied.
- Tap the Reset Sort Options button to reset the sort options to their defaults.
- Tap an individual filter to deactivate it.
4. Tap the Done button to confirm.
Searching for Topics or Assignments The Search field on the Planner screen allows you to search the list of topics or assignments for a specific keyword or phrase. You can use this field to search for topic or assignment titles, tags, or text within the Description of a topic or assignment.
In this release, special characters such as !@#$%^&*, or others are not recognized and are instead treated as spaces between other valid characters. As a result, wild-card searches and exact match searches (using quotes) are not supported. Spaces between keywords are respected — allowing you to search for a phrase and not just a single keyword. Partial word searches are not supported. For example, the search would not return a match for “Avid” if you entered “Avi” only.
To search the Planner:
1. Tap either the Topics or Assignments buttons on the Planner screen.
The Topics and Assignments areas work independently of each other in the Collaborate mobile app. If you select the Topics tab and your value is associated with an assignment, the app does not return the asset. However, you can switch tabs to have the app repeat your search automatically.
2. Enter a word or phrase into the search field.
The app initiates your search and returns any matching results. From here you can do any of the following:
- If the search finds a matching keyword or phrase, the topic or assignment appears below the
search field. You can either tap the Enter button on the mobile keyboard or tap a topic or assignment to open it.
- You can enter a new value or switch between the Topics and Assignments tabs to conduct a
new search.
- You can tap the X button in the Search field, or tap the Cancel button to exit the search.
The Planner displays the full list of Topics or Assignments after canceling.
Using the My Profile Button When you tap the My Profile button, the app displays information about your user account. Additionally, this screen provides you with controls to sign out, or obtain additional information about the app. The following illustration and table describe the different areas of this screen.
Section or Button Description 1 Avatar and Displays your account’s user name and avatar.
Name You can tap this menu to see more information about your account.
If you see a purple dot above your avatar, it indicates that your Out of Office status is enabled. For more information on configuring your Out of Office settings, see “Creating People and Resources” in the Avid MediaCentral | Cloud UX User’s Guide.
2 Notification You can tap this menu to access your device’s notification and language settings Settings & for the Collaborate mobile app. If you tap this area of the app, Collaborate will Language redirect you to the iOS Settings app.
3 Appearance Allows you to configure the app in Light, Dark, or System (default) modes.
For more information, see "Change the App's Appearance" below.
4 About Provides the app’s version number, the name of the MediaCentral Cloud UX server to which you are connected, the version of software running on that server, and more.
5 Sign Out button Allows you to exit the Collaborate app.
For more information, see "Launching the Collaborate Mobile App" on page 10.
6 User Details After tapping your user name in the My Profile screen, you might see additional information about your account. User details might include your role, areas of expertise, or contact details. If you do not see this data, it means that a Collaborate Supervisor has not added it to your account.
If your account is associated with more areas of expertise than can fit on the screen, you can swipe left or right to display the additional tags.
The Viewing Rights section notes your Collaborate user type: Collaborator or Supervisor.
(not shown) If you sign in as a supervisor, an Edit button appears in the upper-right corner of the User Details that allows you to update your account information. For more details, see "Modifying Resources and People" on page 50.
Change the App's Appearance The appearance menu allows you to alter the look of the Collaborate app. You can select from Light, Dark, or System (default). The System option uses the value that you have set for your device under the Display & Brightness > Appearance setting.
To alter the app's appearance:
1. Tap the My Profile button at the bottom of the app.
2. Tap the Appearance option.
3. Tap the Light, Dark, or System option.
The app updates to display all screens using your preferred color-scheme.
4. Tap the My Profile button to return to the previous screen.
Working with Topics Topics and assignments are similar concepts in that you can assign people and resources to both and you can update the status of each during the life cycle of the project. The difference is that topics are often higher level concepts that link to related assignments. For example, you might create a topic called “2024 Election” where you create a team of people and resources that are associated with that concept. After you create the topic, you can create individual assignments that contribute to the completion of the overall topic.
The following illustration and table describe the Topic Info screen.
Button or Function Description 1 Topic Title Displays the name of the topic.
(displayed) If the name of the topic is too long to display on screen, you can tap the title field to display a tool-tip with the full name of the topic.
2 Back Button Tap this button to return to the previous screen.
3 Topic Tabs After you select a topic, the Topics and Assignments tabs are replaced with the Assignments, Media, and Info tabs.
- Assignments: Displays a list of assignments that are related to the
current topic only.
- Allows you to access any media assets that might have been added to
the topic through the MediaCentral Cloud UX browser interface. For more information, see "Working Within the Media Container" on page 33.
- Topic Info: Displays all information related to the current topic,
including team members, resources, metadata, and more.
4 Priority and Status Allows you to update the status for this topic. For more information, see Buttons "Assigning the Priority and Status" on page 24.
5 Assignment The counter displays the number of assignments that are associated with this Counter topic.
The area circling the counter provides you with additional graphical view of the overall status of the assignments that are linked to the current topic. If your topic includes one ore more assignments, you can tap the circle to display a tool-tip with additional detail.
6 Topic Title You can change the name of the topic when in Edit mode.
(editable) 7 Description This text field allows you to enter a short description of the topic.
8 Team Displays the employees or freelance contacts that are associated with this topic.
When viewing any topic or assignment to which you have been assigned, the app displays your avatar as “Me” — outlined in blue as the first team member.
If you see a purple dot above a contact’s avatar, it indicates that the user has enabled their Out of Office status.
For more information, see "Assigning Team Members, Resources, and External Contacts" on page 25.
9 Edit Button Allows you to edit or delete the topic or assignment.
10 Resources Displays the resources that are associated with this topic. For more information, see "Assigning Team Members, Resources, and External Contacts" on page 25.
11 External Contacts Displays any guest or organization type contacts that are associated with this topic. For more information, see "Assigning Team Members, Resources, and External Contacts" on page 25.
12 Tags Displays any tags that might be associated with the topic. For more information, see "Adding and Removing Tags" on page 28.
Button or Function Description 13 Departments For more information, see "Adding Departments and Sources" on page 29.
14 Start / End Dates For more information, see "Assigning the Start Date and Time" on page 30.
15 Sources For more information, see "Adding Departments and Sources" on page 29.
Fields such as Team, Resources, External Contacts and others includes lists of values. If your list extends beyond five total entries, the app displays a "Show 5 more" option at the bottom of the list. You can tap this option to show additional values until all are displayed.
Understanding the Assignment Landing Zone When you create an assignment, you must associate the assignment with a topic. If you do not specify a topic, the Collaborate app associates the assignment with the “Assignment Landing Zone” which acts like a bucket for all unlinked assignments. You can find the Assignment Landing Zone in the Planner tab along with all other manually created topics.
This topic differs from all others in that it does not include the Priority and Status menus, or custom fields such as People, Metadata, or others. Although you are allowed to create new assignments through the Add button in the Assignment Landing Zone, you cannot rename it.
Additional Information on Topics This section includes the following processes:
- "Creating a New Topic" on the next page
> **Note:** As both topics and assignments share similar features and menus, many of the following processes
can apply to both asset types. For assignment specific processes, see "Working with Assignments" on page 36.
Creating a New Topic Complete the following steps to create a new topic.
To create a topic:
1. From the Planner, tap the Add button, and then tap the Add Topic option.
The New Topic screen appears.
2. Tap the Topic Title field and enter a name for your new topic.
3. You can do any of the following to add people, resources, or additional information now, or you can
revisit the topic to add or change this information at a later date.
- Tap the Description field to add instructions, or other information to the topic.
See "Customizing the Description" on the next page.
- Tap the Add button next to the Team section to add team members.
See "Assigning Team Members, Resources, and External Contacts" on page 25.
- Tap the Add button next to the Resources section to add resources such as cameras, vehicles,
or other.
See "Assigning Team Members, Resources, and External Contacts" on page 25.
- Tap the Add button next to the External contacts to add contacts.
See "Assigning Team Members, Resources, and External Contacts" on page 25.
- Tap the Add button next to the Tags section to add team members.
See "Adding and Removing Tags" on page 28.
- Tap the Add button next to the Departments section to associate one or more departments
with the topic.
See "Adding Departments and Sources" on page 29.
- Tap any of the Date controls to change the Start or End dates.
See "Adding Departments and Sources" on page 29.
- Tap the Add button next to the Sources section to add source data.
See "Adding Departments and Sources" on page 29.
If you add more than five values to any single metadata field, the app displays a More button at the bottom of the section. You can tap the downward-facing chevron that appears next to the More button to display additional values. Values are displayed in five item increments.
4. Do one of the following:
- Tap the Create button to create the new topic.
- Tap the Cancel button to close the New Topic screen without saving
Opening a Topic and Changing the Title After you open a topic, you can freely edit any of the fields associated with the topic or add new assignments.
To open a topic:
- From the Planner, tap the topic from the Topics tab.
- If you first open a topic and then you open an assignment, you can tap the back button to get back
to the topic.
If you open an assignment from the Planner, the back button returns you to the Planner and not to its associated topic.
To update the title:
1. Open an existing topic (or assignment) and tap the Info tab.
2. Tap the Edit button in the top-right corner of the screen.
3. Tap the title field and enter a new name for the topic or assignment.
4. Tap the Save button to save your changes.
Assigning the Priority and Status The Priority and Status menus serve as communication tools that help you convey important information about the topic (or assignment) to other users of the Collaborate app. The Priority menu can be used to communicate the item’s level of importance or urgency. As you work, you can use the Status menu to communicate the current state — such as In Progress, Complete, or other.
When you create a new topic or assignment, the Collaborate app sets the default priority to High Profile and the default status to New.
To assign a priority:
1. Open an existing topic (or assignment) and tap the Info tab.
2. Tap the Priority button to display the available options.
3. Do one of the following:
- Select a new priority and then tap the Back button.
- Tap the Reset button if you made changes that you do not wish to save.
To assign a status:
1. Open an existing topic (or assignment) and tap the Info tab.
2. Tap the Status button to display the available options.
Each status option is associated with its own color for easier identification in different areas of the app.
3. Do one of the following:
- Select a new status and then tap the Back button.
- Tap the Reset button if you made changes that you do not wish to save.
Customizing the Description This field allows you to enter more information or notes about the current topic or assignment. If you include more than 10 lines of data, the final line includes an ellipsis to indicate that there is more data available. You can tap the forward arrow to display the additional content.
In addition to standard text, the app allows you to add web links, e-mail addresses, and phone numbers to the Description. Collaborate recognizes these as hot links and opens the appropriate web browser, e-mail app, or phone app when you tap the links.
To update the topic description:
1. Open an existing topic (or assignment) and tap the Info tab.
2. Tap the Edit button in the top-right corner of the screen.
3. Tap the Description field and add or edit your text.
4. Tap the Save button to save your changes.
Assigning Team Members, Resources, and External Contacts When working in the Collaborate app, you have the option of assigning (or removing) people and resources to (or from) any topic or assignment.
The process of adding or removing team members, resources, and external contacts is very similar between the three different asset types. The following illustration shows the three screens that allow you to manage these assets.
Shown from left to right: Team Management, Resource Management, External Contact Management Each screen includes a Search field above the list of assets. You can enter a value in this field to filter the list by that value. In the example illustration above, the user entered “Kar” to find the Karen Riz contact.
When you are viewing Team members, the app displays each contact with their avatar, name, and their role (if assigned). Resources are displayed with their asset type icon, name, and a description of the resource type (Microphone, Camera, Room, or other). External contacts include their avatar and name only.
The list of contacts in the Team section is limited to Employees and Freelance contact types only. If you have created additional contacts under either the Guest or Organization categories, these users appear in the External Contacts section. If you see a purple dot above the contact’s avatar, it indicates that the user has enabled their Out of Office status.
If a contact has enabled their out of office status, or your administrator has disabled the Active setting on a particular resource, the item appears dimmed, or grayed-out in the list. An administrator might flag a resource as inactive if it is out for repair or is otherwise unavailable. Although unavailable, the app does not prevent you from adding unavailable contacts or resources.
To add team members, resources, or external contacts:
1. Open an existing topic (or assignment) and tap the Info tab.
2. Tap the Edit button in the top-right corner of the screen.
3. Tap the Add or Edit button to the right of the Team, Resources, or External Contacts area of the topic
or assignment.
4. (optional) Swipe up or down through the list to display any assets that might appear off-screen, or
enter a value into the search field to find a specific asset.
5. Tap the Enable button to the right of the name to add the contact or resource.
The asset is added to the top of the management screen. Additionally, the Enable button turns blue and displays a check mark to provide additional visual confirmation that you successfully added the asset to your topic or assignment.
6. (optional) Tap the Enable button on additional assets to add more people or resources.
7. Exit the management screen by tapping the Back button.
8. Tap the Save button to save your changes.
To remove team members, resources, or external contacts:
1. Open an existing topic (or assignment) and tap the Info tab.
2. Tap the Edit button in the top-right corner of the screen.
3. Tap the Edit button to the right of the Team, Resources, or External Contacts area of the topic or
assignment.
The asset management screen opens to the associated section.
4. (optional) Swipe up or down through the list to display any assets that might appear off-screen, or
enter a value into the search field to find a specific asset.
5. Do one of the following:
- Tap the X over the asset’s avatar or icon at the top of the management screen.
If you do not see your contact or resource at the top of the screen, you can swipe to the left or right to display any assets that might appear off-screen.
- Tap the Enable button to the right of the name in the asset list.
The blue check mark disappears and the asset is removed from the top of the management screen to confirm that you successfully removed the asset from your topic or assignment.
6. (optional) Repeat the previous step to remove additional assets.
7. Exit the management screen by tapping the Back button.
8. Tap the Save button to save your changes.
Reviewing User Credentials The Collaborate app allows you to obtain more information about any Team member or External Contact that you might add to your topic or assignment. When displayed, the e-mail and phone number fields become hot links that access your device's default e-mail and phone apps. If the contact’s out of office setting is enabled, this view shows you the dates that are associated with that time-frame. The following illustration shows an example Guest contact with the contact's phone numbers, e-mail, and other data.
For more information about creating contacts and adding contact data, see “Creating People and Resources” in the Avid MediaCentral | Cloud UX User’s Guide.
To obtain more information about a contact:
1. Open an existing topic (or assignment) and tap the Info tab.
2. Tap the contact avatar in either the Team or External Contacts areas.
The app displays information about the contact. The amount of data depends on the contact type and the values associated with the contact. For example if your Employee account does not include any Notes, the app does not display this field.
3. Tap the Back button to return to the previous screen.
To contact the user through e-mail or phone:
1. Open an existing topic (or assignment) and tap the Info tab.
2. Tap the contact avatar in either the Team or External Contacts areas.
3. Do either of the following:
- Tap the e-mail address value to open your device’s default e-mail application.
- Tap the phone number value to open your device’s default phone application.
Adding and Removing Tags Tags allow you to associate one or more keyword values with your topic or assignment.
To add a new tag:
1. Open an existing topic (or assignment) and tap the Info tab.
2. Tap the Edit button in the top-right corner of the screen.
3. Tap the Add or Edit button to the right of the Tags area of the topic (or assignment).
The Tags screen appears and displays any tags that are already associated with your topic or assignment.
4. Tap the Find a Tag field and type the name of your new tag.
As you type, a menu appears below the tag name. If your text matches an existing tag, the menu displays a list of options that you can select. If you are creating a new tag, the menu informs you that this is a New Value (as illustrated below).
> **Note:** You can cancel the tag creation process by tapping the Back button or by tapping the X button
to the right of the tag name.
5. Save the tag name by tapping the value below the text field.
In the example shown in this process, you would tap Energy (New Value).
6. Exit the Tags screen by tapping the Back button.
7. Tap the Save button to save your changes.
To remove a tag:
1. Open an existing topic (or assignment) and tap the Info tab.
2. Tap the Edit button in the top-right corner of the screen.
3. Tap the Edit button to the right of the Tags area of the topic (or assignment).
4. Tap the X button to the right of the tag name.
The tag is removed from the topic (or assignment). If this is the only area where the tag exists, the tag is deleted from the Collaborate app. If the tag is associated with a different topic or assignment, it is saved as a known value and appears as a suggestion as you enter new tags.
5. Exit the Tags screen by tapping the Back button.
6. Tap the Save button to save your changes.
Adding Departments and Sources You can attach additional metadata to your topic or assignment in the form of Departments or sources.
- Departments might represent actual departments within your organization or general categories. of
interest. Examples include Arts & Culture, Evening News, Politics, and more.
- Sources can be used to describe where contacts can find source material or additional information
that is related to the topic. Examples include Associated Press, BBC, Reuters, and others.
To configure the metadata values:
1. Open an existing topic (or assignment) and tap the Info tab.
2. Tap the Edit button in the top-right corner of the screen.
3. Swipe up until you see the Departments or Sources areas.
4. Configure Departments
a. Tap the Add or Edit buttons to the right of the Departments field.
b. Tap any of the department names to add them to your topic.
c. Tap the Back button.
5. Configure Sources
a. Tap the Add or Edit buttons to the right of the Sources field.
b. Tap any of the sources to add them to your topic.
c. Tap the Back button.
6. Tap the Save button to save your changes.
Assigning the Start Date and Time You can use the start and end date fields to communicate the expected time-frame in which the topic must be complete. The start and end dates are both optional values.
To configure the start date and time:
1. Open an existing topic and tap the Info tab.
2. Swipe up until you see the Start Date and Time.
3. Change the Start Date and Time.
a. Tap the Start Date toggle to enable the date selection tools.
b. Tap the Date field to display a calendar tool.
c. Tap a new start date and then tap an area outside of the calendar to save the date and close the tool.
You can either tap the forward or back arrows ( < or > ), or swipe left or right to navigate through the calendar. Alternatively, you can tap the month / year value to open and close a date picker tool.
d. Tap another area of the app to exit the calendar tool.
e. Tap the Time field to display a clock tool.
f. Tap and hold the wheels to change the hour and minute values.
g. (if applicable) Tap the AM or PM buttons to change the time of day.
The availability of this option depends on your iOS device settings.
h. Tap another area of the app to exit the clock tool.
4. Configure the End Date.
The following illustration shows a topic with only the Start Date configured (left), and again with both the Start and End dates configured (right).
a. Tap the End Date toggle to enable the date selection tools.
b. Use the same controls to set the End Date as you used to set the Start Date.
5. Tap the Save button to save your changes.
Duplicating a Topic Complete the following process if you want to create a copy of an existing topic. When you duplicate a topic, all metadata values associated with that topic are duplicated. Assets included in the media container are not re-associated with the new topic.
> **Note:** The duplicate process might take a few moments to complete. If you do not see the new topic appear,
swipe down to refresh the Planner.
> **Note:** You cannot duplicate the Assignment Landing Zone topic.
To duplicate a topic:
1. From the Topics tab of the Planner, tap and hold the topic that you want to duplicate.
2. (optional) Enter a new name for the topic.
The duplication window appends the Title with the word "copy" by default.
3. Verify the position of the Assignments and Tasks toggle.
- The default position (grey) does not automatically duplicate any assignments or tasks that are
associated with the original topic.
- You can tap the toggle button to duplicate the associated assignments and tasks.
When enabled, the toggle turns blue. New assignments or tasks that are created as part of this process are given the same name as the original, and are not appended with the word "copy".
4. Do one of the following;
- Tap the Save button to create a copy of the topic.
The app displays a notification message that confirms success of the action. If the process fails for any reason, the app displays a notification about the error.
- Tap the Cancel button to abort the process.
Deleting a Topic The Collaborate mobile app allows any user to delete topics from the Collaborate app. If your topic includes any assignments, the assignments are also deleted from the app. If your topic contains one or more assignments that you want to save, you must move the assignments to a new topic before deleting the topic. For more information, see “Moving an Assignment to a New Topic” in the Avid MediaCentral | Cloud UX User’s Guide.
> **Note:** You cannot delete the Assignment Landing Zone topic.
You can delete a topic from the Planner screen, or from within the actual topic. The former allows you to delete multiple topics simultaneously To delete one or more topics from the Planner:
1. Tap the Planner button at the bottom of the app and then tap the Topics tab.
2. Tap and hold the topic that you want to delete.
A menu appears with various options.
3. Do one of the following:
- Tap the Delete option from the menu.
- Tap the Select option from the menu.
The app displays the list of topics. You can tap one or more topics, and then tap the Delete button at the bottom of the screen to confirm your selection. When you select a topic from this screen, a blue check mark appears in the upper-right corner of the topic to let you know that it has been selected.
4. Do one of the following on the confirmation screen:
- Tap the Delete Topic(s) button to permanently delete the topic(s).
If you selected multiple topics, the app displays the number of topics that will be deleted by this process.
- Tap the Cancel button to abort the deletion process.
If you tapped the Select option above, tap the Cancel button again to exit the selection screen.
To delete a topic:
1. Open an existing topic and tap the Info tab.
2. Tap the Edit button in the top-right corner of the screen.
3. (if necessary) Swipe up to display the Delete option at the bottom of the Edit Topic screen.
4. Tap the Delete Topic button.
5. Do one of the following on the confirmation screen:
- Tap the Delete Topic button to permanently delete the topic.
- Tap the Cancel button to abort the deletion process.
Working Within the Media Container The Media area allows you to view the thumbnails for any assets that you or another user might have added to the topic or assignment while accessing MediaCentral Cloud UX through a web browser. While you cannot open all asset types, the Collaborate app allows you to view or play certain Asset Management and Production Management assets. As seen in the following illustration, unsupported assets are grayed-out. If you attempt to tap the asset to open it, the app displays a message indicating that “This media format is unsupported.” Grayed-out, unsupported asset types (left). Supported assets (right).
If your topic or assignment includes a remote asset, the asset is identified with the remote icon (a downward facing arrow over the standard asset icon).
> **Note:** The ability to edit images, print images, control subtitles on video assets, and other native iOS features
are available through the Collaborate mobile app, but these features are not specifically supported or tested by Avid. The availability of these tools is subject to change.
Searching for Assets The Media area includes a search bar that allows you use single word searches to find assets within the container. For example, you can enter “Art” or “Exhibit” to find an asset named “Art Exhibit”. However a search for the two-word phrase “Art Exhibit” would not return the asset.
The search does not return results for text within notes, Newsroom Management assets, or similar text- based assets.
Sorting the Media Container Similar to the sort controls that are available in the Planner view, the Media area includes a Filter and Sort button that allows you to reorganize the media assets. For more information on this feature, see "Using the Filtering and Sorting Controls" on page 15.
Playing Media Assets The Collaborate mobile app allows you to play MediaCentral Production Management master clips, subclips, and sequences, as well as MediaCentral Asset Management video assets, audio assets, and EDLs.
Assets can include audio, video, or both. You can play assets in either portrait mode (vertical) or landscape mode (horizontal) as shown in this illustration.
> **Note:** Although you might be able to load Edit While Capture (EWC) assets, these assets are not supported
for playback at this time. EWC assets appear with a Live status indicator at the end of the scrub bar.
To play a media asset:
1. Access the topic or assignment and tap the Media tab.
2. Tap once on the asset that you want to play.
The app displays the media player.
3. (if applicable) Tap once on the image to display the player control bar.
4. Tap the Play button.
When you play an asset, a control bar appears over the image. You can use the following to control playback.
# Description 1 Reverse by 15 seconds 2 Pause / Play 3 Advance by 15 seconds 4 (Informational) Time at current position in the asset.
5 Scrub You can tap and hold the position indicator to scrub left or right through the asset.
# Description 6 (Informational) Amount of time remaining in this asset.
7 iOS native controls. As indicated earlier in this chapter, this menu might include additional functionality.
To stop playback and exit:
1. (if applicable) Tap once on the image to display the player control bar.
2. Tap the X button to exit the media viewer.
Working with Asset Management Images The Collaborate mobile app allows you to view MediaCentral Asset Management image files in full screen mode. If you are viewing the app in portrait mode (vertical), you can rotate your device to view the asset in landscape mode (horizontal). You can also pinch to zoom in or out of the image.
> **Note:** If the app encounters a problem loading an Asset Management image file, a Retry button appears
below the error text that allows you to attempt to reload the image.
When viewing an image file, you might see additional controls that allow you to manipulate, copy, or download the image. These controls are native to iOS and are not specifically supported by Avid. Copy and download controls do not respect Asset Management user privileges and rules.
To view an Asset Management image:
1. Access the topic or assignment and tap the Media tab.
2. Tap once on the image that you want to view.
3. When you are done viewing the asset, tap the Done button to exit the viewer.
Working with Assignments After you create a topic, you can begin to create assignments that detail the work that must be completed to accomplish the topic’s goal. Topics and assignments share a 1:1 relationship in that you can link an assignment to only a single topic at any one time.
The Assignments screen is divided into three tabs: Tasks, Media, and Info. Similar to the Topic Info screen, the Assignment Info screen allows you to configure contacts, resources, metadata, and other values. The Tasks screen can help you track the progress of the assignment. You might use tasks to create a reminder for yourself or other users about an internal milestone date or a team lunch. Alternately, you might create a list of goals that must be accomplished before you can complete the assignment. The following illustration and table describe these areas of the app.
Button or Function Description 1 Assignments Displays the title (name) of the assignment. This area also hosts the Add Task Header button.
If the name of the topic is too long to display on screen, you can tap the title field to display a tool-tip with the full name of the assignment.
2 Assignment Tabs The Tasks, Media, and Info tabs allow you to switch between the three different areas of the assignment.
- Tasks: Displays any tasks that might be associated with this assignment.
For more information, see "Working with Tasks" on page 40.
- Allows you to access any media assets that might have been added to
the assignment through the MediaCentral Cloud UX browser interface.
For more information, see "Working with Asset Management Images" on the previous page.
Button or Function Description
- Info: Displays all information related to the current assignment, including
team members, resources, metadata, and more.
3 Find Task You can enter text into this field to search for tasks within this assignment.
4 Tasks List When you select the Tasks tab, this area displays a list of all tasks for the current assignment.
5 Add Task Button Tap this button to create a new task.
6 Back Button The back button returns you to the previous screen.
7 Status and Allows you to update the status and priority of this assignment.
Priority Buttons 8 Assignment Title Displays the name of the assignment. You can tap the Edit button to change the title.
9 Due Date This value defines the completion date for the assignment. If a due date is not assigned, the field shows that the assignment is Unscheduled.
10 Description This area allows you to enter additional information about the assignment.
11 Additional For more information, see "Opening and Editing Existing Assignments" on Metadata page 39.
12 Edit Button Allows you to edit the name of the assignment, and all metadata fields that are associated with it.
This section includes the following processes:
- "Creating a New Assignment" below
Creating a New Assignment Complete the following steps to create a new assignment.
To create an assignment:
1. Do one of the following:
- Tap the Add button from the Planner tab and tap Add Assignment.
If you tap the Add button while viewing the Planner tab, the assignment is associated with the Assignment Landing Zone by default. For more information, see "Understanding the Assignment Landing Zone" on page 21.
- From within a topic, tap the Assignments tab, and then tap the Add button. If you want to
create multiple assignments for the same topic, Avid recommends that you use this option to allow for faster creation of subsequent assignments.
If you are creating the topic’s first assignment, the app displays an Add Assignment button in the center of the screen.
- From the Calendar, tap the Add Assignment button (if available) or tap the Add button at the
top of the app.
The app displays the New Assignment screen. The following example illustration shows the Assignment Landing Zone as the default topic.
2. Enter a name for the assignment in the Assignment Title field.
You might consider keeping this value short so that the name is not truncated when displayed in other areas of the app.
3. If you want to assign a Due date to this assignment, tap the Due date toggle to display a date field.
If you created the assignment through the Calendar view, the app assigns the date selected in the calendar to the Due field.
Unlike topics, assignments are associated with a date only (no time of day option).
4. Tap the Description field to add information about this assignment.
5. Update the Topic assignment.
- If you created the assignment from the Planner tab of the app, the assignment is associated
with the Assignment Landing Zone.
You can change this value by tapping the Topic field and selecting an alternate topic from the list. The Topic screen also allows you to search for a specific topic title.
- If you created the assignment from within a topic, the app associates the assignment with
current topic automatically.
6. Tap the Add button next to the Team, Resources, or other values to further configure your
assignment.
7. Do one of the following:
- Tap the Create button to create the new assignment.
- Tap the Cancel button to close the New Assignment screen without saving.
Opening and Editing Existing Assignments After you create an assignment, you might want to customize it with additional information or update the its priority or status. Complete the following steps to open, and optionally edit the assignment.
To open an assignment:
1. Use one of the following methods to open the assignment:
- From the Planner screen, tap the Assignments tab and then tap an assignment.
- From within a Topic, tap the Assignments tab and then tap an assignment.
After you open the assignment, you can adjust its properties using the steps in the following process.
To edit an assignment:
1. Open an existing assignment and tap the Info tab.
2. Tap the Edit button in the top-right corner of the screen.
3. Configure the Priority and Status settings.
For more information, see "Assigning the Priority and Status" on page 24.
4. Tap the title field to change the name of the assignment.
5. Assign or update the Due Date.
This value defines the completion date for the assignment.
- If the assignment does not show a due date, you can tap the Due date field to enable the
calendar tools.
This adds today’s date as the due date. You can tap on the Date field to further customize it.
- If the assignment is already associated with a date, you can either tap the Due field to edit it,
or tap the Due date toggle to disassociate the assignment with a due date.
6. Enter or update the Description field.
This area allows you to enter additional details about the assignment. You might want to include background information or possibly instructions for the contacts that are assigned to the task.
7. Configure team members, resources, or external contacts.
For more information, see "Assigning Team Members, Resources, and External Contacts" on page 25.
8. Enter one or more new tags.
For more information, see "Adding and Removing Tags" on page 28.
9. Associate the assignment with a new topic.
The Topic field displays the assignment’s associated topic. If you need to move this assignment to a different topic, you can tap this field to display a menu of available topics.
10. Add or update Departments and Sources.
For more information, see "Adding Departments and Sources" on page 29.
11. Tap the Save button to save your changes.
Working with Tasks You can think of the Tasks area as your assignment “to do” list — a collection of tasks or “sub-assignments” that you might need to address before you can mark the assignment as complete. While you are not required to create any tasks as part of your workflow, Avid supports the creation of up to 50 tasks per assignment.
As shown in the following illustration, the Tasks header displays the number of tasks that are associated with the current assignment (two in this example). Each task is listed in the order in which it was created (most recent at the top).
Creating Tasks Complete the following process to create a new task. After creating a task, you can reopen it to edit the title, status, or other values.
To create and configure a task:
1. Do one of the following:
- If you are creating the first task in the assignment, you can tap the Add Task button in the
center of the screen.
- Otherwise, tap the Add Task button in the Assignments header.
The app displays a new task with the default name of New Task. The following illustration shows a the New Task screen, using Avid's default Task form.
2. Select a form.
The form determines the fields that are available in this task, and which are mandatory. Mandatory fields are identified with an asterisk ( * ). MediaCentral Cloud UX provides a default Task form, but administrators can create additional forms and decide which form is displayed as the default. For more information about forms, see "Using the Collaborate Settings App" in the Avid MediaCentral | Cloud UX Installation Guide.
The fields described in the following steps are part of Avid's default form. The fields that are available in custom forms might vary. If you encounter a field that you do not understand, contact your system administrator for assistance.
3. Tap the Status menu and assign a new status.
Avid's default task form assigns the New status by default.
4. Tap the title area and enter a new name for the task.
5. Tap the Due (date) toggle and assign a date and time by which you must complete the task.
After you assign a Due date, you can tap the Download button to save the task as a calendar entry.
For more information, see "Exporting a Task to a Calendar App" on the next page.
6. Add Team members, resources, or additional information to the task.
7. Select an assignment.
The task is automatically associated with the current assignment, but you can use this menu to create a task for a different assignment.
8. Tap the Create button to save the task.
Editing Existing Tasks After creating a task, you can edit the title, status, or other values.
To edit an existing task:
1. After opening the associated assignment, tap the task to open it.
2. Tap the Edit button and make changes to the task as needed.
3. Tap the Save button to save the task.
Exporting a Task to a Calendar App After you create and configure a task, the Collaborate app allows you to export the task as a calendar Outlook™.
event that you can add to external applications such as Microsoft When you export the task, the following fields are included in the event:
The task title
- Due date (and time)
- To export a task as a calendar event:
1. Open the assignment and your related task.
2. Tap the calendar button to the right of the Due date field.
The Collaborate app opens your device’s default calendar app and adds the task to the calendar. If you have not defined a default calendar app, you are presented with a warning screen that alerts you to the situation.
Deleting a Task As a user of the Collaborate mobile app, you have the ability to delete any task, regardless of the creator. If you delete a task, any team members or resources that you added to the task remains associated with the upper-level assignment and topic.
To delete a task:
1. Open the assignment that includes the task that you want to delete.
2. Tap the task.
3. Tap the Edit button in the top-right corner of the screen.
4. Tap the context menu in the Tasks header.
A Delete option appears in a menu at the bottom of the screen.
5. Tap the Delete Task option at the bottom of the screen.
6. Do one of the following;
- Tap the Delete Task button to permanently delete the task.
- Tap the Cancel button to abort the deletion process.
Duplicating an Assignment Complete the following process if you want to create a copy of an existing assignment. When you duplicate an assignment, all metadata values associated with that assignment are duplicated. Assets included in the media container are not re-associated with the new assignment.
> **Note:** The duplicate process might take a few moments to complete. If you do not see the new assignment in
your topic immediately, back out of the topic and reselect it to update the list. If you are working in the Assignment section of the Planner, you can swipe down from top of the list to refresh.
To duplicate an assignment:
1. Do one of the following:
- From the Assignments tab of the Planner, tap and hold the assignment that you want to
duplicate.
- From within an existing assignment, tap the Info tab and then tap the Edit button.
2. Do one of the following:
- If you are duplicating an assignment from the Planner, tap the Duplicate option in the context
menu.
- If you opened an existing assignment, swipe up and tap the Duplicate button at the bottom of
the screen.
3. (optional) Enter a new name for the assignment.
The duplication window appends the Title with the word "copy" by default.
4. (optional) Associate the assignment with a different parent topic.
Assignments are associated with their original topic by default, but you can use the Parent Topic menu to create the new assignment in a different topic.
5. Verify the position of the Tasks toggle.
- The default position (grey) does not automatically duplicate any tasks that are associated with
the original assignment.
- You can tap the toggle button to duplicate any associated tasks.
When enabled, the toggle turns blue. New tasks that are created as part of this process are given the same name as the original, and are not prefaced with the word "copy".
6. Do one of the following;
- Tap the Save button to create a copy of the assignment.
The app displays a notification message that confirms success of the action. If the process fails for any reason, the app displays a notification about the error.
- Tap the Cancel button to abort the process.
Deleting an Assignment The Collaborate mobile app allows you to delete any existing assignment. You can complete this process from the Planner, or from within the actual assignment. The former allows you to delete multiple assignment simultaneously.
To delete one or more assignments from the Planner:
1. Tap the Planner button at the bottom of the app and then tap the Assignments tab.
2. Tap and hold the assignment that you want to delete.
A menu appears with various options.
3. Do one of the following:
- Tap the Delete option from the menu.
- Tap the Select option from the menu.
The app displays the list of assignments. You can tap one or more assignments, and then tap the Delete button at the bottom of the screen to confirm your selection. When you select an assignment from this screen, a blue check mark appears in the upper-right corner of the assignment to let you know that it has been selected.
4. Do one of the following on the confirmation screen:
- Tap the Delete Assignment(s) button to permanently delete the assignment(s).
If you selected multiple assignments, the app displays the number of assignments that will be deleted by this process.
- Tap the Cancel button to abort the deletion process.
If you tapped the Select option above, tap the Cancel button again to exit the selection screen.
To delete an assignment from within the assignment:
1. Open an existing assignment.
2. Tap the Edit button in the top-right corner of the screen.
3. (if necessary) Swipe up to display the Delete option at the bottom of the Edit Topic screen.
4. Tap the Delete Assignment button.
5. Do one of the following on the confirmation screen:
- Tap the Delete Assignment button to permanently delete the assignment.
- Tap the Cancel button to abort the deletion process.
Using the Calendar The Calendar screen allows you to view assignments in chronological order, according to their Due Date.
Assignments that are not associated with a due date appear in the Unscheduled tab.
The following illustration and table explain some of the different areas of this tool.
# 1 The Find feature allows you to search for the name of an assignment. If the assignment is does not exist on the date or within the date range that you specify, the app displays an Add Assignment option.
2 Week View displays assignments for the current day, or your selected date range.
3 Only My Stuff allows you to filter the list to display only those assignments to which you are assigned.
4 The selected date or date range is outlined in blue.
5 List of assignments.
6 Filter and Sort controls similar to those of other areas of the app. For more information, see "Using the Filtering and Sorting Controls" on page 15.
7 The Add button allows you to create an assignment from within this section of the app. For more information, see "Creating a New Assignment" on page 37.
# 8 Tap here to display the Unscheduled tab.
9 Date Rage button. For more information, see "Adding a Date Range" below.
10 The Today button displays only today's assignments. If you had selected a different date or a date range, that selection is cleared when you press this button.
11 Today's date is displayed in blue text, but without a blue outline around the date.
You can swipe left or right to move to the previous or next week.
Adding a Date Range The Calendar screen displays the current week, and today's date by default. However, you can view the assignments for another date or a date range by tapping the Date Range button.
To view assignments using a date range:
1. Tap the Calendar tool in the button tray at the bottom of the screen.
2. Tap the Date Range button.
The app displays a screen that allows you to select Start and End dates. The values that you select here determine the assignments displayed on the Calendar screen.
3. Tap the Start Date field and then tap a date that represents the beginning of your date range.
You can use the on-screen arrows and controls to select alternate months, or years.
4. Tap the End Date field and select a date that represents the end of your date range.
If you select the same day in both the Start and End fields, only that date is displayed on the calendar screen.
5. Tap the Apply button.
The Calendar displays the assignments for your date or date range. As illustrated below, the calendar highlights the affected dates when selecting a date range.
Scheduling or Rescheduling Assignments You can use the Calendar to assign a due date to one or more assignments without the need to access and edit each individual assignment.
To assign due dates to one or more assignments:
1. Tap the Calendar tool in the button tray at the bottom of the screen.
2. Tap and hold the first assignment that you want to associate with a new due date.
You can perform this action from either the Week View or the Unscheduled view.
The app displays a menu with multiple options.
3. Do one of the following in the options menu:
- Tap the Select button.
The app displays the Select Assignments screen that is populated with the assignments for the date, or date range that is selected in the Calendar screen. If you are working in the Unscheduled view, the app displays all assignments from that tab.
a. Tap one or more assignments that you want to reschedule.
When you select an assignment, the app displays a blue check mark to the right of the assignment as visual feedback.
b. Tap either the For Today button, or the Schedule button.
  - If you select the today button, the app uses today's date as the new due date.
  - If you select the Schedule button, you are presented with a calendar tool that
allows you to select a specific date. Tap the Add button to confirm your selection.
- Tap the Schedule for Today button.
- Tap the Schedule button.
The app displays a calendar tool that allows you to select a different date.
a. Tap a new date.
b. Tap the Add button.
- Tap the Delete button.
Allows you to delete the assignment. For additional details, see "Deleting an Assignment" on page 44.
The assignment's due date is changed and the assignment is moved to the correct date on the calendar.
Collaborate Resources and People The Resources and People tabs that are located at the bottom of the app allow you to view, edit, create, and delete resources and contacts. These tabs include similar search and Sort By options as the Planner tab, but with customized options that are designed specifically for these areas of the app. For more information on working with filters and sort options, see "Using the Filtering and Sorting Controls" on page 15.
For more information about resources and people, including processes on how to modification and deletion, see the “Using the Collaborate App” chapter of the Avid MediaCentral | Cloud UX User’s Guide.
This section includes the following processes:
"Viewing Resources and People" below
- "Creating Resources" on the next page
- "Creating Contacts" on the next page
- Viewing Resources and People
You can use the people and resources areas to obtain more information about individual resources or contacts. If you are viewing a contact and that contact includes a phone number or an email address, you can tap the links to either call or email them. The Collaborate app opens the default email application — as defined in the settings of your device.
Contacts might or might not include information about the user's Viewing Rights: Collaborator or Supervisor. Freelance, Guest, and Organization contacts do not have any viewing rights as these contact types cannot sign into the Collaborate app.
To view information about a resource or contact:
1. Tap the Resources or People tab at the bottom of the app.
2. Tap the name of the resource or contact that you want to view.
The following illustration shows an example resource (left) and contact (right). As with the information displayed in the My Profile area of the app, the amount of information displayed in these screens is determined by the data that has been added to the resource or contact.
3. Tap the back button to return to the previous screen, or tap a different tab at the bottom of the
screen to access a different area of the app.
If you select a different tab, the previous tab displays the information about the last resource or contact that you selected.
Creating Resources Complete the following process to create a new resource. The ability to create new resources through the app is limited to Supervisors only.
To create a new contact:
1. Tap the Resources tab at the bottom of the app.
2. Tap the Add Resource button.
3. Tap inside the Resource Name field and enter a name for the resource.
This is the only required field.
4. Tap the Category field to determine the type of asset that you want to add, and then tap the Back
button after you have made your selection.
This value also determines the resource’s avatar. You can only select one category per resource.
5. Decide if you want to make this an Active (blue) or inactive (gray) resource.
Inactive resources appear grayed-out in the user interface. This option can be useful to identify a piece of equipment that is out for repair or is otherwise temporarily unavailable.
6. If you want to add more information about the resource, tap the Notes field and enter those details.
When complete, tap the Done button at the bottom of the app.
The Notes field can have a maximum of 500 characters.
7. Do one of the following:
- Tap the Create button to save the new resource.
- Tap the Cancel button to abort the creation of the resource.
Creating Contacts Complete the following process to create a new contact. The ability to create new contacts through the app is limited to Supervisors only.
To create a new contact:
1. Tap the People tab at the bottom of the app.
2. Tap the Add Contact button.
3. Tap inside the Name field and enter a name for the contact.
This is the only required field.
4. Enter additional information about the contact such as their user type, areas of expertise, contact
information and other.
When entering phone numbers, enter only the numerical values without any dashes, parentheses, or other special characters.
5. If you want to add more information about the contact, tap the Notes field and enter those details.
When complete, tap the Done button at the bottom of the app.
The Notes field can have a maximum of 500 characters.
6. Enable (blue) or disable (gray) the Out of Office toggle.
If you enable the toggle, the app displays time and data fields that you can use to determine the period of time for which this contact will be unavailable.
7. Do one of the following:
- Tap the Create button to save the new contact.
- Tap the Cancel button to abort the creation of the contact.
Modifying Resources and People Complete the following process to edit an existing resource or contact. This functionality is available to Supervisors only.
To modify a resource or contact:
1. Tap the Resources or People tabs at the bottom of the app.
2. Select a contact or resource.
3. Tap the Edit button in the top-right corner of the app.
4. Update the resource or contact as needed.
5. Do one of the following:
- Tap the Save button to update the resource or contact.
- Tap the Cancel button to abort your changes.
Deleting Resources and People The Collaborate app allows you to create contacts that are not included as users in your authentication provider, such as guests, freelancers, and others. Users with Supervisor-level access to Collaborate can remove these users from the system.
> **Note:** You cannot delete employees from the Collaborate app. If you need to exclude an employee from the
Collaborate workflow, the account must be removed from the authentication provider user group that is associated with the Collaborate app.
Supervisors can also delete resources from the app. As all resources are created by the supervisor, the app does not impose any additional restrictions on resource deletion.
To delete a contact or resource:
1. Tap the Resources or People tabs at the bottom of the app.
2. Select a contact or resource.
3. Tap the Edit button in the top-right corner of the app.
4. Tap the Delete Contact or Delete Resource button.
5. Do one of the following:
- Tap the Delete button to confirm the removal of the contact or resource from the Collaborate
app.
This deletion is global in that applies to all users of both the mobile and browser-based version of the app. When you tap the delete confirmation button, the delete is irreversible.
- Tap the Cancel button to return to the Edit screen.