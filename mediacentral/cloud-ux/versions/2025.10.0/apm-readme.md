---
product: mediacentral-cloud-ux
product-area: newsroom-platform
version: "2025.10.0"
release-date: 01/10/2025
doc-type: apm-readme
source: pdf
confidentiality: public
date-added: 16/04/2026
status: current
---

Avid Production Management Version 2025.10 ReadMe Avid recommends that you read all of the information in this ReadMe thoroughly before installing or using the software described in this document.
See the following Avid Knowledge Base link for the most up-to-date Avid Production Management documentation (all releases):
https://kb.avid.com/pkb/articles/en_US/user_guide/MediaCentral-CloudUX-Documentation Revision History Date Revised Changes Made December 19, 2025 Clarified information regarding "Avid Production Management Component Installers" on page 11.
Added "Interplay Web Services for Avid Production Management" on page 11.
December 8, 2025 Initial v2025.10 publication.
Contents Limitations for Avid Production Management v2025.10 12 Overview Overview Welcome to Avid Production Management, the new and Avid Content Core-ready generation of Avid's Production Management solution. Avid Production Management is designed to be a drop-in replacement for MediaCentral | Production Management to preserve nearly all of its proven and trusted features. With its completely redeveloped, fully virtualized backend, Avid Production Management comes with state-of- the art feature sets around the areas of deployment, management, security, and maintainability. This means that most functionality and proven workflow concepts are available through Avid Production Management without changes to either functionality or user experience despite its all-new, modern foundation.
The following diagram shows an Avid Production Management deployment:
To improve openness and scalability, Avid Production Management replaces the proprietary database used with older MediaCentral | Production Management systems with PostgreSQL - an industry standard relational database management system (RDBMS). Leveraging the MediaCentral | Cloud UX infrastructure, Avid has not only replaced Microsoft Windows with Linux as the operating system for core aspects of the Avid Production Management system, but also moved key functionality to that system. For example, configuration, authentication, and other infrastructure functions such as search and user management have all been migrated to MediaCentral Cloud UX. These changes not only streamline functionality, but also improve system security.
Avid Production Management is built to natively integrate with the modern Connectivity Toolkit Media Services (CTMS). This Application Programming Interface (API) offers broadly similar functionality as the legacy Interplay Web Services (IPWS). The differences are generally limited to areas where functionality has been migrated to the MediaCentral platform, and these functions are now accessible through the new APIs.
In summary, Avid Production Management, from a user perspective, very much behaves like a drop-in replacement for MediaCentral | Production Management. The technology stack has been upgraded and is now more robust and scalable than ever, ready for the future ahead.
For more information, see "Avid Production Management Service Architecture" on the next page.
Avid Production Management Service Architecture Avid Production Management Service Architecture MediaCentral | Production Management functionality is provided by four major building blocks:
The ‘production engine’ database.
- For more information, see "Avid Production Management Engine" below.
The Media Indexer for connecting the database to the media inventory on shared storage.
- For more information, see "Avid Media Indexer (Avid MI)" below.
Production Media Services, a collection of services that provide media conversion and transport
- operations in the background.
For more information, see "Production Services" below.
- The client modules (Access) running on every client system.
For more information, see "Avid Production Management Client Modules" below.
The following topics describe how Avid Production Management improves on all four of these building blocks, providing a state-of-the-art solution.
Avid Production Management Engine Avid Production Management comes with a completely new core engine that lifts the Production Management solution to a current technology stack that allows integration with Avid's current MediaCentral family of products, while also providing the building blocks for a seamless integration with Avid Content Core.
Like MediaCentral Cloud UX, the Avid Production Management engine is designed to be hosted in a Kubernetes cluster, using Ubuntu Linux as the operating system.
Avid Production Management is hosted on premises and uses a PostgreSQL database for managing its data. This simplifies deployment and improves scalability and robustness. Nearly all MediaCentral Production Management features remain available, along with significant new features added.
Avid Media Indexer (Avid MI) In alignment with Avid Production Management, Avid Media Indexer has been redeveloped to be fully virtualized. The Avid MI that complements the Avid Production Management database engine has been redeveloped from the ground up and now runs fully containerized under the Linux operating system, in the same cluster as MediaCentral Cloud UX. The previous enterprise bus-based communication has been replaced by a secure and WAN-enabled HTTPS protocol, and the Avid MI database has been externalized in order to support hosted configurations.
Production Services Avid Production Management supports background services such as Avid Production Management | Production Media Services (PMS). PMS components such as Media Central Distribution Service, Production Media Services Broker, Transcode, STP Encode, Transfer, and Move services are enabled in Avid Production Management. Another set of services comprising the Archive and Restore provider enable customers to include their MediaCentral | Production Management Archive in their deployments.
Avid Production Management Client Modules Similar to MediaCentral | Production Management, access to the Avid Production Management database backend is provided through a set of client modules that must be installed on all workstations that participate in an Avid Production Management workgroup. All the client components are contained in the ‘Access’ software installer that can be easily installed in just a few simple steps.
Avid Production Management Service Architecture The client modules have been upgraded to be fully backward compatible. This allows the same client installation to be used to connect to either a MediaCentral | Production Management or an Avid Production Management backend. The client simplifies the user interface by automatically hiding or disabling any features that are not applicable to your connected platform.
Avid Production Management Workflows Avid Production Management Workflows Avid Production Management is a new implementation of the MediaCentral | Production Management product line that combines the look and feel of MediaCentral Production Management with an enhanced backend that has been completely rewritten to leverage the flexibility and reliability of a Kubernetes- managed containerized environment.
Differences exist where they are mandated by new infrastructure, backend technology, security improvements, or by the removal of outdated components. This primarily affects installation, how users connect and authenticate to the system. Additionally, certain functionality such as Search, and Media or User Management have been migrated from the Production Management client to MediaCentral Cloud UX. Changes in these areas are unavoidable, and Avid Production Management aims to provide a superior replacement to functionality that is no longer available.
The following table lists currently available and supported Avid Production Management operations and workflows which operate the same way as in MediaCentral Production Management. The differences are noted below.
Workflow Description Database Import NEW: Support for importing MediaCentral Production Management databases to Avid Production Management.
File Ingest Workflow PARITY: Ingesting media from Avid Media Composer and MediaCentral | Ingest is supported.
ADJUSTED: Avid Production Management supports AMA workflows.
Access to AMA resources from the cluster requires special consideration.
> **Note:** Third-party storage is currently not supported in these workflows.
Search ADJUSTED: The Search core functionality has migrated from the Production Management engine to MediaCentral Search. For backward compatibility, Avid Production Management provides an enhanced Simple Search feature. Engine search clients like Production Management Access and the Media Composer Production Management window have been adjusted accordingly.
> **Note:** Access's Advanced Search option has been removed and replaced
with the enhanced MediaCentral Cloud UX search capabilities.
Playback PARITY: Support for playback of master clips and composition in Media Composer and in the MediaCentral | Cloud UX player.
Media Composer Integration PARITY: Avid Production Management assets are supported for editing in Media Composer, including AMA and UME linking workflows.
Asset(s) Transfer to NEW: Support for selective export of assets from a MediaCentral Avid Production Management Production Management or Avid Production Management system, and import to an Avid Production Management system.
Large Database Support and NEW: Avid Production Management introduces deployment profiles that Deployment Scaling Options allow you to scale the system you deploy.
Avid Production Management can easily support the largest existing Production Management databases and beyond if suitably provisioned.
The new engine offers increased performance and reduced resource Avid Production Management Workflows Workflow Description consumption.
For more information, see "Installing the Production Management Core" in the Avid MediaCentral | Cloud UX Installation Guide.
Location-Based Search PARITY: Location-based search with Avid Production Management assets is supported in MediaCentral Cloud UX.
For more information, see "Using the Search App" in the Avid MediaCentral | Cloud UX User's Guide.
Avid Production Management ADJUSTED: The following Production Media Services are supported in Avid Production Media Services (PMS) Production Management:
Support Infrastructure (MediaCentral Distribution Service, Production
- Media Services Broker)
- Send-to-playback (Transcode, STPEncode, Transfer)
- Archive and Restore from MediaCentral Production Management
Archive (Archive, Restore providers) via Access and Cloud UX
- Media Migration (Move provider)
> **Note:** Service login behaviors have been adjusted to co-exist with the new
platform's tighter security model. Additional considerations may be required when setting up workflows.
> **Note:** Requires Avid Production Management Production Media Services
v2025.10 or later.
Connectivity Toolkit Media Service PARITY: Avid Production Management supports the CTMS API.
(CTMS) functionality Avid Production Management supports all endpoints that are currently available in CTMS.
Avid Production Management NEW: The following have been added to the Avid Production Management Access Improvements Access client:
Asset coloring
- Improved certificate handling
- User Group Assignments Transfer NEW: It is now possible to export user role assignments from a
from MediaCentral | Production MediaCentral Production Management system on a per-group basis. The Management same exported group assignment information can now also be imported into an Avid Production Management system.
The JSON-based exchange format is documented in order for customers to be able to automate the process by creating their own JSON files.
For more information, see "Migrating User and Database Role Assignments" in the Avid MediaCentral | Cloud UX Installation Guide.
Backup and Restore of PARITY: Support for backing up and restoring Avid Production Avid Production Management Management databases.
Databases For more information, see "Backing Up and Restoring a Production Management Database" in the Avid MediaCentral | Cloud UX Installation Avid Production Management Workflows Workflow Description Guide.
MediaCentral Cloud UX Player PARITY: MediaCentral Cloud UX player support and timeline editing with Integration reliable support for high quality proxies and other Format Independent (FI) media.
Adobe Premiere Pro Integration PARITY: Allows seamless collaboration with Adobe Premiere Pro for production workflows via Panel for 3rd Party Creative Tools.
Media Management Workflows NEW: Avid Production Management offers a MediaCentral Cloud UX within MediaCentral Cloud UX native media management workflow that includes search, deletion, media status, and reservation management, enabling an end-to-end production management workflow within your browser.
This also comes with a new MediaCentral Cloud UX-integrated Administrator app for Avid Production Management.
For more information, see "Working with Production Management Assets" in the Avid MediaCentral | Cloud UX User's Guide and "Using the Production Management Administrator App" in the Avid MediaCentral | Cloud UX Installation Guide.
Restricted Access Folders and ADJUSTED: Replacement for MediaCentral | Production Management's Sequence Backup Special Access Folders and Sequence Versioning under Avid Production Management Access and Administrator client.
Dynamic Range Property Support NEW: Ability to search and view Dynamic Range information of assets in the Avid Production Management database is now supported.
Video Server Integration PARITY: Avid Production Management supports baseband ingest and playout in Avid | StreamIO.
Asset Management and PARITY: MediaCentral Production Archive and MediaCentral | Asset Production Management Archive Management (MAM) are integrated with Avid Production Management, and Restore Integration making AM and PM Archive accessible directly from the MediaCentral CloudUX user interface.
> **Note:** Requires MediaCentral | Asset Management 2024.10.0.10 hotfix or
later.
Newsroom Management PARITY: MediaCentral | Newsroom Management (NM) is integrated with Integration Avid Production Management, providing full range newsroom workflows.
> **Note:** Requires MediaCentral | Newsroom Management v2024.10.x.
Avid Transcribe PARITY: Support for transcription of Avid Production Management assets Speech-to-Text (STT) Support in MediaCentral | Cloud UX.
MediaCentral Rules Engine NEW: Automation of Avid Production Management workflows is available Support through the MediaCentral Rules Engine. Avid Production Management provides a new event service that works seamlessly with the platform's Action Engine to enable advanced automation workflows.
Publisher Integration PARITY: Avid Production Management workflows are supported with the Publisher app within MediaCentral Cloud UX.
Licensing Workflow Considerations The following workflows and products are not supported with this release of Avid Production Management:
- Multi-Site Configurations
Avid does not support linking to a remote Avid Production Management system in this release.
- Enterprise Editing (Editing Mixed Sequences)
- Open Media Framework (OMF) file format support
- MediaCentral Sync
- Avid Maestro
- MediaCentral Capture
- MediaCentral Phonetic Index
- Avid Production Management Production Media Services
  - Copy
  - Delivery
