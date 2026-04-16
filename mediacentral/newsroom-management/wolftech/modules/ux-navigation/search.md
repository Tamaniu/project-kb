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
feature-tags: [wolftech, search, navigation, user-experience]
---

# Search

## Global Search

The global search function is situated in the top bar for easy access. The initial search results depend on your admin configuration. It can search all types of entries in the system (All) or be configured to search a particular type (Story, as above). Clicking on a result will open the item.

Indexing of requests, stories, publishing points, events and users starts immediately after they are added for faster results.

### Permissions

Any search in the system is bound by the permissions of the user to see the items. If you have access to certain departments you will not see stories outside of it. Or if you have access to certain resources these will apply in the search.

### Advanced Filtering

If you want to access the advanced search experience click on the search category you would like to do from the dropdown menu on the right. This will take you to the advanced search page where you can filter the results further using the filters on the left.

At the top you will be able to select one of the search categories including:

- "All" for searching all element types
- "Companies"
- "Episode" for those clients leveraging the long form module
- "Event"
- "Feed"
- "Guest Requests" for checking guests planning
- "Human Resources" for your own Creator Network including employees and Freelancers
- "Logs"
- "Points of Interest" for your location planning efforts
- "Publishing Points"
- "Requests" across both human and technical resources
- "Story"
- "Teams"
- "Technical" to manage your inventory

Below you will find custom fields defined by the admin to refine your searches. These fields become powerful tags for filtering on the left menu of the advanced search.

If some of these fields are included in a request template these can also be used to search for requests (bookings).

### Date Filtering

You can further refine your search by leveraging the date filters at the top. Either for elements happening today, this week, this month or on a time range. The start date defaults to today but it can also be adjusted to look for a week, starting from another day.

### Search Terms and Operators

The search bar is where you can start typing to find results. It is a powerful tool that can be used together with operators for precise results with comma separated values.

For operators:

- Use "+" to Include all terms: Show results containing all terms separated by the modifier – Example: NBA + Finals
- Use "|" to Combine terms: Show results containing either of the terms separated by the modifier – Example: Football | Soccer
- Use "-" to Exclude terms: Add minus (-) in front of the term you want to leave out from the search – Example: Queen - band
- Use "" quotations to search for an exact phrase Show results containing the exact phrase put into parentheses – Example: "longest bridge in the world"
- Use "*" to Define a prefix Find variations of a word that start with the same letters – Example: +adv will show results for "adventure", "advanced", "advice", etc.
- Use "()" to Combine modifiers in different ways: Use parentheses to override operator precedence. The expression inside the parentheses is executed first – Example: Influenza | flu + avian shows results containing the word influenza. It also shows results containing both flu and avian. (influenza | flu) + avian shows results containing both influenza and avian or both flu and avian.

If you need help simply select the help area in the 3 dot menu.

### Fuzzy Search

Fuzzy Search will provide faster results before you complete typing your search. Simply click on it to activate it.

Note: The fuzzy search will find matches for words that require at most 2 changes to match your search word. In the example "Dead" will find deadly while "de" won't find deadly as it has 4 changes to find it.

### Live Search

Activating the Live Search is particularly useful for Feed Searches where new entries are expected to appear and time is of the essence.

### Feed Filtering

When it comes to feeds you will be able to filter by:

- Type: Newswires, vs RSS, etc
- Source: AP vs Reuters etc
- Category: Entertainment, Sports, etc.
- Importance: Alert Level

When it comes to Date filtering for Feeds they will work backwards. "Day" will list today's items. "Week" and month will display the last week and Month up to the date defined on the right.

Do note that the Feeds Page allows for adding keywords and operators to each column filter you create. This is the recommended way of creating Feed Research Dashboards containing any number of searches across your feed sources.

### List vs Thumbnail View

Overall the Search results can be seen on list vs thumbnail view. The list view will be the one that provides more information across columns and this can be great to know you have the right element.

The thumbnail view on the contrary can be the perfect match for searching across your Creator Network for a visual experience.

### Sorting

