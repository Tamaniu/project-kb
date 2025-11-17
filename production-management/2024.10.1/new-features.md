---
product: MediaCentral Production Management
module: Production Management
version: 2024.10.1
patch_range: 2024.10.x
release_type: Patch Release
release_date: 2024-10-15
source_docs:
  - name: User Provided Source Text (2024.10.1)
    type: pasted
    location: chat
---

# MediaCentral Production Management 2024.10.1 – New Features

All items below are reproduced exactly as written in the source text.

---

## Transfer Manager Support for Mac ARM (Apple silicon) Systems

This release adds support for Transfer functionality in Mac ARM (Apple silicon) clients. Transfer operations such as Send to Playback and Send to Workgroup in Media Composer will be available after installing Transfer Client. The Transfer client settings and Transfer menu are accessible and can be configured in the editor software.

---

## Addition of Dynamic Range Property Field in Interplay Access

Information about a master clip and a rendered effect's Dynamic Range is now available in Interplay Access, under the Properties tab of the Object Inspector, and as a column in the Assets view. This property, by default, is available for newly created databases. For existing databases, the property must first be enabled in the Property Layout settings in Interplay Administrator.

After you update Access, new master clip and rendered effect assets checked into the database from that updated client are populated with the Dynamic Range data automatically. You can update existing assets in the database with the Dynamic Range information by doing either of the following:

- Check the asset back into the database through Media Composer  
- Use the "Update Status from Media Indexer" function in Interplay Access.

Note - When performing an Extended Search with Dynamic Range in Access, keep in mind that using "Is" as the search operator requires the exact value of the Dynamic Range property to be entered in the text search box (i.e. High (HDR) or Standard (SDR)). Using the search operator "Contains" imposes fewer restrictions to the search results (i.e. High, Standard, HDR, or SDR).

Note - Dynamic Range properties are not supported in Production Management Archive databases at this time.

---

## Send to Playback Support for DNxHD HQX 1080p 23.98 Media Format

This release adds support for DNxHD HQX 1080p 23.98 (DNxHD 1080 175X-185X-220X 1 Field 23.98) media format for Send to Playback (STP) operations in MediaCentral Cloud UX through the MediaCentral Distribution Service (MCDS).

---