Licensing Avid Production Management requires a dedicated license to run within the MediaCentral environment.
Unlike MediaCentral Production Management (whose license is of type on/off), the Avid Production Management license is associated with a quota. For this release of Production Management, your system should be licensed for a quota of 1. If you receive a license with a quota that is greater than 1, the increased count is ignored.
For more information about licenses in MediaCentral | Cloud UX, please see the "Using the License App" chapter in the MediaCentral | Cloud UX Installation Guide.
Upgrading to Avid Production Management Upgrading to Avid Production Management (APM) is a migration of the "classic", bare-metal MediaCentral Production Management (MC|PM) components into a Kubernetes container hosting environment that is shared with MediaCentral Cloud UX. This applies to both the Production Management engine and the Media Indexer. As part of the upgrade, these are transformed into containers hosted on Kubernetes.
Similar to the MediaCentral Production Management requirements, running the APM components inside the MediaCentral Cloud UX Kubernetes cluster might require resources beyond those allocated for MediaCentral Cloud UX – which is one reason why you should plan your migration carefully. In addition, and as part of the migration to a modern virtualization environment, APM updates the Production Management data and security architecture. Because this is a highly desired improvement, it also introduces changes that you will need to plan for.
When migrating to Avid Production Management, you must consider the following primary factors:
- Security architecture: Avid Production Management (APM) focuses on session-based
authentication. Any non-service user connecting to APM is expected to hold an authenticated MediaCentral Cloud UX session.
Upgrading to Avid Production Management Infrastructure changes: Some functionality that was part of MediaCentral Production Management
- (also formerly known as Interplay) is now provided by the MediaCentral platform. Apart from the
authentication subsystem mentioned above, this mainly affects the areas of Search and user authentication which have the following fundamental differences:
  - Search is now a platform function, using the MediaCentral Search app. In the APM engine,
