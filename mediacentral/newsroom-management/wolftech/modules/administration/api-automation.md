---
product: wolftech
product-area: newsroom
version: "15"
release-date: 01/06/2025
doc-type: user-manual
source: avid-official
confidentiality: internal
date-added: 16/04/2026
status: current
feature-tags: [wolftech, api, automation, integration]
---

# API and Automation

## Public API

We now have more than 100 public APIs available for more access to some of the data and functionality in Wolftech News. Contact your account manager to get the latest documentation if you are planning to use it.

To find out the latest possibilities and to find out how to get authorisation check this link: https://news.wolftech.no/api/docs/index.html

### API Highlights

**Search API**

- v2/query/event/search
- v2/query/story/search
- V2/query/resource/search

**Story API**

- Get Story includes (Simplified to support timeless and scheduled stories on the same API call)
- Get Owner of story
- Search Story
- List Stories
- List attachment items for story
- Create Stories
- API to create story out of event automatically based on event data ("v2/command/story/create-story-from-event")
- Modify Stories
- Add and remove attachments to the story
- Delete Stories
- Indexing support (/v2/query/pub-point/get-for-indexing)

**Background Information (Editorial) API**

- Get list of background information items in a tab

**Additional Information API (Tab Group API)**

- Get list of Production Types (Tab Groups) now includes the list of tabs inside of the production type
- The list of fields inside of the included tabs (/v2/query/tab-group/get-with-tabs)
- (/v2/query/tab-group/list)

**Pitch API**

- Get Note (Pitch) API (Simplified to support timeless and scheduled pitches on the same API call)
- List Pitches
- Create Pitches
- Modify Pitches
- Delete Pitches

**Event API**

- Manage Calendars
- Create Event
- Delete Events
- Modify Events
- Add Background info to events
- Set addl info on events
- Indexing support (/v2/query/event/list-for-indexing)
- (/v2/query/event/get-for-indexing)

**Feeds API**

- Create Feeds Message
- Create Feed Source
- Get Feed source

**Live Feed API**

- Manage Live feeds
- Create live feeds
- Make author optional in API and not display it if missing
- Edit/delete posts and feeds in Live Feeds

**Asset API (Attachments)**

- Add Assets to board including:
  - Sticky Notes
  - External MAM Reference from 3rd party systems so you can auto-populate your board from ingests into your 3rd party MAMs
  - Web links
- Get list of Attachment Items
- Delete an Attachment item (only deletes the reference to the story, not the asset itself from the source system)

**Publish API**

*Platform*

- List Platform type
- List Platform
- Set Unique IDs

*Folder (Destinations)*

- Get the list of hierarchy folders and its sub folders to present the possible options for publication
  - v2/query/publishing-folder/list-hierarchy-folders
  - v2/query/publishing-folder/list-child-publishing-folders
- Get publishing folder by ID to return all folder metadata (including its associated platform and sub platform and the next available date-time when you can create a publishing output)
  - v2/query/publishing-folder/get
- Get Next available publishing date
- List workflow statuses for folder
- List available templates for folder

*Templates*

- Get list of available templates for a folder ("v2/query/publishing-folder/list-available-templates")
- Get List of workflow status types for a folder (/query/publishing-folder/list-workflow-status-information)
- Get Template by ID to get all available fields and values within it ("v2/query/pt-template/get-template-by-id")

*Publishing Point*

- Get Publishing output
- Get Template for publishing Output
- Get list of workflow status options for publishing output
- Get active status
- List possible statuses
- Get Publishing output ID from an external ID (like iNEWS story global ID) (/v2/query/pub-point/get-by-external-id)
- Create Publishing Output
- Set Publishing Folder
- Modify values in Publishing Output
- API to Modify Custom Fields in Publishing output (/v2/command/pub-point/set-field-value)
- (/v2/command/pub-point/set-field-value-multi-select)
- Delete Publishing Output
- Add Attachments, Sticky notes, and ext asset references to Publishing point
- Disconnect attachment items from publishing point
- Indexing support (/v2/query/pub-point/list-for-indexing)
- (/v2/query/pub-point/get-for-indexing)

**Resourcing API**

*Resource Types*

- Create Field for Resource type profile template
- Create Field for Resource type request template
- Set field key
- Modify possible values for field
- Delete possible values for field
- Set field importance

*Resources*

- Get Resource
- List Resources
- List assignments by story or pubpoint
- Search Resource
- Create Resource
- Modify Resource
- Delete Resource
- Purge guest

*User API*

- Get Name and role of users

**Categorisation API**

*Genre*

- Get Genre
- List Genres
- Create Genres
- Modify Genres

*Office*

- Get Office
- List Office
- Create Office
- Modify Office

*Organisation (Departments)*

- Get Department
- List Departments
- Create Department
- Modify Department

*Groups*

- Get Groups
- List Groups
- Create Groups
- Modify Groups
- Delete Groups

**Workflow API**

- Get list of Status Types

**Change Events Queues**

Change events provide external updates when information has changed in the system to trigger external actions. This includes all types of metadata changes. They include when it was created and when it was modified.

Change events include who did the modification to manage external actions based on permissions from the user triggering the change.

Change events notify when admin level items have changed (Like the list of departments, folders, etc.) to better managed the sync of workflows.

Change events include the UniqueID and the group IDs of the object that was updated in the notifications.

**Full-Sync Mechanism**

Full-sync mechanism to do a full resync of all Wolftech entities to MediaCentral Search.

## Automation

### Avid Rule Engine Integration

(See MediaCentral documentation for more info)

- Wolftech News is the next product line that is connected now to the Rules Engine
- Wolftech News sends change events about any changes on stories, pitches, or publishing outputs
- Rules Editor allows to define event-based rules for Wolftech News entities so that different "actions" can be automated and frees up the user from these time-consuming steps
- CTMS actions have been extended for Wolftech News entities
- A new Action Engine Wolftech News provides Wolftech News specific actions
- A new Action Engine Publisher automates publishing to social media via Publisher

**Automate**

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

### Qibb

You can now leverage the Qibb platform for low code to no code integrations with hundreds of platforms allowing you to quickly expand all of your workflow automations via them. Examples include AI, Teams, Slack as well as most media software out there.
