# Wolftech News — Release Notes v13 (Cumulative Patches 1–3)
**Source:** Customer release document — distributed to customers, not posted publicly
**Added to KB:** 04/06/2026
**Version scope:** v13 patches only — do not apply to other versions

---

## Patch 3

### Bug fixes and changes

- Fixed an issue where some alerts sent from mobile was causing error on opening
- Improved sorting for booking view by adding an order for the ones start with same start time
- Fixed an issue where moving a publishing point from fixed start time column to variable start time column was causing error
- Fixed an issue where it was not possible to see the name of journalist due to doubled story name
- Made it possible to select location for booking within publishing point
- Improved formatting of email for mention notification
- Fixed an issue where notification for mention was not working when a mention group contained more than 50 users
- Fixed an issue where event date defaulted to past date when story had a past date
- Fixed an issue where inactive publishing points were showing up
- Fixed an issue in activity log where navigating back to a deleted chat message was not working
- Fixed an issue with uploading audio file in publishing point template field
- Improved formatting of follow story email
- Fixed an issue where top bar menu would still collapse to drop-down when screen resolution is 1920 * 1080
- Fixed an issue with pin icon in feed where the icon would partially become hidden due to long title of the feed
- Improved JAWS to read story title first in Plan View
- Fixed notification so that users get only one email/browser notification when mention on a followed content
- Brought back the @ character for a mention
- Made it possible to pull employee id via OKTA
- Fixed an issue where the owner of background items was altered with story owner when they were initially added in an event and then later created a story
- Fixed an issue where deleting a background information item brings a blue in-between button but clicking it does not do anything
- Fixed an issue where Background information item was sometimes getting added in wrong position
- Fixed an issue where Media storage was empty when data was expected to appear

---

## Patch 2

### Bug fixes and changes

- Fixed an issue in old plan view where during a copy operation of publishing point with matching templates, copy of the template was not working
- Fixed an issue where Editorial item's status was not accurately showing in the email notification for any change in status

---

## Patch 1

### Bug fixes and changes

- Added a group indicator icon to request guidance types when alert setting for guidance is set for all resources of that type
- Fixed an issue where platform alert was partially covering the sticky text editor
- Fixed an issue where copying a publishing point with time in plan view was not updating the time correctly
- Fixed an issue with distribution point date during creation where today's date in story was ignored where there was a future date as well
- Fixed an issue where SHIFT+ENTER was adding extra line space in the text editor
- Fixed an issue where pressing ESC twice was not closing the opened story anymore
- Fixed an issue where platform alert was blocking background information text editor's buttons in edit mode
- Made it possible to log activity for publishing point description
- Fixed an issue where unshare department when shared with own department was not working
- Improved how follow push notification is previewed on mobile
- Added the possibility to see all plan and feed collections under admin organisation
- Fixed an issue that caused lag in typing for several users
- Fixed an issue where cache invalidation for errors did not work properly
- Improved background information status activity log by adding some text from the item
- Fixed an issue where multi-date calendar slides out of view
- Fixed an issue where popup for text color editor was hiding beyond the sticky panel
- Fixed an issue where live feeds were not always automatically expired
- Fixed an issue where views marked as favourite was not possible to delete from collection
- Fixed an issue where a private story shared with a public department was not working to make it visible in the plan view
- Fixed usability issue with publishing point plus icon in high contrast mode
- Made a change so that used template in a publishing point shows in the plan view
- Fixed an issue where tracked vehicle was showing jumping back and forth
- Fixed an issue where printing of all additional fields in publishing point was not working
- Improved message when a view residing in a single collection can't be removed
- Fixed an issue where signalR used to stop working when browser was not active
- Made a change so that delete board attachment does not post an activity log
- Fixed an issue where deleting empty editorial text was posting an activity log
- Fixed an issue where printing of some fields in story additional information was not working
- Fixed an issue where it was not possible to select text for copying without going into edit mode in editorial textbox
