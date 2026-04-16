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
feature-tags: [wolftech, newsroom-management, wall-monitor]
---

# Wall Monitor

## Overview

The Wall Monitor Application is a web application aimed at displaying plan views, feed views and search views to the user. The application's main use is to display content in receptions and office landscapes.

Wall Monitor benefits from separate authentication, restricting the user from accessing data that they would otherwise do in the main news application, contributing to enhanced security. Additionally, Wall Monitor is built for a single purpose, to display views and run seamlessly on all devices.

Views are displayed in a carousel, enabling better performance since views that are not displayed are being deactivated.

The fact that the Wolftech Go application is using the Ionic Framework in order to deliver solutions cross platform, means that the Go app can run either on iOS, Android or as a web application. The wall monitor application benefits from this, since it can use the mobile codebase, but run as a web application.

## Wall Monitor Authentication

The Wall Monitor application can be accessed by users that have a backend version >= 14. Before logging in, the users need to define the server URL. This can for example be `https://news3.wolftech.no`.

Then the authentication process begins, and the users are prompted to either:
- Scan a QR-code (Great for authenticating with a mobile if setting up a display)
- Open a link to authenticate via identity server (If the device is plugged to a PC and it is easy to type on it)

## Wall Monitor Setup

To display collections and views in the wall monitor application, these collections and views need to be set up in the main News application. Only Admin users can do this.

Admin users need to navigate to Admin → External Displays.

First the user needs to create a collection by clicking "Add collection".

Then the user can add pages to the collection by clicking "Add page". The new page is initially empty, but you can select from either plan, feed, or search view.