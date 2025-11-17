---
product: MediaCentral Production Management
module: Production Management
version: 2023.7.2
patch_range: 2023.7.x
release_type: Patch Release
release_date: 2023-07-15
source_docs:
  - name: User Provided Source Text (2023.7.2)
    type: pasted
    location: chat
---

# MediaCentral Production Management 2023.7.2 – New Features

All items below are reproduced exactly as written in the source text.

---

## New Video Formats Supported for Transcode Profile Creation

The following video formats are now being supported for Transcode profile creation:

AVC Long GOP 6 720p 50  
AVC Long GOP 25 1080p 24  
AVC Long GOP 50 1080p 24  
AVC Long GOP 25 1080p 25  
AVC Long GOP 50 1080p 25  
AVC Long GOP 25 1080p 29.97  
AVC Long GOP 50 1080p 29.97  
AVC Long GOP 12 1080p 50  
AVC Long GOP 25 1080p 50  
AVC Long GOP 50 1080p 50  
AVC Long GOP 25 1080p 59.94  
AVC Long GOP 50 1080p 59.94

---
### ** Transfer Engine - Ability to STP from Media Composer via Transfer Engine with Audio Set as AES **
Previously, when exporting OP-1a with MediaCentral Transfer, the type of the audio essence descriptor was not configurable. This caused issues with some external QA systems that would not accept WAV or Generic descriptors.

To help these customers, we have added a setting at the bottom of the TMServer.ini file in Transfer that allows users to select AES descriptors.

[Audio] 
ForceAES3Descriptor=0 

When set to 1, the essence descriptors for the audio tracks in the OP-1a file will be forced to AES whenever possible. There are no other changes to the structure of the file or the metadata it contains
<img width="468" height="201" alt="image" src="https://github.com/user-attachments/assets/4b7a2e1e-ef4a-4ca1-8c2a-19c24de6c4f8" />