The default weighting of your results is on "best match", meaning that if your keyword terms appear repeatedly across the element they will come up in the list. They are not sorted chronologically by design.

The results can later be sorted by some of the columns in the list view when clicking on the column headings, including name, dates, etc. depending on the search category.

### Saved Searches

If you have created a search that you think you may use more than once you can save it either by clicking on the save button under the search filter or on the same search bar.

Saved Searches will go under the My Searches Section where you can organise them in folders. After creation you can edit the name, move them or delete them within your "My saved Searches" section using the 3 dot menu.

### Sharing Searches

Saved Searches can be shared with others too. This is a powerful feature that can streamline onboarding teams as well as collaboration on projects.

To do so click on the 3 dot menu next to your saved search and choose who you would like to share it with. You have options to share it with individual users, department groups or user groups.

Once shared the saved search will display an icon next to it to indicate it has been shared.

If someone else shares a search with you, you will find it in the Shared Searches section from where you can organise them under folders.

If you try to delete a search that you have previously shared it will warn you that deleting it will delete it for others too.

Do note that while everyone can save a search you will need to have the right permission to be able to share searches so please contact your administrator if the option is not available to you.

### Mobile

The global Search is available through the mobile experience. Simply navigate to the hamburger menu on the right and select Search. This can be very powerful on location, not only for finding stories and quickly accessing them but also to find people's profiles to quickly get in touch with them or finding points of interest for your project.

Note – Saved searches are not available on the Wolftech Go app.

## Hunter

### Find in Story

Find in Story allows you to find text matches across large stories displaying the resulting matches in an easy to navigate list on the right side menu.

We have implemented the same global search framework when searching within a story so you can search across title, description, searchable additional information fields as well as through background information items.

Clicking on a match will take you to the place in the story where it found it.

When using this function bare in mind the system caches all story changes every 3 minutes so results won't be instantaneous.

### Finding Media

**Board Search**

The board search bar is easy and extremely useful for large stories with long lists of assets. Use the filters on the top to refine your search by asset types. And because each board item can be linked to a background information segment you can easily see the context for the media in the story.

**Media Storage Search**

If you have a connected production asset management system the Media Storage will automatically display all media associated with your story in your connected system.

If you need to look within your connected system story collection you can leverage the embedded experience with supported systems.

**Hunter Media Search**

When you need to look for media for your story but outside of your story assets you can leverage the Story Hunter (See Hunter for more info) where you have access to search across all of your connected media systems to later add the link the media to your story by drag and drop. The Hunter provides filtering options custom made for your connected system and installation.

Hunter media searches can be done via the API search or the embedded experience by enabling the toggle on the right and login into your system.

### Find Similar Stories

When you create a story we have an automatic search triggered to find similar stories, pitches or events (Note it currently does not work yet with episodes or logs).

This functionality is extremely useful to avoid situations where team members create duplicate stories because they don't know one existed in the first place.

We have implemented the same global search framework when looking for similar stories for consistency, meaning it searches across the same fields (title, description and searchable additional information fields).

We will however not support syntax (operators) in this search as this would be confusing when customers use special characters in the title or description.

Users can choose to only search by title which will reduce the matches and may be helpful to narrow the findings.

When you find a match we display a summary of the story and whether the story has been shared with other departments, via the split colour highlight, directly inside of the find similar stories navigation, once you click on the story you are interested in.

This can be useful to avoid having to share it with certain departments unnecessarily. From there you can choose to copy the story, share it with your department for collaboration or simply open it to begin working with your colleagues.

## Admin

To configure a default global search category go to Admin – Customer Options – Search.

To set up custom fields that can be searched and filter by go to the admin custom fields and you can mark the field as searchable and filterable in the case of single or multi-select fields.

The same is possible when categorising resources in the resource type profile templates.

To manage the permissions of who can share saved searches go to your authorisation and create a role with the correct permissions.

To manage shared searches that may need removing after a colleague has left the organisation admins can go to the admin – Saved Searches Menu. Here you will be able to unshare those searches so that they are no longer visible to current users.