the previous comprehensive search function has been replaced with a simplified version that provides a fallback for simple use cases. You can think of this as an enhanced version of the previous simple search.
  - Avid Production Management eliminates the concept of the Central Configuration Server
(CCS). This directly affects deployments that use multiple on-prem MediaCentral Production Management systems.
  - Media Indexer no longer provides the Network of Media Indexers (NOMI) configuration.
Redundancy is entrusted to Kubernetes container management and works differently as the Media Indexer has been split into function-specific, independently scalable micro services.
Many aspects of Avid Production Management are now scalable. When planning the migration you must have usage data regarding user and asset count available.
The following sections provide a step-by-step checklist and migration guide that cover these aspects in more detail. For more information, see the following topics:
- "Upgrading the Production Management Engine" below
- "Upgrading Media Indexer Servers" on the next page
- "Updating Production Media Services for Avid Production Management " on the next page
- "Avid Production Management Component Installers" on page 11
- "Interplay Web Services for Avid Production Management" on page 11
- "Avid Production Management Best Practices" on page 11
Upgrading the Production Management Engine The core component of Avid Production Management (APM) is its new Production Management engine which is now running as a set of containers in Kubernetes. Functionality is comprised of two major components: the APM engine itself and its associated PostgreSQL database. APM comes with its own, dedicated and highly optimized PostgreSQL database system.
The following factors must be considered when migrating to Avid Production Management:
As part of migrating to Avid Production Management, you must deploy the APM feature pack in the
- desired scale. When planning an APM deployment, start by assessing the size of your future
system. For production purposes, APM can deployed in different sizes.
- You also need to determine whether you want to deploy APM with database redundancy. Deploying
a redundant APM database doubles the resource requirements for the APM core. Deploying the APM feature pack also deploys the Media Indexer.
For more information, see "Configuring an Avid Production Management Node" in the Avid MediaCentral | Cloud UX Hardware Guide and "Configuring Avid Production Management" in the MediaCentral | Cloud UX Installation Guide.
Once Avid Production Management has been fully deployed and configured, you can decommission your previous MediaCentral Production Management cluster. If desired, relatively modern hardware can be decommissioned for reuse in APM.
Upgrading to Avid Production Management After deploying Avid Production Management, you can migrate the following from MediaCentral Production Management to Avid Production Management:
- Export your MediaCentral Production Management database and import it to Avid Production
Management. For more information, see the topic "Migrating a Database to Production Management" in the MediaCentral | Cloud UX Installation Guide.
Export, review, refine and import user roles. For more information, see the topic "Migrating User and
- Database Role Assignments" in the MediaCentral | Cloud UX Installation Guide.
Upgrading Media Indexer Servers Similar to migrating the MediaCentral Production Management database to Avid Production Management, in APM, the Media Indexer (MI) is replaced by the Avid Media Indexer hosted on the MediaCentral platform. This means that from a Media Indexer perspective, moving to APM is not an upgrade but a migration to a new environment.
Since the Media Indexer for APM uses new technology, database information is not compatible, and the migration process requires you to complete a full reindex of the monitored storage. Depending on the number of files (data sources) the Media Indexer is monitoring, the reindex can take several hours. For information on estimating how long a reindex could take, see the section “Estimating the Indexing Time” of the Avid MediaCentral | Production Management Best Practices Guide. Note that indexing times are expected to vary from the Media Indexer in MCPM, and indexing performance can be impacted by the profile that you select during the deployment process. For more information on these profiles, see "Running the APM Core Configuration Script" in the Avid MediaCentral | Cloud UX Installation Guide.
With Avid Production Management, Avid NEXIS workspaces are mounted directly to the MediaCentral Cloud UX nodes. It is not possible to export configuration data from a classic system and re-import it to an APM system. The Media Indexer configuration must be recreated on APM. For more information on configuring and monitoring the indexing of Avid NEXIS workspaces, see the “Using the Avid Media Indexer App” chapter in the Avid MediaCentral | Cloud UX Installation Guide.
Updating Production Media Services for Avid Production Management Avid Production Management (APM) ships with a 2025.10 version of Production Media Services (PMS) that has been updated for compatibility with APM. Only this version contains the client libraries that are necessary for connecting to the APM backend.
At this point, Production Media Services v2025.10 are for exclusive use with Avid Production Management, and have not been tested for compatibility with MediaCentral Production Management. Also, installing legacy versions will result in incompatibility between Production Media Services and Avid Production Management.
Before updating to Production Media Services for Avid Production Management on a server, note the following requirements:
Record or screen-shot the Settings in the Interplay Production Services Engine Configuration tool.
- Record or screen-shot your Production Services profiles.
- Avid does not support exporting and importing existing profiles when updating to this release.
Fully uninstall the Production Services Engine software. Also uninstall the SQL server or
- SQL database.
- After uninstalling the Production Services providers (Transcode, STP Encode, etc), you must delete
all service related folders form C:/Program Files/Avid and C:/Program Data/Avid before installing the v2025.10 versions.
Upgrading to Avid Production Management If you have installed v1.8.1 of the Avid Service Framework on any system, you are not required to
- uninstall / reinstall this software as the version is not subject to change in this release.
- Manually uninstall all other MediaCentral Production Management components (applies to all
servers and client workstations).
This includes companion applications such as Avid Application Manager.
> **Note:** For additional information on Avid NEXIS, see the Avid NEXIS documentation on the Avid
Knowledge Base.
Avid Production Management Component Installers With this release of Avid Production Management (APM), installers for APM services are bundled into a single installer for Windows operating systems. Installers for APM client components such as Avid Production Management Access, client-side Media Indexer, and Transfer are bundled into a single installer for each operating system (Windows and macOS).
For Mac systems, Access includes two versions: one for Intel-based Macs and one for Apple silicon Macs.
The Media Indexer and Transfer clients use a single installer that include support for Intel-based Macs natively, and Apple silicon Macs through Rosetta.
Interplay Web Services for Avid Production Management For customers with existing Interplay Web Services (IPWS) integration, this release of Avid Production Management ships with a 2025.10 version of IPWS. It is an updated but largely unmodified version of the legacy IPWS that has been adapted for use with APM. This helps facilitate the transition to the more modern Connectivity Toolkit Media Services (CTMS) API that provides functional equivalence for most asset operations.
Legacy versions of IPWS have not been tested or qualified for use with Avid Production Management. If you intend to use IPWS with APM, you must install IPWS v2025.10. Installing legacy IPWS versions for use with APM will result in inconsistencies with Avid Production Management functionalities and operations.
Avid Production Management Best Practices This section outlines the best practices when working with Avid Production Management. Avid strongly recommends applying the following practices to ensure consistency in media management workflows and avoid potential issues that may arise from outdated configurations or improper client usage.
- When you start using the Avid PM Access or Administrator client, avoid using any earlier version to
interact with the database from that point forward, as legacy clients are not fully compatible and could introduce inconsistent behaviors or unexpected errors.
After importing or creating a new database, make sure to log in using the Avid PM Administrator
- client at least once to fully register the database changes into the system.
- After importing a database or restoring a backup, make sure to restart all open Avid
PM Administrator clients right after the import or restore procedure so that each client refreshes its connection to the database and avoid unexpected behaviors.
Limitations for Avid Production Management v2025.10 Limitations for Avid Production Management v2025.10 This section includes information on known limitations and defects related to this release of Avid Production Management.
For Avid Production Management limitations within MediaCentral Cloud UX, please visit the MediaCentral | Cloud UX ReadMe. For more information, please visit the MediaCentral CloudUX Documentation page in the Avid Knowledge Base.
Avid PM Access Bug Number: PBX-52, PBX-53. When using Avid PM Access to send a job to Production Services, you might see a Username or password is invalid or Unable to Start Job error if you enter user credentials from a MediaCentral Cloud UX user account.
Workaround: After you submit the job request, Access displays a Login to <Production Services Engine> window. When prompted, you must enter the credentials of an internally authenticated user that exists in both the source Avid Production Management system and the participating destination systems (e.g.
Archive Management Engine, Production Services Engine). If necessary, you can create users with Internal Authentication through the Production Administrator client.
Bug Number: PLUS-2263. MediaCentral Cloud UX and Avid PM Access do not display the Dynamic Range information for Production Management AMA assets.
Avid PM Administrator Bug Number: PLUS-2102. Role assignments created on subfolders under a No Access assigned folder are not supported by Avid Production Management. Although the Avid PM Administrator client may allow these role assignments to be set under certain conditions, APM does not recognize or apply them.
Bug Number: PLUS-2214. On the PM Administrator app in MediaCentral CloudUX, you can delete resolutions that are currently available even if the setting Enable used resolutions is activated, but not in Avid PM Administrator client.
Bug Number: PLUS-2222. Deleting a user or a group fails if that user (or anyone in that group) has an existing Restricted Access assignment to a folder.
Workaround: You must remove any Restricted Access assignments to the user first and then proceed with deleting the user or group.
Avid PM Transfer Bug Number: PBX-46. In MediaCentral Cloud UX, performing Send to Playback (STP) operations on a multitrack sequence with effects fails with an Error: “Remote STP process failed: GenericHelper exception occurred: Render not found (in "wait transfer" phase)” message.
Limitations for Avid Production Management v2025.10