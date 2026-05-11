---
product: pro-tools
product-area: editing
version: "2022.12"
release-date: 01/12/2022
doc-type: new-features
source: pdf
confidentiality: public
date-added: 11/05/2026
status: current
---

What’s New in Pro Tools version 2022.12 © 2022 Avid Technology, Inc., (“Avid”), all rights reserved. This guide may not be duplicated in whole or in part without the written consent of Avid.
For a current and complete list of Avid trademarks visit: www.avid.com/legal/trademarks-and-other-notices This product may be protected by one or more U.S. and non-U.S. patents. Details are available at www.avid.com/patents.
Product features, specifications, system requirements, and availability are subject to change without notice.
Bonjour, the Bonjour logo, and the Bonjour symbol are trademarks of Apple Computer, Inc.
Thunderbolt and the Thunderbolt logo are trademarks of Intel Corporation in the U.S. and/or other countries.
Confidential unpublished works. Copyright 2022 Dolby Laboratories. All rights reserved.
Dolby, Dolby Atmos, and the double-D symbol are registered trademarks of Dolby Laboratories Licensing Corporation.
Guide Part Number 9329-66439-00 REV A 12/22 Contents EUCON Status What’s New in Pro Tools 2022.12 iii What’s New in Pro Tools 2022.12 New Features and Enhancements Tools® Pro software version 2022.12 provides the following new features and enhancements:
Miscellaneous Features and Improved Mac Support • EUCON Status Control in the Edit Window toolbar • Improved support for markers in sessions exported from Media Composer • Public Beta for running natively on Apple M1 and M2 Silicon processors • Support for macOS 13.0.1 (“Ventura”) System Requirements and Compatibility Information Avid can only assure compatibility and provide support for hardware and software it has tested and approved.
For complete system requirements and a list of qualified computers, operating systems, hard drives, and third-party devices, visit:
www.avid.com/compatibility Conventions Used in This Guide Pro Tools documentation uses the following conventions to indicate menu choices, keyboard commands, and mouse commands:
:
Convention Action File > Save Choose Save from the File menu Control+N Hold down the Control key and press the N key Control-click Hold down the Control key and click the mouse button Right-click Click with the right mouse button The names of Commands, Options, and Settings that appear on-screen are in a different font.
The following symbols are used to highlight important information:
User Tips are helpful hints for getting the most from your Pro Tools system.
Important Notices include information that could affect your Pro Tools project data or the performance of your Pro Tools system.
Shortcuts show you useful keyboard or mouse shortcuts.
Cross References point to related sections in this guide and other Avid documentation.
How to Use this PDF Guide This PDF provides the following useful features:
• The Bookmarks on the left serve as a continuously visible table of contents. Click on a subject heading to jump to that page.
• Click a + symbol to expand that heading to show subheadings. Click the – symbol to collapse a subheading.
• The Table of Contents provides active links to their pages. Select the hand cursor, allow it to hover over the heading until it turns into a finger. Then click to locate to that subject and page.
• All cross references in blue are active links. Click to follow the reference.
• Select Find from the Edit menu to search for a subject.
• When viewing this PDF on an iPad, it is recommended that you open the file using iBooks to take advantage of active links within the document. When viewing the PDF in Safari, touch the screen, then touch Open in “iBooks”.
Resources The Avid website (www.avid.com) is your best online source for information to help you get the most out of your Avid system.
Account Activation and Product Registration Activate your product to access downloads in your Avid account (or quickly create an account if you do not have one). Register your purchase online, download software, updates, documentation, and other resources.
www.avid.com/account Support and Downloads Contact Avid Customer Success (technical support), download software updates and the latest online manuals, browse the Compatibil- ity documents for system requirements, search the online Knowledge Base or join the worldwide Avid user community on the User Con- ference.
www.avid.com/learn-and-support Training and Education Study on your own using courses available online, find out how you can learn in a classroom setting at an Avid-certified training center, or view video tutorials and webinars.
www.avid.com/learning Videos and Tutorials Visit the Avid YouTube channel to find playlists and videos that show how to use and learn Pro Tools.
Avid YouTube Channel (all playlists and videos) Pro Tools Quick Tips (playlist for the Pro Tools Quick Reference Guide, available from the Dashboard) Products and Developers Learn about Avid products, download demo software, or learn about our Development Partners and their plug-ins, applications, and hardware.
www.avid.com/products Pro Tools 2022.12 Features and Improvements EUCON Status Control Pro Tools provides EUCON Status Control that can be shown (or hidden) in the Edit Window toolbar.
To show (or hide) the EUCON Status Control in the Edit Window toolbar:
In the Edit Window Toolbar menu, enable (or disable) EUCON.
 EUCON Status Control EUCON Toggle The EUCON button lets you toggle EUCON control on and off for Pro Tools.
To enable (or disable) EUCON control:
Click EUCON so that it is lit (or click EUCON so that it is unlit).
 EUCON Status Indicator Status indicator Status Indicator Color Description Disabled Greyed Out EUCON disabled Enabled Light Green EUCON enabled but not connected to EuControl/WSControl Connected Green EUCON enabled and connected to EuControl/WSControl and surface Warning or a minor error Orange (click to clear) Warning or a minor error that does not stop the connection Serious error Flashing Red Serious error (Network packets dropped) (click to stop flashing) Disable and re-enable EUCON to clear the error For more detail about the issue, hover your mouse cursor over the status indicator for a tool tip with more specific information.
For more information, see What’s New in EuControl 2022.12.pdf.
Improved Support for Markers in Sessions Exported from Media Composer Media Composer 2022.12 can export Pro Tools session files with markers that work with all versions of Pro Tools. When opening sessions exported from Media Composer 2022.12:
• Pro Tools 2022.12 places the Media Composer comment field text into the Pro Tools memory location name field. The memory location comments also contain the Media Composer track name and marker color. This results in the same behavior as for mark- ers imported from a Media Composer generated AAF.
• Versions prior to Pro Tools 2022.12 show the Media Composer marker name in the Pro Tools memory location name field—this is a one-to-one mapping of name field, and the Media Composer marker name typically contains the Media Composer username.
Public Beta of Native Apple Silicon Support Pro Tools 2022.12 can run natively on Apple M1 and M2 Silicon processors as a public beta. Running natively on Silicon provides significant performance improvements over running on Rosetta. For more information, visit:
Pro Tools Apple Silicon public online.
beta Pro Tools launches in the qualified “Rosetta” mode by default, so you will need to do the following to run Pro Tools natively in “Silicon” mode.
To set Pro Tools to run natively on Apple Silicon:
1 Locate the Pro Tools application icon, right-click on the icon and choose Get Info.
2 Deselect the Open Using Rosetta option.
3 Launch Pro Tools.
On launch, Pro Tools presents a warning that this is a public beta.
Support for macOS Ventura Pro Tools 2022.12 now supports macOS 13.0.1 (“Ventura”).
Technical Support (USA) Product Information Visit the Online Support Center For company and product information, at www.avid.com/support visit us on the web at www.avid.com