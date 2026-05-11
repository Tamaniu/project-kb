---
product: mediacentral-newsroom-management-wsapi
product-area: newsroom-management
version: "2024.10.5"
release-date: 01/10/2024
doc-type: readme
source: pdf
confidentiality: public
date-added: 24/04/2026
status: current
---

Contents Avid MediaCentral | Newsroom Management Web Services API Version 2024.10.5 ReadMe Avid recommends that you read all of the information in this ReadMe thoroughly before installing or using the software described in this document.
> **Note:** The content herein applies to the aforementioned version, and contains the latest information that
might not have been available when product guides were published. However, for previous versions, users should reference older ReadMe documentation for additional information related to those earlier releases.
See the following Avid Knowledge Base link for the most up-to-date Avid MediaCentral Newsroom Management documentation (all releases):
https://kb.avid.com/articles/en_US/user_guide/MediaCentral-Newsroom-Management Revision History Date Revised Changes Made November 2025 Added compatibility with Windows Server 2025 for version 2024.10.5 (2.3) release October 2024 Initial publication: Fixed in Version 2024.10 (2.2) section Contents Compatibility Notes and Issues Compatibility Notes and Issues This section contains compatibility information. Specific versions are mentioned when pertinent.
Operating Systems This Web Services API (WSAPI) is qualified and supported for use with Windows Server 2025 (or Windows Server 2022) with Tomcat 10.0 and Java version 17.
Upgrading WSAPI for Version 2024.10.3 Before upgrading WSAPI, you need to remove previous versions & then deploy the new WSAPI. To do this:
1. Open a browser and navigate to: https://<servername>:8443/manager/html
where <servername> is the Tomcat Server.
2. Find the WSAPI application— /inewswebservice and select Undeploy.
3. In the WAR file to deploy section, select Choose File and locate the new inewswebservice.war file.
4. Select Deploy.
> **Note:** The updated services should be available at: https://<servername>:8443/inewswebservice/services
Fixed in Version 2024.10.3 The following issues have been resolved in this version of WSAPI:
Bug Number: IN-180307. The WSAPI would convert empty Boolean fields to the value "false" when storing them to the database. This caused the evaluation of Affects Ready fields to deliver wrong results and the Ready fields to be checked even though they shouldn't.
Fixed in Version 2024.10 The following issues have been resolved in version 2024.10 of the Newsroom Management Web Services API.
Bug Number: IN-179806. Previously, upon deployment of inewsclientwebservice.war, RegisterNotificationService messages did not appear in the Tomcat log as expected.
Bug Number: IN-180115. After upgrading to 2023.7.1, users experienced an issue where the Event Status field color of the Mosart device, connecting via WSAPI, did not work.
New Features in 2024.10 release1 There were no major new features implemented in this of the Newsroom Management Web Services API.
1 For information on releases prior to 2024.10, please see the documentation for those earlier versions.
Technical Support Information Technical Support Information Most products feature a number of coverage options. Avid Assurance service offerings are designed to facilitate your use of Avid solutions. Service options include extended telephone coverage, automatic software maintenance, extended hardware warranty, and preferred pricing on replacement parts.
Offerings and options may vary by product and are not available for all products.
For more information regarding Avid service offerings, visit www.avid.com/support or call Avid Sales at 800-949-AVID (800-949-2843).
Program availability and details might vary depending on geographic location and are subject to change without notice. Contact your local Avid office or your local Avid Reseller for complete program information and pricing. However, if you need help locating an Avid office or Avid Reseller near you, please visit www.avid.com or call in North America 800-949-AVID (800-949-2843). International users call 978-275- 2480.
Accessing Online Support Avid Online Support is available 24 hours per day, 7 days per week. Search the Knowledge Base to find answers, to view error messages, to access troubleshooting tips, to download updates, and to read/join online message-board discussions.
To access Avid Online Support:
- Go to www.support.avid.com.
> **Note:** Supplemental documentation for this release, if available, is provided on the Knowledge Base. For
the latest up-to-date information, browse the Knowledge Base at Avid Online Support.
Technical Support Information