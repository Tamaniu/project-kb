# Word Document
**Source:** Wolftech OFFICIAL_Documentation — 07_Publish
**Revision:** R11
**Added to KB:** 04/06/2026
**Version scope:** R11 only — do not apply to other revisions

---

## PUBLISHING
### PUBLISHING
In the publishing tab you can add publishing points for your story or production.
This will leverage the publishing folders created by the admins.
Adding Publishing Points
Simply click on the + button and select a folder and select a date and time for it
The publishing point will take the name of your story or production by default, to rename it click on the icon of the pubpoint
You can also just open it by click on its title and in the window click on the title again to edit the title:
Publishing Overview
The publishing tab will display all associated publishing points for your story or production.
In the tab it will also display the total amount of pub points at the top, like we do for bookings.
On the Right menu you can also check the publishing plan for your story for the today:
Bookings
You can book team members to collaborate on a publishing point if it is specific to its delivery and separate from the story or production
Communication
The publishing point has its own message thread for all specific chats about its publishing
Additional Information
Depending on your admin setup certain platforms may have metadata fields that you can use for organising your publishing work. These custom fields live in the Additional information section
Request and track guidance on a publishing point
You can request guidance from legal, r&c etc on a publishing point
See Guidance guide for more info
Editor
The ultimate output from your publishing point is described in the editor.
Your publishing folder may use one or more templates.  To begin unlock the editor and choose a template if need be and enter the details of your publishing point.
See how you can import content from the story or production to make this faster
You can also drag media from the board to media field types
Once you are happy with the changes, lock the editor again so others can see the changes or do further changes.
Changing Templates and Mapping
Change the publishing point template of an existing publishing point without losing its data (mapping the data to the new chosen template) If you have a publishing point where you have already worked on adding the metadata:
When you change the template (see Web) you will be presented with an option to convert the data to match the new template
All fields where there is a matching field title will be mapped automatically but you will have a chance to manually adjust mapping as needed for those where there is no match
Publishing Workflow
A publishing point will go through a publishing workflow to determine the steps and approvals required to publish to a platform
You can check this in the publishing point list and it will display in all of the plan views for tracking. Clicking on it allows you to change it and see when it was created and last modified
You can adjust the status in the top right. Once you reach a stage where the next action is to publish you will see the publish button. After this point the publishing metadata and content will be published to the 3rd party platform.
If an approval is required in the workflow template you will either not be able to move it beyond its current status or see an approve button:
Notifications
The owner of the pubpoint or those booked on it will be notified of changes to its status
Activity Tracking
You can check the activity log for the publishing point too
Print Publishing Point function
If you need to share the details of the pinpoint use the print function Allows to print the Publishing point and share it. You can specify if they want to include the description, the additional Information and the template elements of the publishing point.
Publishing Point link and unique GUID
Sometimes you may need to share a link to the pinpoint or its unique ID for others to find it:
To get the link use the 3 dot menu
The GUID can be found on the pub point under the title and can be copied.
### ADMIN
#### Intro
The new Plan View uses the new Publishing Folder Structure to filter the display of publishing points so you will first need to make sure all of your active publishing sub-platforms are organized under the new publishing folder structures.
These folder structures are a great way to organize your publishing destinations into folders that your teams can easily get to.
#### Publishing Architecture
The overall architecture can be described as per below:
PlatformType
Platform
Sub platform
PublishingHierarchyFolder
PublishingFolder
Publishing point
##### Platform Types
If we follow a top down approach to Publishing at the top level we find Platform types. There are 3 main types:
iNews Platform Type (For iNews integrated publishing)
Generic Platform Type (for CMS publishing, Social Platforms, Open Media)
Wolftech Live will get a dedicated platform type when it is ready.
These define how the platform will handle the communication with 3rd party systems.
##### Platform
For each Platform type you can create Publishing Platforms.
This can be your way of splitting your go to end points for publishing.
For example, you could create a TikTok or an Instagram Platform under the Generic Platform type.
In the Admin - Platform section once you create the platform you will be able to assign it a name, logo, color as well as setup important configuration.
Some of the existing configuration is only relevant to the old plan view (Namely Slots and publish time) so the most important aspects here are
External trigger - to define if when publishing in this platform we want to trigger the workflow engine to generate MAM Placeholders or Folders.
Default workflow template. This defines the steps required to successfully publish to this platform (like to do, in progress, packaging, ready to publish, published) We can explore this separately in this guide.
Workflow templates
The can be setup in the Admin - templates section
Inside you will be able to  manage the template
1- Choose to add a workflow step and select it from the list of existing workflow steps or add a new one.
2- Define if the workflow has a previous dependency. Ie you cannot move to this workflow step until a previous one is completed
3- Setup Approvals (Optional). If an approval is set up you will indicate that someone with the given resource type that has been booked in the story will be able to approve this step.
4- Add Notifications (Optional) if  a resource type needs to be notified when a publishing point change to this new workflow step this can be done here (on start and on completion)
5- Decide which workflow step is the one that will ultimately publish it to the 3rd party system. Note, once it is published it will go to the next workflow step and will be locked.
Rundown Server Config
If we look at the iNews Platform type, in the Platform level we will set many important parameters:
Whether updates to the publishing point are pushed to iNews
Template dialogue (please ignore the template dialog option and keep unchecked)
Check whether you want to automatically use the story title as the publishing point title
And most importantly which iNews Server this platform is pointing to. Each platform can only point to one iNews Server
*Do note the connected rundown server list is configured in Admin-External Connections.
##### Sub Platforms
Within each platform you may have a sub platform. This allows you to have different ways of working within a platform
Here you can set
the Publishing template(s) (Template. i.e. The fields that are included in the publishing point to package the information before we publish to a 3rd party. It will also give you an overview of which publishing folders are connected to this sub platform.
the additional information preset (Production type) and
The Publishing Template(s)
Are the collection of fields that get pushed to the 3rd party systems on publishing. Note you can add more than one template to a publishing sub-platform so users get to choose which template they would like to use in those cases
Publishing templates can be configured in the Publishing template tab but should always be discussed with your project manager if you would like to use them to publish to 3rd party to make sure the workflow engine is configured correctly:
Additional information (Production Type).
This allows admins to define Metadata fields that can be used to operationally manage the publishing of those fields.
These are configured in the Admin-Custom Fields section and associated with a Production Type. Then in the sub-platform you select the Production Type.
Please be sure that all of your sub-platforms are configured correctly.
Rundowns Config:
For iNews sub platforms you will also set the destination rundown:
##### Publishing Folders
In the Admin Platform Manager you can now create “Custom Structures”.
To start a top level folder use the New folder button:
The folder trees can have any number of levels. Add new levels under the 3 dot menu.
At the bottom of them simply add a Publishing folder rather than a Hierarchy folder:
Choosing New publishing folder will allow you to choose a sub-platform to add to from any platforms across all platform types:
Alternatively once the hierarchy folders are created you can also drag sub-platforms from the list on the left to the hierarchy folders on the right to add them:
Once you connect the sub-platform to the publishing folder  you will be able to define the settings for it, including
Specifying the sub-platform publishing time zone
Whether it has a fixed publishing start time (Note, you can create multiple publishing folders out of the same publishing sub-platform to create publishing slots using this feature).
When you select a fixed start time all publishing points created for it will have that start time fixed by default. Another option is to name your publishing folder with “Evening News 6pm” and not enable the fixed start time so that users can then change the time to 6:05 or 6:10. We are not defining an end time for a publishing folder as the feedback was that it wasn't that helpful.
Enable Total Run Time tracking. In the plan view if you add publishing folders that are tracking TRT we will display a total TRT at the hierarchical folder level automatically adding the total of all of the publishing folders tracking TRT.
The publishing cadence, every day, selected days or a set list of custom dates can help you structure your publishing workflow and will in essence remove the publishing folder option on the dates that are not included in this list.
Note, if you do not choose one option here the default is “off” and as a result the publishing folder will not be available for selection.
These folder structures will then be displayed when adding publishing points to your story or creating Plan views.
Sharing
In the new plan view you will have the ability to share a publishing point across multiple publishing folders provided the folders have been set up from the same source sub platform. This is to make sure they use the same:
Workflow template
Publishing template
Additional information
Rundown configuration
It is important to keep this in mind when setting up your folder structure if you plan on sharing pubpoints across multiple destinations.
To create this workflow simply drag one sub platform from the left side multiple times to the same publishing hierarchy folder:
As long as you do this you will be able to drag a publishing point to a another of those folders to share it:
Note, once shared you will be able to see inside of the publishing point all of the instances of it:
If you click on the instance at the top you will be able to modify the date/time of that particular instance:
##### Publishing Points
When you hit the plus button to create a new publishing point in your story you will now see a folder structure that you can navigate to drill down into your desired end point folder.
As you can see above the new folder structure allows you to define folders for editorial sections of your organization and to freely combine publishing destinations from multiple platform types for ease of use.
When the users select one of the folders they will be able to see the publishing folders available and the UI will feel familiar from the existing experience.
Users can mark their favorite publishing folders across multiple folders for quick access too.
Once you open The new publishing modal, introduced in Release 10, will feel immediately familiar:
##### UniqueID
The Admin can choose to show the unique GUID or the internal ID for the Pub points in the admin layout menu.
#### Migration
When you transition to the new plan view you will not need to recreate the existing publishing points. Wolftech will work with you to migrate existing publishing points to the new folder structure.
In the Admin - Platform page, within the slots conversion tab,  you will be able to connect each of your existing publishing slots to a publishing folder. The rule that applies is that you can connect a publishing slot to only one publishing folder (i.e. the same publishing slot cannot be mapped to multiple publishing folders). However you can map multiple existing slots to the same publishing folder if needed).
To do so click on the slots conversion tab, then choose your sub platform or platform (wherever you are managing pubpoints) and you will see all of the slots that currently exist within it. Click on the one you want to connect and choose the publishing point folder to the right you would like to connect it to before clicking on the connect button.
Do note that for compatibility factors the connected publishing folder needs to have been created out of a sub platform from the same platform as the slot (i.e. in the image above the publishing folders have all been created from sub platforms within the 24-7 News Channel 6 platform.)
To make the publishing points visible you will need to connect all of the slots from the sub platform and click on the “add to new plan view” button. This guarantees that the process is handled in a secure way that will not affect your system´s activity.
If there are any slots you no longer require we recommend you to delete them or if legacy just map them to a publishing folder, since if there may be no publishing points to worry about the final process will just take care of the deletion itself.
Once added, publishing points from the last 2 weeks and into the future will be at this point active in both the old and new plan view in parallel. In the old plan view the slots will continue to work. In the new plan view those same publishing points will display in the connected folders. We do not recommend extending for too long this parallel status for performance reasons.
If you need to disconnect a slot to connect it to another publishing folder you can just click on the undo button that will be available after “adding to new plan view”, then choose a slot to reveal the connected publishing folder and disconnect it. You will need to connect to another folder before you can choose the “add to new plan view” again.
Once you are ready to migrate your teams you will need to convert the slots to fully migrate all pubpoints to the new publishing folder. This process cannot be undone and requires careful execution as once you convert the slots they will be deleted and all publishing points will only display under the new publishing folders in the new plan view. At this point all historical publishing points (prior to the 2 weeks window initially handled) will be fully migrated to the new folders
To run the conversion click on the “convert slots” button..
In summary the process will be:
Admins first set up the folder structure required.
Admins set up your plan views leveraging those folders to be fully sure the folder architecture works for your organization (see PLAN view documentation for help with that).
Admins connect Old Slots to the new publishing folder structure
Admins add all of the connected slots for a sub platform to the new plan view to monitor publishing in the new plan view
Admins review the setup with super users to verify it is working as expected
Once approved, Admins grant access to new plan views to the full team and convert the platform/sub platform slots to finalize migration for that team.
Admins work with the next team until all the old plan view items have been migrated.
Admins switch the “use new plan view” admin option to force all users into new plan view
***PLEASE NOTE that the new Plan view and new folder structure is NOT supported with the current mobile (V3) application and will only be supported by the new Mobile App (V4). The new mobile app will be available at the same time as R11 and it will support both new and old plan views to make this transition easier.
Also note you can have users in the old plan view and users in the new plan view, however users in the old plan view won't be able to see publishing points created in the new structure in the new plan view. Users in the new plan view could admittedly switch to the old plan view if they want to see publishing points organised in the old structure.  As such we recommend migrating whole teams together for efficiency.