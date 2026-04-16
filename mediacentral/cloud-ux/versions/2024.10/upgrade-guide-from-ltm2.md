---
product: mediacentral-cloud-ux
product-area: newsroom-platform
version: "2024.10"
release-date: 01/10/2024
doc-type: upgrade-guide
source: avid-official
confidentiality: public
date-added: 16/04/2026
status: current
feature-tags: [ltm, upgrade, 2022.3]
---

## MCCUX Upgrade from 2022.3.24 to 2024.10.10 (LTM 3)
As of 30th Sept 2025

We recommend using MC 2024.12.2, as this is the latest version in the current LTM stream. Please avoid installing previous versions as they may cause issues. 
If the customer is editing with AVC-Intra, please contact Editor L2 immediately as there are some known issues with AVC-Intra100 workflows and MC 2024.12.x they will be fixed shortly, but we aren't there yet.

For more details, visit: 
System Requirements: - Minimum RAM: 32GB for simple timelines. - Recommended RAM: 64GB or more for complex timelines.
 
Documentation: Access all documents for Media Composer 2024.12.2 here: 
 
Installation Instructions: - Install Media Central Production Management 2024.10.x for this version of the editing client. Refer to the chart on page 3: 
 
Driver Updates: Ensure NVIDIA/AMD drivers are updated to the latest qualified version. Details and download links: 
 
Security Guidelines: Follow the security guidelines to avoid hangs and slowness. CrowdStrike requires exceptions for optimal performance. More details: 
 
Nexis Client: Install Nexis Client + Server 2025.2.2 or newer (as this version will work much faster in combination of antivirus & security applications)

User Profiles: If upgrading from MC 2018.12.x or older, users must create new profiles in Media Composer: 
 
Performance Advisory: If the system is slow, be aware that re-indexing of phonetic data will occur when opening projects, impacting performance, especially with large projects. To temporarily disable this feature: 1. Open the Find window. 2. Click the gear icon. 3. Select 'Stop Phonetic Indexing'. 9/29/2025 3:03 PM