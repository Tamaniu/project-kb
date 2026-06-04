# WALL MONITOR
**Source:** Wolftech OFFICIAL_Documentation — 01_User Experience, Navigation and Accessibility/WALL MONITOR
**Revision:** R14
**Added to KB:** 04/06/2026
**Version scope:** R14 only — do not apply to other revisions

---

## WALL MONITOR

The Wall monitor Application is a web application aimed at displaying plan views, feed views and search views to the user. The application's main use is to display content in receptions and office landscapes.
Wall monitor benefits from separate authentication, restricting the user from accessing data that they would otherwise do in the main news application, contributing to enhanced security. Additionally, Wall monitor is built for a single purpose, to display views and run seamlessly on all devices, Views are displayed in a carousel, enabling better performance since views that are not displayed are being deactivated.

Wall Monitor Authentication:
The Wall Monitor application can be accessed here: Wolftech for users that has a backend version >= 14. Before logging in, the users need to define the server URL. This is can for example be https://news3.wolftech.no.
Then the authentication process begins, and the users are prompted to either scan a QR-code (Great for authenticating with a mobile if setting up a display) or open a link to authenticate via identity server. (If the device is plugged to a PC and it is easy to type on it

Wall Monitor Setup:
To display collections and views in the wall monitor application, these collections and views need to be set up in the main News application. Only Admin users can do this. Admin users need to navigate to Admin → External Displays.

First the user needs to create a collection, “Add collection”:

Then the user can add pages to the collection, “Add page”:
The new page is initially empty, but can select from either plan, feed, or search view.

Search view is a shared search:

The plan, feed, and search (saved search) views are already existing collections and pages in the main News application:

Plan/Feeds collection and view page selection

Shared search selection
The user can set multiple view pages, and the pages do not have to be of the same type. Additionally, the user can set “Show each page for” in seconds. This value can be minimum 10 seconds. This makes it so that each page is displayed for a set amount of time, before moving on to the next page.
The views are updated based on the seconds defined here, meaning if there is only one page and the seconds are set 60, it will update with the newest information every 60 seconds. If there are multiple pages the application will slide to a new page every 60 seconds and show the page with the newest data.
Once an External Display collection is set up, it can be selected from the Wall Monitor application in the top right menu, then “Select collection.” If external displays have been updated while the wall monitor application is running, the wall monitor web page needs to be refreshed
