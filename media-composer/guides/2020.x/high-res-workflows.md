---
product: media-composer
product-area: editing
version: "2020.x"
release-date: 01/01/2020
doc-type: high-res-workflows
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
This product is subject to the terms and conditions of a software license agreement provided with the software. The product may only be used in accordance with the license agreement.
No part of this document may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopying and recording, for any purpose without the express written permission of Avid Technology, Inc.
Portions © Copyright 2003-2007 of MOG Solutions.
U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
Avid, the Avid Logo, Avid Everywhere, Avid DNXHD, Avid DNXHR, Avid Nexis, AirSpeed, Eleven, EUCON, Interplay, iNEWS, ISIS, Mbox, MediaCentral, Media Composer, NewsCutter, Pro Tools, ProSet and RealSet, Maestro, PlayMaker, Sibelius, Symphony, and all related product names and logos, are registered or unregistered trademarks of Avid Technology, Inc. in the United States and/or other countries.
The Interplay name is used with the permission of the Interplay Entertainment Corp. which bears no responsibility for Avid products. All other trademarks are the property of their respective owners. For a full list of Avid trademarks, see: http://www.avid.com/US/about-avid/ legal-notices/trademarks.
Adobe and Photoshop are either registered trademarks or trademarks of Adobe Systems Incorporated in the United States and/or other countries. Apple and Macintosh are trademarks of Apple Computer, Inc., registered in the U.S. and other countries. Windows is either a registered trademark or trademark of Microsoft Corporation in the United States and/or other countries. All other trademarks contained herein are the property of their respective owners.
Avid High-Resolution Workflows Guide (cid:129) 5/19/20 1 Broadcast-Post Workflow for Editing Teams on Interplay The exchange process between Avid audio and video editing systems can be facilitated with Avid interconnectivity solutions, as Media Composer and Pro Tools systems are easily integrated with Avid’s Interplay asset management system and shared storage.
Both post and broadcast facilities can configure a multi-resolution workflow, that allows producers, assistants and editors to log, mark and edit large amounts of material quickly and accurately.
Interplay tracks the locations of assets, including all resolutions of a master clip, and allows you to easily pull them into your project.
The diagram below gives a general outline of how you can ingest and edit high-resolution media, and then output in both HD and high-resolution formats.
Proxy Edit Workflow ACQUISITION CREATIVE BROADCAST EDITORIAL Avid AirSpeed (for HD) or 3rd party Avid M e d i a | D i re ctor Avid Media Composer Video Server (HD, UHD) Source Material Audio & Video Camera Drives Cut o f S e q u e n c e 4K Cameras Video Ingest Servers 1 Edit with Render Mixdown/ Send HD/UHD proxy Effects Export Hi-Res Transmission masters Link/Transcode material media formats to playout server Source Material or publish to portable storage Interplay Production C h e c k - i n / o u t A S S E T H D & H i- R e s C li p s , B i n s MAN A G E M ENT Interplay Archive Consolidate Check-in/out Restore/Archive Source Material Sequences Hi-Res Media Avid ISIS 2500 Avid ISIS 5500/7500 Parking Storage High-Capacity Storage AAF Exchange Generate AAF Exchange new media GRADING & AUDIO EDITING SPECIAL EFFECTS & MIXING 3rd party system Pro Tools Working with high-resolution media requires significant processing power on your editing system, along with high-bandwidth connectivity to large capacities of storage. With the proxy edit workflow you can work more efficiently by transcoding the media to a lower resolution proxy format. This will improve playback performance and save storage space during the editorial stage.
You can use a tiered-storage environment where all incoming footage is placed on a nearline Avid storage or third-party storage, transcoded to low-res proxies, and checked-in to Interplay for editing.
From here, select media in the sequences can be consolidated to the high-bandwidth Avid storage at the desired quality for finishing and output.
Interplay manages all versions of the media and allows you to switch between media qualities depending on the task that you have to perform.
Important: Interplay permits check-in of higher-than-HD sequences and specific DNxHR formats.
For a list of the formats that are supported, see “High-Resolution Sequence Formats Supported by Media Composer” on page 114 and “Avid MXF (DNx) Render & Output Quality” on page 117.
Stage Description ACQUISITION Media is usually transferred from various devices (camera cards, portable drives to a more robust central storage for the editing stations to access.
The original media can be transcoded to storage using a low complexity, low bandwidth DNxHR or DNxHD codec that is condusive to editorial.
1 Media is acquired in a number of ways:
(cid:129) Using pre-configured ingest profiles on a Media | Director server (connected to the Interplay backbone). Distributed client stations can host multiple cards/drives holding file-based media. These stations can copy/transcode/consolidate media to Avid storage.
(cid:129) Using Interplay ingest profiles to automate the creation of high and low-resolution proxy media from decks and video ingest servers.
(cid:129) Using Media Composer ingest profiles (Dynamic Media Folders) to copy/consolidate/transcode the source media to Avid storage and generate master clips of native and/or proxy media or Manually linking to the source media on portable drives to preview the footage and create master clips of media that may be used in the production. Transcoding can be carried out as a background process on the Media Composer editing station.
ASSET MANAGEMENT Interplay services handle the streaming, transcoding and distribution of media as well as the check-in of all project and media assets—master clips, sequences, and bins, along with the necessary AAF metadata—that can be used by other downstream processes and systems.
Avid has a number of solutions for storing your media. Contact Avid sales for details on which Avid NEXIS or Avid ISIS storage is best for your workflow.
(cid:129) You can use Avid storageas a “parking location” for the original media coming from the cameras. You can store large files at a smaller cost per GB if you transcode the media to lower-res proxies for offline editing.
(cid:129) Media selects for the final sequences can be consolidated/transcoded to the Avid storage to give editors access to the best quality DNx media for the finishing.
Stage Description CREATIVE EDITORIAL You can use either the source or proxy media for the editing process. In an Interplay environment, a single master clip represents all available versions of the media. Linked and transcoded media are stored in separately-managed workspaces where they are indexed so that editing stations can relink to the desired media quality.
2 In the Proxy Edit workflow:
3 (cid:129) Review field footage and build a sequence using the linked master clips.
(cid:129) Dynamically relink to the transcoded media to continue the editorial at a lower resolution; and collaborate efficiently over a networked workgroup that may include remote-connected clients.
(cid:129) Once you have completed editing your sequence, perform a consolidate of the source media to the high-bandwidth Avid storage.
(cid:129) When you are ready to perform the finishing process, relink to the high-res proxies or source media.
GRADING & SPECIAL EFFECTS 6 If you are sending the sequence to a 3rd-party system for grading and effects, then render your sequence and export an AAF or EDL from Media Composer.
The 3rd-party system links to the associated media via the AAF/EDL.
The finished segments are sent back to Media Composer via a new AAF and with new media generated in formats such as MXF, DPX or Apple ProRes.
> **Note:** Third-party applications that support the Outsource workflow can update the
Media Composer sequence with new media without the use of AAFs.
AUDIO EDITING & MIXING 7 Along with the video edit, Media Composer can create basic audio tracks with surround sound and audio effects for sweetening in Pro Tools. The audio tracks can be exported to an AAF with separate exports of the media files (e.g. QuickTime). If the destination Pro Tools system has an Avid video peripheral or a Video Satellite system, the video tracks can also be exported as part of the AAF.
Pro Tools can create any other necessary audio tracks for dialog, ADR, foley, music, and sound effects in either mono or stereo. When the final audio sweetening session is complete, it is mixed down, and both the AAF and audio media are exported back to Media Composer.
HIGH-RES FINISHING & OUTPUT 8 Open the sequence in Media Composer.
If you intend to output your sequence at a different frame size than what you were editing, switch the sequence format. Adjust the effects for the new frame size if necessary and render the sequence to generate new media.
Mixdown and export the sequence to in the required delivery format.
Checklist: Broadcast-Post Workflow for Editing Teams on Interplay Stage Description DISTRIBUTION Media Composer and/or Media Composer with the Symphony option acts as the hub for the reassembly of outsourced effects or full conform. The final titling and finishing touches are conducted, and editors have the ability to output sequences to common mastering formats for cinematic or TV broadcast (UHD, HD, or SD).
9 Copy the cinematic or UHD masters to a portable storage.
Avid AirSpeed | 5000 can be added to the send to playback list in Media Composer for the transmission of HD sequences for HDTV; while high-res sequences can be packaged and sent to broadcast facilities for distribution to 3rd-party UHDTV video servers.
Checklist: Broadcast-Post Workflow for Editing Teams on Interplay This section outlines the basic workflow for editing and finishing high-resolution, file-based footage with Avid products supported on the Interplay platform. Follow the steps below in the order that they are listed.
> **Note:** If you are editing stereoscopic media, you should also refer to the Avid Stereoscopic 3D Editing
Workflow Guide for specific guidelines pertaining to acquiring and editing 3D media.
Before you Begin Step Refer to ...
b Learn about high-resolution files and how they are handled in “Working with High-Resolution Media Composer. Media” on page 62.
“What's the Difference between Resolution and Size?” on page 64.
“What is Color Management?” on page 65.
b Learn about the different ways that you can acquire your file- “Acquiring High-Resolution Media” based media. on page 109.
b In Media Composer, Dynamic Media Folders (DMFs) and “Automatically Linking Media from a background transcode/consolidate processes bring greater Third Party Device” on page 135.
efficiency to the media acquisition stage. Learn how you can set up media service profiles to automate the acquisition of media in different resolutions.
b Know the different types of media you will need to acquire and “Avid Supported Video File Formats” then determine the project and delivery format(s) at which you - avid.com will edit and output your sequences.
“High-Resolution Sequence Formats Supported by Media Composer” on page 114.
Checklist: Broadcast-Post Workflow for Editing Teams on Interplay Organizing your Media With an Avid shared storage solution, you can quickly increase collaboration in your facility. There are Avid storage solutions for small workgroups, as well as for larger networked facilities. The storage solution that you choose depends on the number of editing stations that will be connected to the storage, the bandwidth that you require for reading/writing of large file sizes, and the need to have high availability.
Avid ISIS and Avid NEXIS storage solutions support real-time playback of high-resolution media formats in both native and proxy formats. Smaller facilities with fewer connected clients can copy their footage from the camera storage or shuttle drive to Avid storage, link to this media, and/or transcode to a lower proxy resolution for the editing process. Finishing processes can also be conducted directly from the same storage with good performance playback of proxy formats.
Facilities with large amounts of media, large numbers of connected clients, and zero-downtime requirements can also use Avid storage to “park” all the high-resolution media. This storage could also hold the transcoded lower-resolution proxy versions for editing.
For the final editing stages where better quality and playback performance are required, the sequences would be conformed to the high-res media and then consolidated to Avid storage. Contact Avid sales for details on which Avid NEXIS or Avid ISIS storage is best for your workflow.
Step Refer to ...
b Avid storage solutions support real-time playback of high- Avid ISIS Performance Guides - resolution media formats. www.avid.com.
Determine the number of client workstations and the media “DNxHR Family” on page 117.
quality they will need to access. (The number of streams qualified per client depends on the media resolution being used.) b Determine your storage requirements and strategy for the “Considerations when Editing with placement of your source, proxy, rendered, and archived media. File-Based Media” on page 51.
b Work out the folder structure for your media and then move “Setting a Structure for your File- your media using the automated file ingest functions in Media based Media” on page 53.
Composer described later in this workflow.
Consult with your Avid representative to work out the best strategy for your media storage.
Setting up a Shared Editing Environment on Avid ISIS or Avid NEXIS Storage Since there’s a common need to share projects and media for offline-to-online production between Avid systems, all the media (in both high-res and low-res) is located on centralized Avid storage.
This storage provides partitions to which all contributors can access, thus simplifying the process of organizing and accessing media.
Checklist: Broadcast-Post Workflow for Editing Teams on Interplay The Avid storage workgroup allows for a truly collaborative editing process as it allows the various stations in the workgroup to:
(cid:129) work with material from the same project and/or bin simultaneously (cid:129) access multiple resolutions and versions of media and other assets from the shared storage without contention (cid:129) transfer sequences from one Avid editing application to another for various editing functions (logging, video editing, audio mixing, effects, color grading and finishing).
To set up shared workspaces on the Avid storage for the exchange of sequences and media:
Step Refer to ...
b Learn how to set up your workgroup so that you can share Avid ISIS documentation - media between Avid editing workstations. www.avid.com.
b Make sure that your storage has been configured with read/ write access for your high-resolution files.
b If you need to share media between Avid editing systems, create additional workspaces where they can place media that will be shared (audio and video can be stored in the same folder).
Do the same for other 3rd-party systems that will be sharing media with the Avid.
> **Note:** These workspaces only need to contain media that will be
exchanged or conformed.
b Determine where the project and bins will be stored. Everyone who is expected to work on the project should have a minimum of read access to this workspace. Any user that need to create or modify project and/or bin metadata will require read/write access to the workspace.
Setting up a Shared Editing Environment on Interplay Avid Interplay lets broadcast and post facilities configure a multi-resolution workflow that connects producers, editors, graphic artists, and other contributors, and gives them access to the most up-to- date project assets.
Since there’s a large need to share projects and media for offline-to-online production between Avid systems, all the media (in both high-res and low-res) is located on centralized Avid storage. This storage provides partitions to which all contributors have access, thus simplifying the process of organizing and accessing media.
Interplay tracks all this media. As soon as media is digitized, the clips are checked into the Interplay database where a producer can view it, start making notes, watch time codes, and even put locators on the media itself. This metadata is stored with the clip so that editors can easily perform searches, and retrieve and edit clips with all the pertinent metadata attached.
Checklist: Broadcast-Post Workflow for Editing Teams on Interplay Various Avid products can be integrated into an Interplay environment to facilitate the ingest, transcoding, streaming and output of media within a facility. This allows for a truly collaborative editing process as it allows the various stations in the workgroup to:
(cid:129) access multiple resolutions and versions of media and other assets from the shared storage without contention (cid:129) transfer sequences from one Avid editing application to another for various editing functions (logging, video editing, audio mixing, effects, color grading and finishing).
The table below describes some of the Interplay transcoding services that may be configured for your facility. Check with your network administrator for the media formats that are available for use.
Service Description Avid Media | Director Orchestrates the capture of field footage on distributed client systems using server pre-defined profiles for copying, transcoding, and automatically naming files and folders.
Avid Interplay Transcode Typically used after media has already been ingested to an Avid native format.
Service This service can transcode Avid assets from one Avid-supported resolution to another. For example, conversion of DNx220 media to H.264 for a low- bandwidth proxy editing format.
Avid Interplay STP Offloads time-consuming processing involved in exporting and transferring of Encode service Long GOP OP1a media for playout-to-air.
Avid Media | Distribute Unifies distribution of content to diverse channels and devices. Media Distribute handles the file preparation and dispatch of formats for distribution to web, mobile and social media outlets.
Avid Interplay Archive Creates permanent archives of important material and also allows you to locate and Restore Services and restore archived material.
To access the various qualities of the media make sure the dynamic relink option and your system’s local indexer has been configured:
Step Refer to ...
b Learn about the MultiRez workflow in Interplay. ”Understanding MultiRez and Proxy Editing” - Media Composer Help “Workflow: Editing a Film or HD Project using MultiRez” - Media Composer Help b Set the Dynamic Relink options. “Using the Dynamic Relink Settings Box” - Media Composer Help.
b Make sure that your editing workstation has been properly “Working with Interplay Production from an configured for use in an Interplay environment. Avid Editing System” - Interplay help.
Delivering a High-Resolution Project on Interplay Media will originate from different sources such as digital cameras, film frames scanned to files, SD or HD tapes, and even computer-generated motion graphics. Each of these media sources can have different sizes, resolution, frame rates, compression and color encoding (color model, gamma, bit depth, etc.).
Checklist: Broadcast-Post Workflow for Editing Teams on Interplay Media Composer gives you the ability to acquire media coming from different sources, regardless of their size or resolution, and mix them freely in the timeline. Of course, all this media needs be regulated to one frame size, hence it is important to set a common frame size for the editing process.
In addition, you also need to set a common color space for all media in the project so that a common color transformation model is applied to all incoming media.
Step Refer to ...
bStart Media Composer and create a project using an UHD .
project preset.
“HD Resolution Sequence Formats” on page 116.
bIf you will be using media from different sources, any “Creating a New Project” on page 122”.
acquired media can be formatted to fit the project’s frame size.
bIf your master will be delivered in multiple formats, you can “Viewing Sequences with Mask Regions” specify mask margins on the project frame to simulate the on page 96.
dimensions of the output image.
bTo optimize your storage space and the performance of “Using a Proxy Workflow” on page 72.
your system, it’s best to work in proxy mode. All clips “Setting the Proxy Mode for the Timeline” on the timeline, regardless of their resolution, will be on page 73.
played and rendered at the selected proxy (1/4 or 1/ 16).
Avid recommends that you transcode your source media to a low complexity DNxHR format that maintains raster size, aspect ratio and provides several quality settings for high quality images.
bSet your project color space. “Creating a New Project” on page 122.
bIf you need to send your project for conform or effects “Creating a New Project” on page 122.
on a 3rd-party system that does not support high frame rates, you can choose a more compatible editing timebase.
Using Media Created from the Dailies Process There are many companies that provide tools and technologies to streamline the preparation of dailies. The dailies process involves the fixing of timing errors, duration problems, audio/video synchronization, framing, and color grading. Also, for footage shot in 3D, there are additional fixes required to adjust color and spatial alignments between the left/right eye images. Not all these functions need to be completed in the dailies as they can be undertaken in the video editing application. Your workflow, timescale, storage capacity and other criteria will determine the flexibility in the pipeline.
The dailies systems also inject the necessary metadata to facilitate other downstream editing processes. Once the footage has been pre-treated and identified for editorial, it is typically passed on in the form of transcoded MXF or QuickTime files. The processed media is then sent to the creative editorial suite along with the associated clips, AAFs, EDLs, and/or ALEs carrying the necessary metadata.
The dailies files need to be sent to the editorial suite where the media is placed on the storage for access by Media Composer editors.
Checklist: Broadcast-Post Workflow for Editing Teams on Interplay Step Refer to...
b Media that has already been preprocessed by a dailies “Linking to MXF Media” on page 94.
application can use an AAF with and ALE to link and import the media.
Media Composer will create master clips for this MXF media.
Acquiring Media with Media | Director In an Avid Interplay environment, Avid Media | Director is available as an option if you want to offload the file ingest process onto a separate system. Media | Director provides a central server that can process ingest jobs from client machines distributed across the network.
The Media | Director server configures profiles specifically defined for copying, transcoding, and checking in files from cameras or drives attached to Media | Director client stations. For example, Media | Director can be configured to automatically copy camera originals to Avid storage. A profile can also be configured to transcode the camera source material to a low-bit-rate proxy format, such as DNxHD 36 or 2Mb H.264 video and MPEG-1 Layer II audio.
> **Note:** Once the editors and producers create their sequences with the proxy, editors can use the Avid
editing application or the Interplay Transcode service to initiate a consolidate operation to bring the desired high res material onto the Avid storage system in the Interplay environment. This will copy the desired portions of the original material from the parking storage onto the high-capacity Avid storage in the OP-ATOM format used by Avid applications.
Step Refer to...
b Media Director supports a number of HD and high- “Avid Video Supported File Formats” - resolution formats. You can link to these media files and www.avid.com consolidate them to a native uncompressed Avid format, or transcode them to lower-quality proxies that provide better performance when editing.
b Download the plug-ins that support the media types that you Avid Media Director Readme for a list of need to ingest. AMA plug-ins that have been qualified for use with Media Director Avid AMA plug-ins are automatically installed with Media Composer. Third-party AMA plug-ins can be downloaded from the vendor web site.
b Connect the card reader, or portable media drive to the Media Director client system.
b From the Media Directer server, create automated profiles to “Working with Media Director Profiles” - copy your media and/or transcode it to proxies. Media Director User Guide These profiles are extremely useful in organizing your “Setting a Structure for your File-based media. Before you configure the profiles determine how Media” on page 53.
your storage should be organized.
b Original camera files should be copied to a designated shared workspace on the Avid storage for your media.
Checklist: Broadcast-Post Workflow for Editing Teams on Interplay Step Refer to...
b Initiate the ingest process.
b Media Director uses an AMA register process to create a linked asset in the Interplay database. These assets point to the media on the parking storage.
Once the media and proxies are available, Media Composer editors and other Interplay clients can dynamically relink between the source and proxy media when editing sequences.
Enabling the Ingest Functions in Media Composer When working with media coming directly from digital cameras or other media-creation applications, editing stations connected to a digital camera or card reader can link to almost any file- based media to create clips.
Some media formats are supported natively in Media Composer and can be linked or imported directly. Other formats that are not natively supported will need supporting AMA plug-ins developed by the camera manufacturers. The Avid Media Access (AMA) plug-in architecture allows direct and instant access to a variety of camera codecs available today. The ability to sort, log, and instantly edit linked media has distinct advantages for many program workflows, especially those with quick turnaround demands.
Understanding the advantages and disadvantages of AMA depends on several factors and there is no hard and fast rule for whether you can successfully edit using linked clips for the entire process or whether you will need to transcode.
Considerations are:
(cid:129) amount of footage to storage ratios (cid:129) expected system performance (e.g., lots of layers, multicam, etc.) When working with high-res media or productions with high-shoot ratios, transcoding is recommended. The Dynamic Media Folder feature (DMF) in Media Composer provides the ability to automate tasks such as transcode and consolidate for improved efficiencies. Profiles can be set up to run automated media acquisition actions on the specific drives/folders where the original media is located. These profiles can be configured to automatically move and/or transcode the media to a nearline or shared storage. All media is processed and managed in the background while you do your editing. When ready, you can update the bins to refresh the metadata for each clip and point to the new path(s) on the Avid storage.
> **Note:** These background services do require additional processing resources, and are not enabled by
default.
Step Refer to ...
b Media Composer supports several high-resolution formats. You “Avid Supported Video File Formats” - can link to these formats using AMA plug-ins and consolidate avid.com or transcode them to resolutions that are suitable for your editing workflow.
Checklist: Broadcast-Post Workflow for Editing Teams on Interplay Step Refer to ...
b Refer to the AMA compatibility matrix to determine and/or http://avid.force.com/pkb/articles/ download the plug-in that supports your media type. en_US/Compatibility/Media- Composer-AMA-Plugin- Compatibility-Chart b Check to see if you have all the necessary AMA plug-ins to “Viewing the Installed Plug-Ins” on support your file-based workflow. page 135.
Avid AMA plug-ins are automatically installed with Media Composer. Third-party AMA plug-ins can be downloaded from the vendor web site.
b Install the necessary AMA plug-ins on your workstation.
b Install the latest supported version of QuickTime. Go to the Apple web site to download QuickTime.
b Select the appropriate Avid Media Access (AMA) settings. See “Link Settings” in the Media Composer Help.
b If you intend to use automated functions to copy/transcode/ “Starting and Stopping Avid consolidate your media, make sure that you enable the DMF Background Services” - Media and Background Transcode services. Composer Help.
> **Note:** These services have certain processing requirements for your “Minimum RAM Recommendation” -
system.
Media Composer Readme.
b Set the storage location for any transcoded or consolidated “Media Creation Settings” - Media media that will be generated. Composer help.
Acquiring Media with Avid Media Composer When working with media coming directly from digital cameras or other media-creation applications, editing stations with a connected digital camera or card reader can link to almost any file-based media to create master clips.
In Media Composer, you can link and create your master clips manually, or set up automated background processes that will do this for you. If you are editing with media that has already been pre-processed by a dailies application, see “Using Media Created from the Dailies Process” on page 13.
Step Refer to...
b Read the workflow recommendations for the camera from which AMA workflow guides on your footage originated. www.avid.com/ama.
b Connect the camera or portable media drive to your system. The device will be recognized as a volume on your system from which you can read the media files.
Checklist: Broadcast-Post Workflow for Editing Teams on Interplay Step Refer to...
b You can either import or link to your high-res media. “Acquisition and Management of Media” on page 110.
Avid supports many file formats which allows you to edit either with the source media or with the transcoded media. “Editing Directly with Source Media” on page 17, or “Editing with Transcoded Media” on page 18.
Editing Directly with Source Media The Avid Media Access (AMA) plug-in architecture allows direct and instant access to a variety of camera codecs available today. The ability to sort, log, and instantly edit has distinct advantages for many program workflows, especially those with quick turnaround demands. The advantages and limitations of AMA depends on several factors. As such, there is no hard and fast rule for whether you can successfully edit using linked clips for the entire process, or whether you will need to transcode.
Considerations are:
(cid:129) amount of footage to storage ratios (cid:129) expected system performance (e.g., lots of layers, multicam, etc.) (cid:129) working on a SAN (cid:129) comfort level of managing all aspects of media versus using Avid’s MediaFile management system When working with media coming directly from digital cameras or other media-creation applications, editing stations connected to a digital camera or card reader can link to almost any file- based media to create clips.
If you want to edit directly with the source media format, you need to check if it is supported natively by Avid. i.e. Avid has the codec to read the media and wrap it as an MXF format that can be managed by Media Composer. If not, there is usually an AMA plug-in from the camera manufacturer that can be installed on your editing system. You can use this plug-in to link to the media, however, real-time editing is not guaranteed, and it is best to transcode the media for editing as described in the “Editing with Transcoded Media” topic.
Once you link to the media, the Dynamic Media Folders (DMFs) can process and manage all media in the background while you do your editing. If you want to continue editing with the high-resolution media, then set up the DMF profile to consolidate the source media to native MXF media.
You also have the option of switching to a proxy workflow at any time during your edit by setting the appropriate proxy mode. This will allow you to playback your clips at a lower resolution without transcoding.
Checklist: Broadcast-Post Workflow for Editing Teams on Interplay Step Refer to ...
b Use the appropriate Avid AMA plug-in to link to the media and “Linking File-Based Media” on create master clips of the footage that you need to edit. page 134.
See “Link Settings” in the Media Composer Help.
b Preview the clips and create the necessary subclips.
b Optional. Automatically create master clips of all the See “Creating Dynamic Media footage on your drive using Dynamic Media Folders Folders” in the Help.
(DMFs).
b Build your sequence using the linked master clips.
b Use background consolidate to convert the source media to “Background Transcode and native Avid MXF media. Consolidate” - Media Composer help.
b During editing, you can also use the proxy mode. This will play “Using a Proxy Workflow” on back the sequence and render any effects at 1/4 or 1/16th of the page 72.
resolution.
> **Note:** Proxy mode is not currently available in an Interplay environment.
Editing with Transcoded Media For long-form projects, or cases where you have high shooting ratios or high resolution formats that do not have good performance, you may want to transcode all your media to a compressed DNxHR or DNxHD resolution for offline editing. This allows you to save storage space when previewing clips to build your sequences. High-res file sizes tend to be large, so the real-time playback of media on the timeline may be compromised. Once the final cut has been made, you can then relink the high- res media for the finishing process.
You will also need to transcode your media if the format is not supported natively in Media Composer. i.e. Avid does not have the codec to read the media and wrap it as an MXF format that can be managed by Media Composer. For these media formats, there is usually an AMA plug-in from the camera manufacturer that can be installed on your editing system. You can use this plug-in to link to the media, however, real-time editing is not guaranteed, so it is best to transcode the media.
> **Note:** The transcoding may take a long time, however, you do have the option of performing this as a
background process while you continue to edit with the linked clips. Media Composer provides configurable profiles to automate the copying of media from external drives, creation of master clips, and transcoding to proxy media.
In an Interplay environment you could also use the Interplay Transcode Services to perform similar operations. The profiles also handle the check-in of clips and media to the Interplay database.
Checklist: Broadcast-Post Workflow for Editing Teams on Interplay Step Refer to ...
b Transcode your source media to a lower resolution to create “Editing with Low-Resolution Proxy transcoded clips. Media” on page 92.
You can also use the proxy mode. This will playback the “Using a Proxy Workflow” on sequence and render any effects at 1/4 or 1/16th of the page 72.
resolution.
> **Note:** Proxy mode is not currently available in an Interplay environment.
b If there are high amounts of media files that need to be transcoded, you can automate the process using:
- Avid Transcode Services “Working with the Transcode Service” - Interplay help - In Media Composer, run the transcode as a background “Background Transcode and process so that you can continue editing your sequence. Consolidate” - Media Composer help.
- In Media Composer, you can also automate the See “Creating Dynamic Media transcode process by setting up an automated DMF Folders” in the Media Composer profile. Help.
“Transcoding a Bin using Automated Profiles” on page 92.
b If you have created a new bin for your transcoded clips, give it an appropriate name.
b Build your sequence using the transcoded clips.
b Sequences will play back at the proxy mode set for your project. “Setting the Proxy Mode for the Media will also be rendered at this resolution. Timeline” on page 73.
During the editing process, you can change the proxy mode of the project, however this will require that you re-render any pre- computed media.
b Use FrameFlex to set new frame dimensions, or remove “Reframing your Media” on page 74.
unwanted areas from certain clips.
You can also pan over clips to follow the important action.
“Panning a Shot” on page 79.
b When working with media of different frame sizes than the “Reformatting the Media to fit the project, the media will be adapted to fit the project frame size Project Frame Size” on page 80.
according to the reformatting options in the Source Settings tab.
If required, you can change this setting for individual clips.
b If a certain “look” was created by the Director of Photography during the film shoot or dailies stage, you can apply an imported LUT to selected clips using the Color LUT effect.
b If changes were made to the source or proxy clips in the bins, “Refreshing Sequences to Use Current the sequence must then be refreshed to update these changes Clip Attributes” - Media Composer onto any clips that are already on the timeline. help.
b Once the offline edit is complete, you can relink to the source “Relinking to the Source Media” on media for the finishing process. page 95.
Checklist: Broadcast-Post Workflow for Editing Teams on Interplay Changing Source Properties of Master Clips To ease the editorial process, Avid provides a number of tools to preview the original essence from the camera and make adjustments to the incoming media. These adjustments typically include general color and spatial adjustments that need to be applied to all files from the same camera.
Preparation of media for the editorial process should take place on the linked master clips so that they will available for the finishing stages if necessary. In Media Composer, any adjustments such as frame size, color transformations or playback rates made to the master clips are applied as source adapter effects.
After media has been acquired and the master clips have been created in the bin, you will be able to view and adjust the media properties from a single Source Settings view.
You can also add metadata to projects and master clips created in Media Composer. The most common definition of metadata is that it is data about data. Or, information used to describe another piece of data. Metadata is created by digital cameras, and injected by various other systems along the post production pipeline. Avid’s metadata management ingests and tracks standardized metadata fields from other devices and applications, and ensures that they are retained for downstream use.
Step Refer to ...
b Once the bins and clips have been created, you should use “Embedding Metadata in your Clips” existing columns or create new custom columns to add on page 54 and “Preparing your File- information that will properly identify your clips for the based Clips for Downstream downstream conform process. Processes” on page 55.
b If you have any additional information for your clips from “Merging Additional Metadata for changes to the media done by 3rd-party applications, you can Clips” on page 96.
add this metadata using log files (ALE).
b To prepare the clips for editorial, you should apply certain “Changing Source Properties on a changes, such as color adjustments, directly to the master clips Master Clip” on page 73.
in the bin so that they are automatically available when clips are used on the timeline.
b Media Composer can detect most color spaces directly from the “Setting the Color Properties of media. You may change this color setting if necessary. Acquired Media” on page 83.
b For certain media types, an extra set of editable color settings are available via an additional tab called Linked Plug-in within the Source Settings dialog box.
b If a certain “look” was created by the Director of “Applying External LUTs to your Photography during the film shoot or dailies stage, you Media” on page 88.
may apply this to your clips via an external LUT.
> **Note:** You can also choose to apply a LUT to a clip on the
timeline (as a Color LUT Effect).
b Apply (or ignore) custom color metadata attached to “Using Color Decision Lists (CDLs)” your media. on page 90.
b Use FrameFlex to set new frame dimensions, or remove “Reframing your Media” on page 74.
unwanted areas from certain clips.
Checklist: Broadcast-Post Workflow for Editing Teams on Interplay Step Refer to ...
b If these dimensions are different than the project frame “Reformatting the Media to fit the size, the media can be adapted to fit the project frame Project Frame Size” on page 80.
size or left as is.
b If the frame rate of your clip differs from the project frame rate, “Setting the Playback Rate of a Clip” the clip’s frame will automatically be adapted to match the on page 91.
sequence playback rate when the clip is dropped onto the timeline. You have the option to override this adaptation and leave the clip’s frame rate as is.
Outsourcing Special Effects & Grading Jobs Productions that need to add special effects, color grade, or conform at the native resolution of the camera originals will need to look to systems that support these types of resolutions. Depending on complexity of project, turnaround time, and number of VFX, plug-ins, and titles, the ability to conform most, if not all, of the creative decisions is a time saver.
The market has seen an explosion of mastering tools over the past few years at price points available to all. Digital Intermediate (DI) tools have expanded their feature sets not only with color correction for high-end features, but also to reach into other markets such as broadcast, cable, and independent productions. Each version increases the level of conform available, targeting a more seamless conform process.
The two interchange methods for conforming in these systems are via EDLs or AAFs. Depending on the system, AAF is usually the preferred method, but mileage may vary between vendors depending on complexity of timeline with VFX, plug-ins, nested elements, and such, as well as the depth to which the third-party system has for parsing the information. Avid also provides for an XML presentation of the sequence, but more as a sequence breakdown to parse elements in a database or as part of a pull process prepping elements in a DI workflow. Information on the XML schema and dictionary can be found on (http://www.avid.com/US/resources/filmscribe).
Select the entire sequence, or just segments that require special visual effects processing and send them to a separate internal or external facility along with the selected source media. The special effects editor will import the AAF and relink to the source files at the original resolution to perform compositing, special effects and color grading. With some effects (such as Eyeon Fusion and the Avid Baselight plug-in) you can also use an Outsource workflow and the timeline will automatically update with the new media once you have rendered the effect in the external tool.
After adding the necessary audio and visual effects, the sequence is rendered to the required delivery format and exported back to Media Composer along with the new media.
Follow the checklist below to generate an AAF for a third-party system.
Step Refer to ...
b To color grade, apply special effects, or perform audio mixing See “Color Correction and Dailies in another application, you will need to export an AAF or EDL. Systems” on page 22 to make sure that the correct color levels are maintained Consult with the Effects editor or Colorist to determine the when using media from upstream format that they require.
systems.
Checklist: Broadcast-Post Workflow for Editing Teams on Interplay Step Refer to ...
b Prepare your sequence for export. “Preparing to Export a Sequence” - Media Composer help.
b If you have not already done so, relink to the source media. “Relinking to the Source Media” on page 95.
b If you are working with pre-processed media and need to request original camera media that is not currently on your storage, you can generate a pull list to create a concise list of footage to be re-transferred at the higher resolution.
b Before generating the AAF, you may want to simplify the “Exporting a Simplified AAF” - sequence, especially in the case of multicam sources. Instead Media Composer help.
of sending all the sources, whether they were used or not, the sequence can be optimized to remove the group information and only reference the camera angle/take used in the final sequence.
b If you need to pass on changes to a sequence that has already been outsourced to another system for effects or finishing, you should generate a change list instead of exporting a new sequence.
b Export the sequence. “Exporting Sequences to External Applications” on page 101.
b If you a performing a QuickTime AMA workflow with “QuickTime AMA Workflow with Adobe After Effects, there is a difference in how the Adobe After Effects” in the Media roundtrip works with DNxHR. Composer help.
b You will also need to send the corresponding media at the best quality. This can be done while exporting the AAF.
Color Correction and Dailies Systems There are many “dailies” software solutions for file-based formats. Refer to the list below.
When transcoding in third-party applications, be aware of the black and white levels of the resulting file to ensure they meet Rec. 709 video standards. In 8-bit terms, video black is 16|16|16 RGB and video white is 235|235|235 RGB. When exporting directly out of REDCINE X PRO to Avid MXF- wrapped DNxHD or DNxHR, there is a setting for scaling to legal video levels. Many applications work full swing across the entire RGB level set (0-255 in 8-bit terms), this setting will scale 0-255 to 16-235 to look correct on a calibrated Rec. 709 monitor.
If the dailies software does not bring in the media at the correct levels, you can link to these files and use the LUT support in Media Composer, to apply a ‘full range to Rec. 709 LUT’ and create the proper video levels for your projects.
LEGEND B Both D Dailies C Color Correction Checklist: Broadcast-Post Workflow for Editing Teams on Interplay (B) Assimilate Scratch color corrector (B) Blackmagic Design DaVinci Resolve (B) FilmLight Baselight color correction system (B) Mistika finishing, compositing, stereo 3D and color grading system (D) Gamma and Density 3cP on-set color correction system (D) Flexxity, BonesDailies DFT, Digital Film Technology Weiterstadt (D) YoYotta YoYo (C) Autodesk finishing, VFX and color grading systems (C) Adobe SpeedGrade color corrector (C) Digital Vision/ Nucoda Film Master color corrector (C) Pandora Revolution color corrector (C) Synthetic Aperture Color Finesse Exporting a Sequence for Audio Editing & Mixing Basic audio tracks with surround sound and audio effects can be created in Media Composer and later sweetened in Pro Tools. The key to maintaining a high level of interoperability between Media Composer and Pro Tools is to use an AAF file. This is currently the best format for transferring and reassembling the sequence or session composition from one application to another.
When you transfer your sequences to a Pro Tools system, you may want to transfer just the audio. If you want to send video as well, you must render all your video tracks and export them as MXF or QuickTime.
When the AAF is opened in Pro Tools, it populates a new session with all the audio and/or video metadata needed to recreate any initial edits done in Media Composer. Clips in the sequence automatically link to the media. Pro Tools can also edit with accompanying video by either importing or viewing the playback from a connected Media Composer Video Satellite system. With the video satellite, you view playback as long as the project type is supported in Pro Tools and Media Composer with the HD Sync.
> **Note:** Pro Tools does not currently support higher-than-HD sequences. Any high-resolution sequences must
be downconverted to HD (MXF or QuickTime) before being exported to Pro Tools.
When you import the AAF in Pro Tools, it will adjust the session frame rate to match the imported sequence. However, the sequence must be a frame rate that is supported by Pro Tools or the sequence will not import successfully. Also, you cannot import a sequence of a different frame rate once a sequence is already imported.
During the audio editing session, you can enhance the rough audio track (also known as the "guide track") produced by the video editor. The markers help spot where sound effects need to be added.
You can also view any volume automation, clip gain or pan automation information imported for individual tracks and easily add and manipulate break points using the Pro Tools editing functions.
Checklist: Broadcast-Post Workflow for Editing Teams on Interplay Create other necessary audio tracks for dialog, ADR, foley, music, and sound effects in either mono or stereo. When the final audio sweetening session is complete, mix it down, and export the AAF with audio media back to Media Composer.
Step Refer to ...
b Before you begin the export process, read about the ways in which “Preparing to Export a you can optimize your sequence for a quick and easy export. Sequence” - Media Composer Help b Pro Tools does not currently support higher than HD sequences. If you are working in a high-resolution sequence, you must switch the project resolution down to HD and render/mixdown the sequence.
b You must also ensure that you are using a frame rate that is supported “HD Resolution Sequence by Pro Tools. Formats” on page 116.
If you need to change the frame rate, you will need to open a new HD sequence at that frame rate, and drop the former sequence into it.
b Unless you are sending the sequence to an Avid | Video Satellite system, all effects need to be rendered or mixed down before the AAF export.
You have a number of choices when sending your sequence to Pro “Transferring Audio Files” - Tools. The following are more commonly used: Media Composer Help b Export an AAF with embedded audio. “Exporting AAF Sequences with Special Options” - Media Composer Help.
b Export the video separately as MXF or QuickTime. “Exporting QuickTime Movies” - Media Composer Help b For a Pro Tools Video Satellite system, you can just export the AAF.
> **Note:** FrameFlex and Color Adapter effects are not recognized in Pro
Tools, so the sequence will need to be rendered if these effects were used.
The media files can be placed on a shared storage, or packaged separately to be sent to the audio editor. When the AAF is imported into Pro Tools, the media will automatically relink.
b If you need to pass on changes to a sequence that has previously been sent to Pro Tools for sound effects or mixing, you should generate a change list instead of exporting a new sequence.
b You can either use the “Export to Pro Tools” preset that is already “Creating a Custom Send To preconfigured with the compatible options, or create a similar export Template for Exporting to template with options that streamline your specific production Third-Party Applications” - workflow. Media Composer Help.
> **Note:** Optionally, you can use the Export function. The Export dialog box also
has an Export To Pro Tools template that can be modified and used for exporting your sequences and media.
b Duplicate the final video sequence and name it appropriately.
Checklist: Broadcast-Post Workflow for Editing Teams on Interplay Step Refer to ...
b Right-click on the duplicated sequence and choose the Send To > and “Exporting With the Send To the template that you set up for the export. Templates” - Media Composer Help.
b If necessary, enter a new file name for the exported sequence.
Click the Set button and select the storage location for the exported files.
b Click OK to begin the Export process.
If you are doing a video mixdown with the export, it may take some time depending on the length and quality of the media.
The exported sequence will be displayed in the bin.
b If you exported to a shared storage device, the sequence and any associated media should be placed in the proper location for the audio editor.
b If you are not sharing storage, then you need to copy the exported sequence and any linked or embedded media to a portable drive, and send it to the audio editor.
b When you open the AAF (or import the MXF) in Pro Tools, the project type is automatically inherited by the Pro Tools session. If you want to view the video while you are editing, you can enable the Avid Video Engine option.
b After the audio sweetening session is complete, you can export the session as an AAF.
If the video editor only needs the resulting mix, and not all the audio tracks, export the audio session to a media file such as aiff, wav, or QuickTime.
b If you exported to a shared storage device, the sequence and any associated media should be placed in the proper location for the audio editor.
b If you are not sharing storage, then you need to copy the exported sequence and any linked or embedded media to a portable drive, and send it to the video editor.
Assembly and Finishing Most film and scripted TV productions require special effects, color grading and audio mixing enhancements. When these are outsourced to third-party tools, Media Composer is used as the hub for the reassembly of these effects into the final sequence. Media Composer can then finish and output the sequences in high-resolution (2K+) and other common broadcast and mobile formats.
When it comes to assembly of outsourced effects from other systems, metadata is an important aspect for seamlessly conforming the final sequence. With the AAF file exchange, all metadata is preserved to allow relink to the newly rendered media from the external systems. If the 3rd-party system does not support the AAF format, you can re-import the finished sequence/segment using an EDL instead.
Checklist: Broadcast-Post Workflow for Editing Teams on Interplay Step Refer to ...
b If you have a sequence that was edited in HD and needs to be remastered in high-resolution, you simply need to open the HD sequence and switch it to a high-res project.
Any effects applied in the HD sequence will scale according to the new project size.
> **Note:** Titles will need to be edited in the NewBlue Titler that now replaces
the Media Composer titling tool for higher than HD projects.
b If you have not already done so, relink to the source media so “Relinking to the Source Media” on that you can add the necessary finishing touches to the high- page 95.
resolution media.
b If you are simply replacing clips that were outsourced for special effects, you can place the newly rendered media in the b Eyeon Fusion and the Baselight for Avid products support the Outsource workflow. If you send a segment to these products (over shared internal storage), the newly-rendered media will automatically be available when you playback your Media Composer sequence.
No additional steps are required.
b If the entire sequence was sent for color grading or audio “Exchanging Sequences with DaVinci sweetening, you can import the AAF that was exported by the Resolve” on page 103.
external application.
If the 3rd-party system, generated new MXF media, you will need to place the media in the AvidMediaFiles\MXF\ folder.
When the AAF is imported it will automatically relink to this media.
If DPX files were generated, then place these files in an appropriate folder on your shared storage.
b Before synchronizing your audio and video, read about recommended practices.
b Add the necessary titles and other finishing touches to your sequence.
Outputting Sequences with Media Composer When the production is complete, the final master can be packaged and output to various delivery formats for cinematic release or TV broadcast. Depending on your client's delivery specifications, you will need to either export the final sequence with the combined video and audio, or deliver the audio and video components separately.
Media Composer can export masters in several formats.
(cid:129) Cinematic Release:
- You can export your sequence to XAVC-I or QuickTime (MXF OP1A), or Apple ProRes QuickTime (on a Mac only with the proper codec installed).
- You can export your sequence to H.264 for review and approval of content over the Internet.
Checklist: Broadcast-Post Workflow for Editing Teams on Interplay - In cases where you need a film out, you can use Media Composer to output to a series of DPX or Cineon images (with an appropriate LUT) for recording to film.
- There are several third-party applications that can package a Media Composer mixdown for DCP.
(cid:129) TV Broadcast: If you are delivering a final master for broadcast or DVD format, you can output file-based footage in formats as high as UHD or HD RGB 4:4:4. For a complete list, refer to the Avid Supported Video File Formats document on avid.com.
Third-party (UHD) and Avid video servers (HD) handle both small and large facility requirements for playback and playout operations.
(cid:129) Webcast or Social Media Outlets: There are a variety of digital file formats (such as QuickTime, MP4, and MXF) for web or mobile delivery.
Step Refer to ...
b If you have been using low resolution proxy clips for editing, “Relinking to the Source Media” on make sure that you relink to the source clips or higher quality page 95.
proxies so that you can finish and output at the quality required “Relinking to the Proxy Media” on for distribution.
page 95.
during the output process.
There are a number of high-quality DNxHR rendering choices.
Choose the best quality for your delivery requirements but keep in mind the storage and speed trade-offs.
b Cinematic Release b You have the choice of exporting the sequence to MXF “Exporting DNxHR Media as MXF OP1a, QuickTime or Apple ProRes QuickTime (on Mac OP1a” or “Exporting QuickTime systems only with the proper codec installed). Movies” - Media Composer help.
b If the sequences will be recorded to a film medium, you “Exporting as DPX” in the Media can output to a series of DPX files. Composer Help.
b If you need to provide a DCP master, generate a mixdown of your sequence for transfer to a third-party applications that can create the DCP bundle.
b TV Broadcast b If the sequence will be broadcasted in UltraHD, you have the choice of exporting to MXF OP1a, QuickTime or Apple ProRes QuickTime (on Mac systems only with the proper codec installed).
b Place the final file on a portable drive to send to the transmission facility.
b If you have a high-res sequence and need to output to “Preparing for Converting HD HD or SD, then you need to first downconvert the Formats” project.
Checklist: Broadcast-Post Workflow for Editing Teams on Interplay Step Refer to ...
b If you intend to broadcast in HD directly from Media “Playout from Media Composer” on Composer to an AirSpeed 5000, use the Send to page 104.
Playback option.
Checklist: Broadcast-Post Workflow for Editing Teams on Interplay Checklist: Broadcast-Post Workflow for Editing Teams on Interplay 2 Workflows: Broadcast-Post Broadcast stations, production companies, post houses, and audio post facilities need to stay connected and in constant contact to meet tight deadlines and stringent quality requirements. Offline editing, sound post, effects and graphics work can take place at different facilities, and Avid editing tools and interconnectivity solutions support the file interchange workflows between these specialized post facilities.
High-shoot ratios also require ample amounts of storage to provide editors with access to all the footage. As such, it becomes important to have a strategy for the efficient management of this media.
Broadcast-Post productions fall into the following categories:
(cid:129) Scripted TV productions (Soap Operas, sitcoms, TV series) (cid:129) Unscripted TV productions (Reality TV, lifestyle shows such as travel, cooking, and talk shows) (cid:129) Documentary TV productions With the proliferation of high-resolution digital cameras on the market today, production facilities need to ingest source material from 2K, UltraHD, and higher resolution sources; edit quickly and efficiently in HD or high-res; and deliver to whatever resolutions are required for the final output.
Even though the programs are still being broadcasted at HD, facilities need to preserve the original high-resolution content to maintain quality for future reversioning and distribution.
Avid also supports business workflows for media re-purposing and distribution, and has partnered with a wide range of technology partners to create a new metadata exchange standard for the media production industry. Please refer to avid.com for a list of Avid partner solutions.
Broadcast-Post Workflow for the Standalone Editor Working with high-resolution media requires significant processing power on your editing system, along with high-bandwidth connectivity to large capacities of storage. This section outlines the recommended workflow for editing high-resolution projects with Media Composer, Pro Tools, and 3rd-party systems.
Broadcast-Post Workflow for the Standalone Editor The diagrams below give a general outline of how you can ingest high-resolution media, edit with high or low-res proxy media, and then output in HD or high-resolution formats.
(cid:129) Link and Edit workflow: Works well for short-form productions such as trailers or promos shot with camera formats that are supported natively in Media Composer. You can link and consolidate the source media directly to high-quality MXF and begin editing immediately.
Link and Edit Workflow ACQUISITION CREATIVE DISTRIBUTION EDITORIAL Broadcast in UHD or HD Output HD Transmission masters Avid AirSpeed Video Server Direct link to source media on portable drives Publish UHD or HD masters to portable storage Audio & Video Edit with Render Mixdown/ high-res Effects Export UHD Broadcast in UHD or HD Deck or media Video Ingest Server (e.g. Sony PWS-4400) Consolidate Source Material 3rd Party via DMF Video Output Servers ISIS 5500/7500 or Local Storage 4K Generate AAF Outsource Workflow/ AAF Exchange new media Exchange GRADING AUDIO EDITING & SPECIAL EFFECTS & MIXING 3rd party system Pro Tools (cid:129) Proxy Edit workflow: Generally better for longer productions as it’s more efficient to transcode the media to a lower resolution to save storage space. You can link directly to the source media files and transcode them to low-resolution proxies for editing. Later, you can relink to the source files to render the sequence at a higher resolution for output.
Broadcast-Post Workflow for the Standalone Editor Proxy Edit Workflow CREATIVE EDITORIAL ACQUISITION Media Composer 8 DISTRIBUTION O u tp u t H D A u di o & V i d e o D i re c t l in k t o Trans m is si o n m a sters A v i d A i rS p e e d Ca m e r a D r i v e s s o u r c e m e d i a V i d e o S e rv e r Publish UHD masters Decks Copy source to portable storage material to nearline storage Edit with Relink to Assemble outsourced 4K Cameras proxy media Hi-Res media effects, mixdown and a n d r e nder export media 3rd Party e ff e c t s Video Output Servers Copy/Transcode/ Nearline Avid ISIS C o n so l i da t e D N x H R m e d i a High-Capacity or Local Storage via DMF Avid ISIS 5500/7500 or Local Storage Generate Outsource Workflow/ AAF Exchange AAF Exchange GRADING AUDIO EDITING & SPECIAL EFFECTS & MIXING 3rd party system Pro Tools Stage Description ACQUISITION 1 Media is usually transferred from various devices (camera cards, portable drives to a more robust central or local storage for the editing stations to access. The original media can be consolidated to a high-quality, native OP Atom format, or transcoded using a low complexity, low bandwidth DNxHR codec that is condusive to editorial.
(cid:129) Manually linking to the source media to preview the footage and creating master clips of media; then transcoding all clips to MXF (DNxHR).
(cid:129) Using automated profiles (Dynamic Media Folders) to copy/consolidate/ transcode the source media to the shared storage and generating master clips of native and/or transcoded MXF media.
(cid:129) Using third-party tools to create MXF media.
STORAGE 2 A mix of local and shared storage options can be used for the original media coming from the cameras, as well as the transcoded proxies.
For example, high-density storage can store large files at a smaller cost per GB if you transcode the media to lower-res proxies for offline editing.
And the high-bandwidth storage is a good solution for the final editing stages when media is consolidated at a higher quality and better performance is required.
Contact Avid sales for details on which Avid NEXIS or Avid ISIS storage is best for your workflow.
Broadcast-Post Workflow for the Standalone Editor Stage Description CREATIVE You can use either the source or proxy media for the editing process. Media EDITORIAL Composer allows easy relinking to the desired media quality.
3 In the Link & Edit workflow:
4 (cid:129) Link directly to the footage on the portable drives and begin building your sequence. In the meantime, use the DMF to run a background process to consolidate all media from portable drives to the Avid shared storage.
(cid:129) Media Composer will automatically relink to the media in its new location so that you can continue editing with the high-res media directly from the Avid shared storage.
(cid:129) Apply effects and render them to generate new media.
In the Proxy Edit workflow:
(cid:129) Review field footage and build a sequence using the linked master clips.
(cid:129) Use the DMF to run a background process to copy the source media from portable drives to the shared storage. At the same time, transcode the media to a lower resolution suitable for editing.
(cid:129) Switch to proxy mode and edit your sequence using the proxy media on the shared storage.
(cid:129) When you are ready to perform the finishing process, switch the proxy mode off, relink to the high resolution media and render/export.
GRADING & SPECIAL EFFECTS 5 If you are sending the sequence to a 3rd-party system for grading and effects, then export an AAF or EDL from Media Composer.
The 3rd-party system links to the associated media via the AAF/EDL.
The finished segments are sent back to Media Composer via a new AAF and with new media generated in formats such as MXF (DNxHR/HD), DPX or Apple ProRes.
> **Note:** Third-party systems that support the Outsource workflow can update the
Media Composer sequence with new media without the use of AAFs as long as the media is placed in the same storage location used by the Media Composer project.
AUDIO EDITING & MIXING 6 Along with the video edit, Media Composer can create basic audio tracks with surround sound and audio effects for sweetening in Pro Tools. The audio tracks can be exported to an AAF with separate exports of the media files (e.g. QuickTime). If the destination Pro Tools system has an Avid video peripheral or a Video Satellite system, the video tracks can also be exported as part of the AAF.
Pro Tools can create any other necessary audio tracks for dialog, ADR, foley, music, and sound effects in either mono or stereo. When the final audio sweetening session is complete, it is mixed down, and both the AAF and audio media are exported back to Media Composer.
DISTRIBUTION Media Composer and/or Media Composer with the Symphony option acts as the hub for the reassembly of outsourced effects or full conform. The final titling and finishing touches are conducted and editors have the ability to output sequences to common mastering formats for cinematic release or TV broadcast (UHD, HD, or SD).
Broadcast-Post Workflow for the Standalone Editor Stage Description 7 Mixdown and export the sequence to a high-resolution or HD delivery format.
8 Avid AirSpeed can be added to the send to playback list in Media Composer for the transmission of HD sequences for HDTV; while high-res sequences can be packaged and sent to broadcast facilities for distribution to 3rd-party UHDTV video servers.
9 Copy the cinematic or UHD masters to a portable storage for distribution via a 3rd party.
Checklist: Broadcast-Post Workflow for the Standalone Editor This section outlines the basic workflow for editing and finishing high-resolution, file-based footage on a Media Composer system. Follow the steps below in the order that they are listed.
> **Note:** If you are editing stereoscopic media, you should also refer to the Avid Stereoscopic 3D Editing
Workflow Guide for specific guidelines pertaining to acquiring and editing 3D media.
Before you Begin Step Refer to ...
b Learn about high-resolution files and how they are “Working with High-Resolution handled in Media Composer. Media” on page 62.
“What's the Difference between Resolution and Size?” on page 64.
“What is Color Management?” on page 65.
b Learn about the different ways that you can acquire “Acquiring High-Resolution Media” your file-based media. on page 109.
b In Media Composer, Dynamic Media Folders (DMFs) “Automatically Linking Media from a and background transcode/consolidate processes bring Third Party Device” on page 135.
greater efficiency to the media acquisition stage. Learn how you can set up Production Services profiles to automate the acquisition of media in different resolutions.
b Know the different types of media you will need to “Avid Supported Video File Formats” acquire and then determine the project and delivery - avid.com format(s) at which you will edit and output your “High-Resolution Sequence Formats sequences.
Supported by Media Composer” on page 114.
Organizing your Media With an Avid shared storage solution, you can quickly increase collaboration in your facility. There are Avid storage solutions for small workgroups, as well as for larger networked facilities. The storage solution that you choose depends on the number of editing stations that will be connected to the storage, the bandwidth that you require for reading/writing of large file sizes, and the need to have high availability.
Broadcast-Post Workflow for the Standalone Editor Avid ISIS and Avid NEXIS storage solutions support real-time playback of high-resolution media formats in both native and proxy formats. Smaller facilities with fewer connected clients can copy their footage from the camera storage or shuttle drive to Avid storage, link to this media, and/or transcode to a lower proxy resolution for the editing process. Finishing processes can also be conducted directly from the same storage with good performance playback of proxy formats.
Step Refer to ...
b Avid storage solutions support real-time playback of high- Avid ISIS Performance Guides - resolution media formats. www.avid.com.
Determine the number of client workstations and the media “DNxHR Family” on page 117.
quality they will need to access. (The number of streams qualified per client depends on the media resolution being used.) b Determine your storage requirements and strategy for the “Considerations when Editing with placement of your source, proxy, rendered, and archived media. File-Based Media” on page 51.
b Work out the folder structure for your media and then move “Setting a Structure for your File- your media using the automated file ingest functions in Media based Media” on page 53.
Composer described later in this workflow.
Contact Avid sales for details on which Avid NEXIS or Avid ISIS storage is best for your workflow.
Creating a High-Resolution Project Media will originate from different sources such as high-resolution digital cameras, film frames scanned to files, SD or HD tapes, computer-generated motion graphics, and audio recorders. Each of these media sources can have different sizes, resolution, frame rates, compression and color encoding (color model, gamma, bit depth, sample rate, etc.).
Media Composer gives you the ability to acquire media coming from different sources, regardless of their size or resolution, and mix them freely in the Timeline. Of course, all this media needs be regulated to one frame size based on the primary delivery requirements, hence it is important to set a common frame size, frame rate and aspect ratio for the editing process. In addition, you also need to set a common color space for all media used in the sequence so that a common color transformation model is applied to all clips.
Step Refer to ...
bStart Media Composer and create a project using an UltraHD, “Creating a New Project” on page 122.
4K or 2K high-res project preset.
“High-Resolution Sequence Formats
> **Note:** These settings can be modified on a per sequence basis.
Supported by Media Composer” on page 114.
bIf you have a sequence that was edited in HD and needs to be remastered in high-resolution, you simply need to open the HD sequence and switch it to a high-res project.
Any effects applied in the HD sequence will scale according to the new project size.
> **Note:** Titles will need to be edited in the NewBlue Titler
that now replaces the Media Composer titling tool for higher than HD projects.
Broadcast-Post Workflow for the Standalone Editor Step Refer to ...
bIf you will be using media from different sources, you “Creating a New Project” on should set your project frame size to the highest delivery page 122”.
format. Any acquired media will be formatted to fit the project’s frame size.
bIf your master will be delivered in multiple formats, you can “Viewing Sequences with Mask specify mask margins on the project frame to simulate the Regions” on page 96.
dimensions of the output image.
bIf you have decided to use the Link and Edit workflow, you can link directly to the footage on the portable drives and begin building your sequence. Alternatively, if your media is supported natively by your Avid ingest station, you can first consolidate all footage from the portable drives to a high-bandwidth storage to get improved performance with your high-res media.
bIf you want to optimize your storage space and get even better “Using a Proxy Workflow” on page 72.
performance from your system, it’s best to work in proxy mode.
When you set the proxy mode, all clips on the timeline, “Setting the Proxy Mode for the regardless of their resolution, will be played and rendered at the Timeline” on page 73.
selected proxy (1/4 or 1/16).
> **Note:** 1/4 and1/16 proxy modes are not currently supported in
an Interplay environment.
Avid recommends that you transcode your source media to a low complexity DNxHR format that maintains raster size, aspect ratio and provides several quality settings for high quality images.
> **Note:** “Video Quality Options for Playback”
You can also change the video quality modes on the in the Media Composer help.
timeline to achieve more reliable playback.
bSet your project color space. “Creating a New Project” on page 122.
bIf you will be sending your project for conform or effects on a “Creating a New Project” on page 122.
3rd-party system that does not support high frame rates, you can choose a more compatible editing timebase.
bConfigure the settings on your various display monitors to edit “Setting the Display Properties for and view the footage. Media Composer Viewers” on page 91.
Enabling the Ingest Functions in Media Composer When working with media coming directly from digital cameras or other media-creation applications, editing stations connected to a digital camera or card reader can link to almost any file- based media to create clips.
Some media formats are supported natively in Media Composer and can be linked or imported directly. Other formats that are not natively supported will need supporting plug-ins developed by the camera manufacturers. The Avid Media Access (AMA) plug-in architecture allows direct and instant access to a variety of camera codecs available today. The ability to sort, log, and instantly edit linked media has distinct advantages for many program workflows, especially those with quick turnaround demands.
Broadcast-Post Workflow for the Standalone Editor Understanding the advantages and disadvantages of linking depends on several factors and there is no hard and fast rule for whether you can successfully edit using linked clips for the entire process or whether you will need to transcode.
Considerations are:
(cid:129) amount of footage to storage ratios (cid:129) expected system performance (e.g., lots of layers, multicam, etc.) When working with high-res media or productions with high-shoot ratios, transcoding is recommended. The Dynamic Media Folder feature (DMF) in Media Composer provides the ability to automate tasks such as transcode and consolidate for improved efficiencies. Profiles can be set up to run automated media acquisition actions on the specific drives/folders where the original media is located. These profiles can be configured to automatically move and/or transcode the media to a nearline or shared storage. All media is processed and managed in the background while you do your editing. When ready, you can update the bins to refresh the metadata for each clip and point to the new path(s) on the Avid NEXIS or Avid ISIS storage.
> **Note:** These background services do require additional processing resources, and are not enabled by
default.
Step Refer to ...
b Media Composer supports several high-resolution formats. You “Avid Supported Video File Formats” - can link to these formats using plug-ins and consolidate or avid.com transcode them to resolutions that are suitable for your editing workflow.
b Refer to the compatibility matrix to determine and/or download http://avid.force.com/pkb/articles/ the plug-in that supports your media type. en_US/Compatibility/Media- Composer-AMA-Plugin- Compatibility-Chart b Check to see if you have all the necessary plug-ins to support “Viewing the Installed Plug-Ins” on your file-based workflow. page 135.
Avid plug-ins are automatically installed with Media Composer. Third-party plug-ins can be downloaded from the vendor web site.
b Install the necessary plug-ins on your workstation.
b Install the latest supported version of QuickTime. Go to the Apple web site to download QuickTime.
b Select the appropriate Link settings. “Link Settings” on page 1258.
b If you intend to use automated functions to copy/transcode/ “Starting and Stopping Avid consolidate your media, make sure that you enable the DMF Background Services” on page 358.
and Background Transcode services.
“Minimum RAM Recommendation” -
> **Note:** These services have certain processing requirements for Media Composer Readme.
your system.
b Set the storage location for any transcoded or consolidated “Media Creation Settings” on media that will be generated. page 1262 Broadcast-Post Workflow for the Standalone Editor Using Media Created from the Dailies Process There are many companies that provide tools and technologies to streamline the preparation of dailies. The dailies process involves the fixing of timing errors, duration problems, audio/video synchronization, framing, and color grading. Also, for footage shot in 3D, there are additional fixes required to adjust color and spatial alignments between the left/right eye images. Not all these functions need to be completed in the dailies as they can be undertaken in the video editing application. Your workflow, timescale, storage capacity and other criteria will determine the flexibility in the pipeline.
The dailies systems also inject the necessary metadata to facilitate other downstream editing processes. Once the footage has been pre-treated and identified for editorial, it is typically passed on in the form of transcoded MXF or QuickTime files. The processed media is then sent to the creative editorial suite along with the associated clips, AAFs, EDLs, and/or ALEs carrying the necessary metadata.
The dailies files need to be sent to the editorial suite where the media is placed on the storage for access by Media Composer editors.
Step Refer to...
b Media that has already been preprocessed by a dailies “Linking to MXF Media” on page 94.
application can use an AAF with and ALE to link and import the media.
Media Composer will create master clips for this MXF media.
Acquiring Media with Avid Media Composer When working with media coming directly from digital cameras or other media-creation applications, editing stations with a connected digital camera or card reader can link to almost any file-based media to create master clips.
In Media Composer, you can link and create your master clips manually, or set up automated background processes that will do this for you. If you are editing with media that has already been pre-processed by a dailies application, see “Using Media Created from the Dailies Process” on page 39.
Step Refer to...
b Read the workflow recommendations for the camera from which See your third party documentation..
your footage originated.
b Connect the camera or portable media drive to your system. The device will be recognized as a volume on your system from which you can read the media files.
Broadcast-Post Workflow for the Standalone Editor Step Refer to...
b You can either import or link to your high-res media. “Acquisition and Management of Media” on page 110.
Avid supports many file formats which allows you to edit either with the source media or with the transcoded media. “Editing Directly with Source Media” on page 40, or “Editing with Transcoded Media” on page 41.
Changing Source Properties of Master Clips To ease the editorial process, Avid provides a number of tools to preview the original essence from the camera and make adjustments to the incoming media. These adjustments typically include general color and spatial adjustments that need to be applied to all files from the same camera.
Preparation of media for the editorial process should take place on the linked master clips so that they will available for the finishing stages if necessary. In Media Composer, any adjustments such as frame size, color transformations or playback rates made to the master clips are applied as source adapter effects.
After media has been acquired and the master clips have been created in the bin, you will be able to view and adjust the media properties from a single Source Settings view.
Editing Directly with Source Media The Avid Media Access (AMA) plug-in architecture allows direct and instant access to a variety of camera codecs available today. The ability to sort, log, and instantly edit has distinct advantages for many program workflows, especially those with quick turnaround demands. The advantages and limitations of linking media depends on several factors. As such, there is no hard and fast rule for whether you can successfully edit using linked clips for the entire process, or whether you will need to transcode.
Considerations are:
(cid:129) amount of footage to storage ratios (cid:129) expected system performance (e.g., lots of layers, multicam, etc.) (cid:129) working on a SAN (cid:129) comfort level of managing all aspects of media versus using Avid’s MediaFile management system When working with media coming directly from digital cameras or other media-creation applications, editing stations connected to a digital camera or card reader can link to almost any file- based media to create clips.
If you want to edit directly with the source media format, you need to check if it is supported natively by Avid. i.e. Avid has the codec to read the media and wrap it as an MXF format that can be managed by Media Composer. If not, there is usually an plug-in from the camera manufacturer that can be installed on your editing system. You can use this plug-in to link to the media, however, real-time editing is not guaranteed, and it is best to transcode the media for editing as described in the “Editing with Transcoded Media” topic.
Broadcast-Post Workflow for the Standalone Editor Once you link to the media, the Dynamic Media Folders (DMFs) can process and manage all media in the background while you do your editing. If you want to continue editing with the high-resolution media, then set up the DMF profile to consolidate the source media to native MXF media.
You also have the option of switching to a proxy workflow at any time during your edit by setting the appropriate proxy mode. This will allow you to playback your clips at a lower resolution without transcoding.
Step Refer to ...
b Link to the media and create master clips of the footage that you \“Linking File-Based Media” on b Preview the clips and create the necessary subclips.
b Optional. Automatically create master clips of all the “Creating Dynamic Media Folders” footage on your drive using Dynamic Media Folders on page 352.
(DMFs).
b Build your sequence using the linked master clips.
b Use background consolidate to convert the source media to ““Background Consolidate and native Avid MXF media. Transcode” on page 337.
b During editing, you can also use the proxy mode. This will play “Using a Proxy Workflow” on back the sequence and render any effects at 1/4 or 1/16th of the page 72.
resolution.
Editing with Transcoded Media For long-form projects, or cases where you have high shooting ratios or high resolution formats that do not have good performance, you may want to transcode all your media to a compressed DNxHR or DNxHD resolution for offline editing. This allows you to save storage space when previewing clips to build your sequences. High-res file sizes tend to be large, so the real-time playback of media on the timeline may be compromised. Once the final cut has been made, you can then relink the high- res media for the finishing process.
You will also need to transcode your media if the format is not supported natively in Media Composer. i.e. Avid does not have the codec to read the media and wrap it as an MXF format that can be managed by Media Composer. For these media formats, there is usually an plug-in from the camera manufacturer that can be installed on your editing system. You can use this plug-in to link to the media, however, real-time editing is not guaranteed, so it is best to transcode the media.
> **Note:** The transcoding may take a long time, however, you do have the option of performing this as a
background process while you continue to edit with the linked clips. Media Composer provides configurable profiles to automate the copying of media from external drives, creation of master clips, and transcoding to proxy media.
In an Interplay environment you could also use the Interplay Transcode Services to perform similar operations. The profiles also handle the check-in of clips and media to the Interplay database.
Broadcast-Post Workflow for the Standalone Editor Step Refer to ...
b Transcode your source media to a lower resolution to create “Editing with Low-Resolution Proxy transcoded clips. Media” on page 92.
You can also use the proxy mode. This will playback the “Using a Proxy Workflow” on sequence and render any effects at 1/4 or 1/16th of the page 72.
resolution.
b If there are high amounts of media files that need to be transcoded, you can automate the process using:
- Avid Transcode Services “Working with the Transcode Service” - Interplay help - In Media Composer, run the transcode as a background “Background Consolidate and process so that you can continue editing your sequence. Transcode” on page 337.
- In Media Composer, you can also automate the “Creating Dynamic Media Folders” transcode process by setting up an automated DMF on page 352.
profile.
“Transcoding a Bin using Automated Profiles” on page 92.
b If you have created a new bin for your transcoded clips, give it an appropriate name.
b Build your sequence using the transcoded clips.
b Sequences will play back at the proxy mode set for your project. “Setting the Proxy Mode for the Media will also be rendered at this resolution. Timeline” on page 73.
During the editing process, you can change the proxy mode of the project, however this will require that you re-render any pre- computed media.
b Use FrameFlex to set new frame dimensions, or remove “Reframing your Media” on page 74.
unwanted areas from certain clips.
You can also pan over clips to follow the important action.
“Panning a Shot” on page 79.
b When working with media of different frame sizes than the “Reformatting the Media to fit the project, the media will be adapted to fit the project frame size Project Frame Size” on page 80.
according to the reformatting options in the Source Settings tab.
If required, you can change this setting for individual clips.
b If a certain “look” was created by the Director of Photography “Applying External LUTs to your during the film shoot or dailies stage, you can apply an imported Media” on page 88.
LUT to selected clips using the Color LUT effect.
b If changes were made to the source or proxy clips in the bins, “Refreshing Sequences to Use Current the sequence must then be refreshed to update these changes Clip Attributes” - Media Composer onto any clips that are already on the timeline. help.
b Once the offline edit is complete, you can relink to the source “Relinking to the Source Media” on media for the finishing process. page 95.
Color Correction and Dailies Systems There are many “dailies” software solutions for file-based formats. Refer to the list below.
Broadcast-Post Workflow for the Standalone Editor When transcoding in third-party applications, be aware of the black and white levels of the resulting file to ensure they meet Rec. 709 video standards. In 8-bit terms, video black is 16|16|16 RGB and video white is 235|235|235 RGB. When exporting directly out of REDCINE X PRO to Avid MXF- wrapped DNxHD or DNxHR, there is a setting for scaling to legal video levels. Many applications work full swing across the entire RGB level set (0-255 in 8-bit terms), this setting will scale 0-255 to 16-235 to look correct on a calibrated Rec. 709 monitor.
If the dailies software does not bring in the media at the correct levels, you can link to these files and use the LUT support in Media Composer, to apply a ‘full range to Rec. 709 LUT’ and create the proper video levels for your projects.
LEGEND B Both D Dailies C Color Correction (B) Assimilate Scratch color corrector (B) Blackmagic Design DaVinci Resolve (B) FilmLight Baselight color correction system (B) Mistika finishing, compositing, stereo 3D and color grading system (D) Gamma and Density 3cP on-set color correction system (D) Flexxity, BonesDailies DFT, Digital Film Technology Weiterstadt (D) YoYotta YoYo (C) Autodesk finishing, VFX and color grading systems (C) Adobe SpeedGrade color corrector (C) Digital Vision/ Nucoda Film Master color corrector (C) Pandora Revolution color corrector (C) Synthetic Aperture Color Finesse Outsourcing Special Effects & Grading Jobs Productions that need to add special effects, color grade, or conform at the native resolution of the camera originals will need to look to systems that support these types of resolutions. Depending on complexity of project, turnaround time, and number of VFX, plug-ins, and titles, the ability to conform most, if not all, of the creative decisions is a time saver.
The market has seen an explosion of mastering tools over the past few years at price points available to all. Digital Intermediate (DI) tools have expanded their feature sets not only with color correction for high-end features, but also to reach into other markets such as broadcast, cable, and independent productions. Each version increases the level of conform available, targeting a more seamless conform process.
Broadcast-Post Workflow for the Standalone Editor The two interchange methods for conforming in these systems are via EDLs or AAFs. Depending on the system, AAF is usually the preferred method, but mileage may vary between vendors depending on complexity of timeline with VFX, plug-ins, nested elements, and such, as well as the depth to which the third-party system has for parsing the information. Avid also provides for an XML presentation of the sequence, but more as a sequence breakdown to parse elements in a database or as part of a pull process prepping elements in a DI workflow. Information on the XML schema and dictionary can be found on (http://www.avid.com/US/resources/filmscribe).
Select the entire sequence, or just segments that require special visual effects processing and send them to a separate internal or external facility along with the selected source media. The special effects editor will import the AAF and relink to the source files at the original resolution to perform compositing, special effects and color grading. With some effects (such as Eyeon Fusion and the Avid Baselight plug-in) you can also use an Outsource workflow and the timeline will automatically update with the new media once you have rendered the effect in the external tool.
After adding the necessary audio and visual effects, the sequence is rendered to the required delivery format and exported back to Media Composer along with the new media.
Follow the checklist below to generate an AAF for a third-party system.
Step Refer to ...
b To color grade, apply special effects, or perform audio mixing See “Color Correction and Dailies in another application, you will need to export an AAF or EDL. Systems” on page 42 to make sure that the correct color levels are maintained Consult with the Effects editor or Colorist to determine the when using media from upstream format that they require.
systems.
b Prepare your sequence for export. “Preparing to Export a Sequence” - Media Composer help.
b If you have not already done so, relink to the source media. “Relinking to the Source Media” on page 95.
b If you are working with pre-processed media and need to request original camera media that is not currently on your storage, you can generate a pull list to create a concise list of footage to be re-transferred at the higher resolution.
b Before generating the AAF, you may want to simplify the “Exporting a Simplified AAF” - sequence, especially in the case of multicam sources. Instead Media Composer help.
of sending all the sources, whether they were used or not, the sequence can be optimized to remove the group information and only reference the camera angle/take used in the final sequence.
b If you need to pass on changes to a sequence that has “Creating a List” in the Media already been outsourced to another system for effects Composer help.
or finishing, you should generate a change list instead of exporting a new sequence.
b Export the sequence. “Exporting Sequences to External Applications” on page 101.
b If you a performing a QuickTime workflow with Adobe “Linking to QuickTime Media” in the After Effects, there is a difference in how the roundtrip Media Composer help.
works with DNxHR.
Broadcast-Post Workflow for the Standalone Editor Step Refer to ...
b You will also need to send the corresponding media at the best quality. This can be done while exporting the AAF.
Exporting a Sequence for Audio Editing & Mixing Basic audio tracks with surround sound and audio effects can be created in Media Composer and later sweetened in Pro Tools. The key to maintaining a high level of interoperability between Media Composer and Pro Tools is to use an AAF file. This is currently the best format for transferring and reassembling the sequence or session composition from one application to another.
When you transfer your sequences to a Pro Tools system, you may want to transfer just the audio. If you want to send video as well, you must render all your video tracks and export them as MXF or QuickTime.
When the AAF is opened in Pro Tools, it populates a new session with all the audio and/or video metadata needed to recreate any initial edits done in Media Composer. Clips in the sequence automatically link to the media. Pro Tools can also edit with accompanying video by either importing or viewing the playback from a connected Media Composer Video Satellite system. With the video satellite, you view playback as long as the project type is supported in Pro Tools and Media Composer with the HD Sync.
> **Note:** Pro Tools does not currently support higher-than-HD sequences. Any high-resolution sequences must
be downconverted to HD (MXF or QuickTime) before being exported to Pro Tools.
When you import the AAF in Pro Tools, it will adjust the session frame rate to match the imported sequence. However, the sequence must be a frame rate that is supported by Pro Tools or the sequence will not import successfully. Also, you cannot import a sequence of a different frame rate once a sequence is already imported.
During the audio editing session, you can enhance the rough audio track (also known as the "guide track") produced by the video editor. The markers help spot where sound effects need to be added.
You can also view any volume automation, clip gain or pan automation information imported for individual tracks and easily add and manipulate break points using the Pro Tools editing functions.
Create other necessary audio tracks for dialog, ADR, foley, music, and sound effects in either mono or stereo. When the final audio sweetening session is complete, mix it down, and export the AAF with audio media back to Media Composer.
Step Refer to ...
b Before you begin the export process, read about the ways in which “Preparing to Export a you can optimize your sequence for a quick and easy export. Sequence” - Media Composer Help b Pro Tools does not currently support higher than HD sequences. If you are working in a high-resolution sequence, you must switch the project resolution down to HD and render/mixdown the sequence.
b You must also ensure that you are using a frame rate that is supported “HD Resolution Sequence by Pro Tools. Formats” on page 116.
If you need to change the frame rate, you will need to open a new HD sequence at that frame rate, and drop the former sequence into it.
Broadcast-Post Workflow for the Standalone Editor Step Refer to ...
b Unless you are sending the sequence to an Avid | Video Satellite system, all effects need to be rendered or mixed down before the AAF export.
You have a number of choices when sending your sequence to Pro “Transferring Audio Files” - Tools. The following are more commonly used: Media Composer Help b Export an AAF with embedded audio. “Exporting AAF Sequences with Special Options” - Media Composer Help.
b Export the video separately as MXF or QuickTime. “Exporting QuickTime Movies” - Media Composer Help b For a Pro Tools Video Satellite system, you can just export the AAF.
> **Note:** FrameFlex and Color Adapter effects are not
recognized in Pro Tools, so the sequence will need to be rendered if these effects were used.
The media files can be placed on a shared storage, or packaged separately to be sent to the audio editor. When the AAF is imported into Pro Tools, the media will automatically relink.
b If you need to pass on changes to a sequence that has “Creating a List” in the Media previously been sent to Pro Tools for sound effects or mixing, Composer help.
you should generate a change list instead of exporting a new sequence.
b You can either use the “Export to Pro Tools” preset that is already “Creating a Custom Send To preconfigured with the compatible options, or create a similar export Template for Exporting to template with options that streamline your specific production Third-Party Applications” - workflow. Media Composer Help.
> **Note:** Optionally, you can use the Export function. The Export dialog
box also has an Export To Pro Tools template that can be modified and used for exporting your sequences and media.
b Duplicate the final video sequence and name it appropriately.
b Right-click on the duplicated sequence and choose the Send To > and “Exporting With the Send To the template that you set up for the export. Templates” - Media Composer Help.
b If necessary, enter a new file name for the exported sequence.
Click the Set button and select the storage location for the exported files.
b Click OK to begin the Export process.
If you are doing a video mixdown with the export, it may take some time depending on the length and quality of the media.
The exported sequence will be displayed in the bin.
Broadcast-Post Workflow for the Standalone Editor Step Refer to ...
b If you exported to a shared storage device, the sequence and any associated media should be placed in the proper location for the audio editor.
b If you are not sharing storage, then you need to copy the exported sequence and any linked or embedded media to a portable drive, and send it to the audio editor.
b When you open the AAF (or import the MXF) in Pro Tools, the project type is automatically inherited by the Pro Tools session. If you want to view the video while you are editing, you can enable the Avid Video Engine option.
b After the audio sweetening session is complete, you can export the session as an AAF.
If the video editor only needs the resulting mix, and not all the audio tracks, export the audio session to a media file such as aiff, wav, or QuickTime.
b If you exported to a shared storage device, the sequence and any associated media should be placed in the proper location for the audio editor.
b If you are not sharing storage, then you need to copy the exported sequence and any linked or embedded media to a portable drive, and send it to the video editor.
Assembly and Finishing Most film and scripted TV productions require special effects, color grading and audio mixing enhancements. When these are outsourced to third-party tools, Media Composer is used as the hub for the reassembly of these effects into the final sequence. Media Composer can then finish and output the sequences in high-resolution (2K+) and other common broadcast and mobile formats.
When it comes to assembly of outsourced effects from other systems, metadata is an important aspect for seamlessly conforming the final sequence. With the AAF file exchange, all metadata is preserved to allow relink to the newly rendered media from the external systems. If the 3rd-party system does not support the AAF format, you can re-import the finished sequence/segment using an EDL instead.
Step Refer to ...
b If you have a sequence that was edited in HD and needs to be remastered in high-resolution, you simply need to open the HD sequence and switch it to a high-res project.
Any effects applied in the HD sequence will scale according to the new project size.
> **Note:** Titles will need to be edited in the NewBlue Titler that
now replaces the Media Composer titling tool for higher than HD projects.
b If you have not already done so, relink to the source media so “Relinking to the Source Media” on that you can add the necessary finishing touches to the high- page 95.
resolution media.
Broadcast-Post Workflow for the Standalone Editor Step Refer to ...
b If you are simply replacing clips that were outsourced for special effects, you can place the newly rendered media in the b Eyeon Fusion and the Baselight for Avid products support the Outsource workflow. If you send a segment to these products (over shared internal storage), the newly-rendered media will automatically be available when you playback your Media Composer sequence.
No additional steps are required.
b If the entire sequence was sent for color grading or audio “Exchanging Sequences with DaVinci sweetening, you can import the AAF that was exported by the Resolve” on page 103.
external application.
If the 3rd-party system, generated new MXF media, you will need to place the media in the AvidMediaFiles\MXF\ folder.
When the AAF is imported it will automatically relink to this media.
If DPX files were generated, then place these files in an appropriate folder on your shared storage.
b Add the necessary titles and other finishing touches to your sequence.
Outputting Sequences with Media Composer When the production is complete, the final master can be packaged and output to various delivery formats for cinematic release or TV broadcast. Depending on your client's delivery specifications, you will need to either export the final sequence with the combined video and audio, or deliver the audio and video components separately.
Media Composer can export masters in several formats.
(cid:129) Cinematic Release:
- You can export your sequence to XAVC-I or QuickTime (MXF OP1A), or Apple ProRes QuickTime (on a Mac only with the proper codec installed).
- You can export your sequence to H.264 for review and approval of content over the Internet.
- In cases where you need a film out, you can use Media Composer to output to a series of DPX or Cineon images (with an appropriate LUT) for recording to film.
- There are several third-party applications that can package a Media Composer mixdown for DCP.
(cid:129) TV Broadcast: If you are delivering a final master for broadcast or DVD format, you can output file-based footage in formats as high as UHD or HD RGB 4:4:4. For a complete list, refer to the Avid Supported Video File Formats document on avid.com.
Third-party (UHD) and Avid video servers (HD) handle both small and large facility requirements for playback and playout operations.
(cid:129) Webcast or Social Media Outlets: There are a variety of digital file formats (such as QuickTime, MP4, and MXF) for web or mobile delivery.
Broadcast-Post Workflow for the Standalone Editor Step Refer to ...
b If you have been using low resolution proxy clips for editing, “Relinking to the Source Media” on make sure that you relink to the source clips or higher quality page 95.
proxies so that you can finish and output at the quality required “Relinking to the Proxy Media” on for distribution.
page 95.
during the output process.
There are a number of high-quality DNxHR rendering choices.
Choose the best quality for your delivery requirements but keep in mind the storage and speed trade-offs.
b Cinematic Release b You have the choice of exporting the sequence to MXF “Exporting DNxHR Media as MXF OP1a, QuickTime or Apple ProRes QuickTime (on Mac OP1a” or “Exporting QuickTime systems only with the proper codec installed). Movies” - Media Composer help.
b If the sequences will be recorded to a film medium, you “Exporting as DPX” on page 863.
can output to a series of DPX files.
b If you need to provide a DCP master, generate a mixdown of your sequence for transfer to a third-party applications that can create the DCP bundle.
b TV Broadcast b If the sequence will be broadcasted in UltraHD, you have the choice of exporting to MXF OP1a, QuickTime or Apple ProRes QuickTime (on Mac systems only with the proper codec installed).
b Place the final file on a portable drive to send to the transmission facility.
b If you have a high-res sequence and need to output to “Preparing for Converting HD HD or SD, then you need to first downconvert the Formats” project.
b If you intend to broadcast in HD directly from Media “Playout from Media Composer” on Composer to an AirSpeed 5000, use the Send to page 104.
Playback option.
Broadcast-Post Workflow for the Standalone Editor 3 Managing your Media Considerations when Editing with File-Based Media Your Avid editing system can work directly with footage that is already in digital file format, such as files from digital video cameras or film scanning processes. Avid Media Access (AMA) is a plug-in architecture that allows you to link to clips and preview footage directly from a storage device without necessarily importing the media into your storage.
To link to a particular file-based format, you need the appropriate plug-in installed on your editing system. There are a number of plug-ins that can be downloaded from the Avid.com/AMA web page or participating third-party web sites. Install the plug-ins designed for the types of media that you will be editing.
You may begin editing with the linked source material immediately. If the media management needs of the project are not great, the project does not require several streams of video to play concurrently (as with multicam sources), and the CPU and storage is up to the task, then the offline process can continue using linked media.
System performance when editing with linked media also depends on whether the Avid editing system supports the media format natively or non-natively. NATIVE codec support means you can work with the camera media without the need to transcode first. NON-NATIVE codec support means that the media must first be imported or transcoded before the Avid system can manage it.
Media formats that have native codecs can be consolidated. Consolidating simply rewraps your files as Avid MXF OPAtom media, and places them into the Avid MediaFiles folder for indexing.
Consolidating preserves the camera's original codec e.g. XDCAM stays XDCAM; DVCPRO HD remains DVCPRO-HD. The respective storage rates of the data, however, are not reduced when media is consolidated given the same original span of the media.
Media that is non-native can also be linked and edited with AMA, however, with some file formats, there may be performance delays when playing the clips. Should you need better playback performance, you can transcode the original files to a lower-resolution proxy format. Transcoding takes the original essence and converts it to either Avid DNxHR, DNxHD or DNxSD media in a different codec with a data rate of choice. If you are transcoding to SD, then you can expect much less storage requirements for the offline. If you transcode to HR or HD, depending on the resolution you go with, you may get little or no storage reduction benefit, but will appreciate the improved performance with Avid’s native codecs.
If you are using shuttle drives that go back and forth between the field/film set and the post- production facility, the media should first be copied to a more robust storage. When you have large amounts of footage to preview, you may have several of these storage devices connected to an Avid system. Moving your original camera essence to a nearline Avid storage, or 3rd-party drives, allows you to keep a safe location for all your incoming footage. It also gives you the opportunity to organize your files into a folder structure that facilitates the searching, editing, and management of the media. Although this means that a lot of capacity is required to hold media that might be discarded later in the editorial, it will certainly save you time during the editing process.
Considerations when Editing with File-Based Media This footage can then be transcoded to a lower resolution for editing. The transcoded media is best placed on a central storage for all Avid systems to access. Transcoding all the camera files to low-res proxies on a high-bandwidth primary storage saves space and allows you to work with better playback performance for the editorial. For the finishing, you may then transcode just the required media to a higher, output-quality resolution on the primary storage. Finally, if your project needs to be delivered in a higher-than-HD format, you can consolidate and move the original camera essence to a primary storage where it can be accessed by the finishing applications.
ACQUISITION INGEST & CREATIVE EDITORIAL 5 OUTPUT & DISTRIBUTION Audio & Video cameras or shuttle drives Avid Media Composer VIDEO or WEB Final master D E L I V E R A B L E S (Symphony option) Copy (H D , S D , D V D , BLU-RAY, WEB) AMA-link to source 3rd-party stack of drives Transcode Transcode to SD to HD for offline for conform Link to media ISIS 5000/7000 Storage Avid Pro Tools 3 AUDIO EDITING/ MIXING Link to FILM, VIDEO or WEB Final master source media DELIVERABLES (2K+, HD, SD, DVD, BLU-RAY, WEB) Avid DS or FINISHING & Finishing SPECIAL EFFECTS application In an Avid Interplay environment, the relink process is dynamically managed. The system tracks the different media qualities and spans, then automatically links to the resolution that you request for finishing workflows. On editing systems that are not managed by Interplay, you will need to self- organize your original and transcoded clips. For example, you can organize your clips into separate “source” and “proxy” bins to allow you to differentiate between the different media qualities. This will allow you to open and use the appropriate bin depending on the resolution that you require for either the editorial or finishing stage.
Here is a suggested order in which you can prepare, edit and conform your file-based media:
1. Move the media from the camera drives to a more robust, high-capacity drive and organize the
files into a proper folder structure that works best for your facility's workflows—see “Setting a Structure for your File-based Media” on page 53 for rules on structuring your folders.
2. After the files are organized, connect the storage to your Avid editing system(s) and AMA-link
to the appropriate folders to create the necessary bins containing the linked master clips.
3. At this time you should create any necessary columns in your bins and add information that will
properly identify your clips for the downstream conform process.
Setting a Structure for your File-based Media
4. Any preparation of media for the editorial process should take place on the AMA-linked master
clips so that they will available for the conform stage as well. These adjustments typically include general color and spatial adjustments that need to be applied to all files from the same camera. When transcoding your media, you will have the option to apply these adjustments to the new media.
5. Transcode all your footage to a low-res format (e.g. SD or DNxHD 36) resolution optimized for
the offline workflow and place it on a local or shared storage.
6. Build a rough-cut of your sequence by previewing and cutting with the transcoded clips.
Once you start editing on the timeline, any color or spatial adjustments need to be applied to the transcoded clips in the bin. You then need to refresh the sequence(s) in order to propagate the adjustments to the timeline.
7. If Media Composer has difficulty with real-time preview of effects, you can either render your
effects to create new media, or try changing the timeline setting from green/green to green/ yellow or yellow/yellow—see “Options for Controlling Real-Time Effects Playback” in the help.
8. Relink your sequence to the bins holding the source clips and continue the finishing process on
Media Composer, or export the sequence as an AAF/EDL for color grading or effects on other editing systems.
9. Assemble the finished effects in Media Composer and render the sequence at a higher-resolution
for output.
Setting a Structure for your File-based Media Avid recommends moving all your camera footage to a robust storage, and organizing the source files in a manner that will ease the search for specific footage.
In general, organize your media and associated files as follows:
(cid:129) Original media: Place the files in a designated folder on the shared storage, and make sure the other editing stations have access to it.
(cid:129) MXF media: Place the files in the Avid MediaFiles folder on the shared storage (\Avid MediaFiles\MXF).
(cid:129) AAFs, LUTs, or CDLs: Any sequence or camera files associated with your media should be placed in a project folder on the shared storage where you can import them into Media Composer.
For the source media, you can structure and name the parent folders as you see fit (e.g. REDCAM1, REDCAM2, Day 1, Day 2) but it is important that the actual card structures from the camera remain as they were shot. Typically, these folders contain metadata files that need to remain with the camera media.
Embedding Metadata in your Clips When organizing your files, keep the following in mind:
(cid:129) Folder names should be limited to 14 characters.
(cid:129) Folders names should be only letters, numbers, and underscores – no spaces or symbols. You will not be able to link to a volume or file if the file path name has an illegal character. Linked clips display offline if the file path name you are linking to contains illegal characters, including < > : “ / | ? *. for Windows and : for Macintosh.
(cid:129) During the linking process, you can select a subfolder containing the media files. Media Composer can find and link to these files as long as they are not more than 2 folder levels down from the selected folder.
(cid:129) Windows UNC (Universal Naming Convention) paths are supported when linking media. You can move your bins from a Windows system to a Macintosh system and from a Macintosh system to a Windows system. The media files need to reside in the same shared location when you move the bins to and from different operating systems.
After all media has been moved to the storage, create an archive of the organized drive for backup.
During the editorial process:
(cid:129) Do not rename or reorganize the folders with the original media once the editorial has begun.
(cid:129) Do not delete the clips or bins created by the linking process. You can close them and reopen them later when you need to relink to the original media either on Media Composer or another editing system.
Embedding Metadata in your Clips In most post-production workflows, you can pre-process your media in a third-party dailies application, edit a program in an Avid editing system, and then transfer your program to another Avid or third-party system for final grading. Similarly, within Media Composer, you can start by linking to source media, edit with low-res media (proxies), and then relink back to the source media for output.
Unlike tape-based workflows—where tapes are physically labeled and correlate to those labels when captured—it is easy to lose track of file-based media. The only physical source is a file on a drive. If a file is moved from the location where it was at the time the initial ingest was done, finding the media can become a very manual process. If you intend to move your projects to or from other systems for pre-processing, effects, or finishing, something important to note is the origins of the source files.
Embedding Metadata in your Clips Avid recognizes and tracks the filename and this should not be changed. Other systems might interpret Source or Reel ID as filename options, which can have an impact on the relinking to the source files or final conform. Also, some of the dailies solutions that license the Avid Media Toolkit (AMT) can create native MXF-wrapped DNxHR media directly from the system. Third-party applications will each manage the source essence metadata differently.
Additional bin columns with information such as Camroll, Camera, Labroll, etc. should also be added to the master clips prior to performing any transcodes. Although these column names are rooted in film-centric workflows, they can be used in a more modern, file-based context. Camroll could be the "card" number or asset number assigned by the production; Camera could be the manufacturer and model of the Camera, and Labroll could be the RAID drive itself (Labroll being appropriate since it's the amalgamation of several camera rolls). This may become useful downstream, as these columns can be used as source in an EDL.
The strength of Media Composer’s metadata management allows for all formats of source tracking to be managed and output in either EDLs or AAFs as needed in the post-production pipeline. You can create as many user-defined entries as desired—they will all be tracked and made available for downstream use. For a complete listing of all data entries that can be tracked, managed and manipulated, refer to the Avid Metadata Logging and Tracking document in the Avid Knowledge Base.
Any additional information that you are adding, for file tracking or as notes, needs to be applied on the original master clips (and not on the transcoded proxy clips) so that the information is carried from the offline to online editorial—see “Preparing your File-based Clips for Downstream Processes” on page 55.
Preparing your File-based Clips for Downstream Processes Many productions may choose to use the linking process to quickly view the footage in real time, make notes and comments, then transcode to an offline resolution. The advantage of this process is that all notes and comments created at this point will persist throughout the editorial.
Any information, along with additional comments and media descriptions must be applied to the source clips (and not on the transcoded proxy clips) so that the metadata is available when relinking the sequence back to the original camera essence. If the sequences will be finished with other editing systems, this metadata will also be needed for further processes.
For a complete listing of all data entries that can be tracked, refer to the Avid Metadata Logging and Tracking document on avid.com.
To add information to the master clips:
1. Change the default bin display by adding the necessary columns to the bin holding the source
clips. Amongst others, the column headings that should be shown include: Name, Take, Camera, Camroll, Labroll, Tracks, FPS, Format, Video, Auxiliary TC1, Start, End, Duration, Drive, Tape ID, Source File, Source Path.
2. Create a custom bin display setting and save it.
At the top of the bin, there is a button labelled “Untitled” by default. Click on it and choose Save As... to enter a name for the bin display.
3. Create other bins that you will use to store your file-based media, and apply the custom bin
display setting to them so that the necessary columns will be displayed.
4. Refer to the tables below for further actions that need to be taken for certain bin columns.
Embedding Metadata in your Clips If your workflow involves... Take these steps...
Relinking between source and If your editing system is not within an Interplay environment, you transcoded clips will need to manually relink to the clips of the desired quality.
See “Metadata for Relinking Processes” on page 57.
Creating DNxHD proxy material The important consideration here is how the source files are going via a dailies process to be created by the dailies creation systems. These systems will always put some form of source filename in the Tape column.
See “Metadata Interchange for Applications using Avid Media Toolkit (AMT)” on page 59.
Exchanging clips/sequences via an See “Metadata for EDL Interchange” on page 58.
EDL:
Exchanging clips/sequences via an Some third-party systems do not recognize conforming sources AAF: being tracked in the Source File column when using AAF as legacy workflow and vendors’ implementations have always been to track sources in the Tape field.
See “Metadata for AAF Interchange” on page 57.
Applying CDL values to the media: Media Composer does not track whether the CDL values were baked-in to the essence media or not, so you should create a custom column to track whether these values were already applied during the dailies creation.
Repurposing Audio Data from When AutoSyncing, Media Composer always defaults the name of BWF Files: the resulting .sync clip to the name of the video clip. But in a file- based world, the name of the file is a less than relevant name to the editor, such as A004C010_20100610_R1JL in the case of an ARRI- created Apple ProRes file. If the Scene and Take were logged on set, the resulting Name of the clip, once imported, will be Scene/Take in the “Name” column.
Before AutoSyncing, create a custom column and duplicate the contents of the “Name” column into that column by using “command-D” or “control-D” and selecting SoundRoll from the pop up dialog box. Once the clips are synced, select the custom column with the Scene/Take information and duplicate it back into the Name column. In two easy steps, all clip names from that day’s dailies are named.
The entire BWF filename ends up in the TapeID column, which is not available as a source when generating EDLs. It is suggested that you highlight the entire TapeID column and create a “duplicate column” by using a “command-D” or “control-D” and selecting SoundRoll from the pop up dialog box. This will copy the entire contents from one column to another and is now available when creating an EDL.
Embedding Metadata in your Clips Metadata for Relinking Processes Linking offers the advantage of allowing you to transcode material to a lower resolution at any stage of the process. In order to easily relink between your source and transcoded clips, you need to do the following:
(cid:129) Verify that the frame rate of your original clips matches the frame rate of your project. e.g. if your media is 23.98 fps, you must be working in a 23.98 fps project.
(cid:129) Make sure that you make the adjustments as described in the table below.
You will be required to create custom columns and duplicate information between columns. If you don’t know how to do so, refer to Adding Customized Columns to a Bin” and “Copying Information from Another Cell in a Custom Bin Column” in the help.
Column Take these steps...
Name Initially, this is the name of the camera file. You can rename this to something more relevant (i.e. Scene 32B-2, instead of MVI_3722) Drive Important! The drive name will change after you transcode to SD so add it to the Tape ID or other custom column to keep a record of where the clips originally came from.
Tape ID If this column does not already contain data, select the “Drive” column and duplicate into this column. (Choose Control + D (Windows) Command + D (Mac) and select Tape ID from the window that pops up.)
> **Note:** Important: If TapeID already contains metadata, already as in the case of
BWF import, then create a custom column to place the Drive information.
Take Copy the file name into the Take column, thus preserving the original file name (in case the clip gets renamed during editorial).
Camera Enter the camera model number into this column (example: 5D, 7D, 60D, C300, Sony F3, REDONE, P2) since once the clips is transcoded and/or renamed, it will be less apparent what camera created the file.
Camroll Use this field to introduce a “Tape Name,” a barcode number, an asset or library number etc.
Auxiliary TC1 Important! Since Avid v5.5, all Quicktime-based sources that lack native TC have their creation date dropped into this column in the form of video TC. (Example: a 5D file created 20 seconds after 8:30pm would thus become 20:30:10:00) (cid:129) Do not apply an Avid Tape Name. This will interfere with the relink during conform. Instead use Camroll as the proper field to introduce a “Tape Name”, a barcode number, an asset or library number, etc.
Metadata for AAF Interchange AAF (Advanced Authoring Format) is an open standard originally initiated by Avid, but quickly adopted by many vendors, hence an association was created. The association is now called the Advanced Media Workflow Association (http://www.amwa.tv/) and anyone can join and participate in the definition of the open standard.
Embedding Metadata in your Clips There are two types of AAF export available in Media Composer: AAF and AAF Protocol. AAF Protocol is a subset of the AAF, as its primary goal is to establish a well-defined, albeit more constrained, set of the AAF to ensure 100% compatibility between vendors. An AAF Edit Protocol may not support all the latest VFX and layer/nested elements in a composition. As such, it sits between an EDL (most basic representation of a sequence) and AAF (most rich representation of a sequence). The added advantage of AAF Edit Protocol export with Media Composer is that it can be used for media that is currently being managed and edited via AMA. The richer form of the AAF file can only be exported if the AMA-linked media has been transcoded and managed by Avid in the Avid MediaFiles folder structure. The same goes for EDL creation; in order to create an EDL from an active AMA-linked sequence you open the bin directly from within EDL Manager as the integrated “get sequence” function relies on an AAF interchange.
Some third-party systems do not recognize conforming sources being tracked in the Source File column when using AAF as legacy workflow and vendors' implementations have always been to track sources in the Tape field. If this scenario presents itself, generating an EDL will solve the problem at the risk of losing some of the supported additional VFX metadata.
AAF export presents a variety of options, but when referencing the original camera assets and not the MXF proxy, a “link to” is all that is needed. Additional management is based on track selection as well as spans within the track, depending on conform needs at the time of generation. For example, just the video tracks may be sent to a DI color correction system, while an audio-only AAF is sent to an Avid Pro Tools system. There are no further options to select as all related metadata of the sources and sequence creative decisions are in the AAF file.
Before generating the AAF, the user may want to simplify the sequence, especially in the case of Multicam sources. Instead of sending all the sources, whether they were used or not, the sequence can be optimized to remove the group information and only reference the active camera angle/take used in the final sequence.
Metadata for EDL Interchange In Media Composer, the following columns can be used for source identification in an EDL depending on where that source file name is being tracked:
(cid:129) Tape (cid:129) Source File The following are available as options to override Tape or Source File if needed.
(cid:129) Labroll (cid:129) Camroll (cid:129) SoundRoll In some scenarios, a version of the source file may exist in either Tape/Source File and in a column such as Labroll or Camroll. This is due to the fact that some cameras such as RED and ARRI ALEXA will provide an 8-character version of the filename to either support a legacy CMX3600 EDL format or NLE system that does not track and generate full filenames in the EDL. In these scenarios, the “8 character” Reel ID can usually be found in either the Labroll or Camroll columns.
Embedding Metadata in your Clips Here’s an example of an ARRI ALEXA Apple ProRes recorded file where there are two source file names available for the same file:
(cid:129) A064C001_120524_R2G4 (cid:129) A064R2G4 The longer file name will be tracked in either the Tape or Source File column, while the shorter 8- character version will be in either the Labroll or Camroll column. How and where these file names get tracked is based on a variety of factors: where the vendors choose to track them, where the software solution providers decide to track them, and in the end, where the individual user wants to track them.
Any of this information, along with additional comments and media descriptions, must be applied to the source clips (and not on the transcoded proxy clips) so that the metadata is available when relinking the sequence back to the original camera essence—see “Preparing your File-based Clips for Downstream Processes” on page 55.
As mentioned earlier, depending on how dailies got created: via a third-party system, direct tape capture, or AMA/Import, the source identification will most likely fall into either the “Tape” or Source File” column in the bin. Since an EDL has to have some form of reel ID, Tape and Source File are combined as the default setting for EDLs. The result is that EDL Manager will first look to a value in Tape and use that; if none is found, then it will look to Source File.
Metadata Interchange for Applications using Avid Media Toolkit (AMT) Some of the dailies solutions that license the Avid Media Toolkit (AMT) can create native MXF wrapped DNxHD media directly from the system. Some systems may only use the freely available Avid DNxHD QuickTime codecs and create the same essence with a QuickTime wrapper rather than MXF. All of these can work, but will have some impact on different parts of the workflow and the amount of source essence metadata being managed. Also note that native MXF-wrapped DNxHD media cannot be imported directly into a bin. These files must be copied or moved to a folder within the Avid MediaFiles/MXF/ folder hierarchy.
A few things to keep in mind when using footage created by AMT in third-party applications:
(cid:129) Media created by these solutions are not associated with an Avid project name. These files can be used in any project, but when looking at them in the Avid Media Tool, they will not be associated with a project. The only way to associate media with a project is to have that project create the media in the first place via a tape capture, import, link, render or transcode.
(cid:129) Source ID of the original camera media is only tracked in the TAPE column once in Media Composer. Only linking and direct import into Avid will use the original filename (as seen at the directory level including extension) in the Source File column. There may very well be a mismatch between this and a direct import of the same file, which needs to be considered and managed accordingly. Media Composer now has improved flexibility in relinking files being tracked in different columns and with varying different nomenclature.
(cid:129) Some systems will insert both the filename and the reel ID from raw files into the ALE file that can then be merged to the dailies to have both sources being tracked. Other systems will allow exporting of MXF wrapped DNxHD without any Tape or Source File ID which will cause problems in relink or conform downstream. Ensure that a REEL ID is always assigned.
(cid:129) Audio transcoded via AMT does not have the ability to be addressed on the ¼ frame boundary for accurate sub-frame syncing. This feature only works when audio media is created within a film-based project (35mm, 3 perf or 35mm, 4 perf) in Media Composer.
Embedding Metadata in your Clips
> **Note:** The new iXML AMA plug-in will not allow subframe resync when in a film project.
(cid:129) Limited metadata is added to the MXF wrapper, usually containing the source ID and timecode via the START column only. All other metadata is typically exported as an ALE file (Avid Log Exchange), if offered, which can be merged into the master clips before editing starts.
Any of this information, along with additional comments and media descriptions, must be applied to the source clips (and not on the transcoded proxy clips) so that the metadata is available when relinking the sequence back to the original camera essence—see “Preparing your File-based Clips for Downstream Processes” on page 55.
4 Working with High-Resolution Media Post-production facilities have to deal with a growing variety of high-resolution media types and files-brought in by clients. Different cameras produce a variety of high-res files, many of which are extremely large, and can be extremely costly to store. Real-time performance is difficult as these large files can also choke network bandwidth, slowing or completely stalling any number of steps in the production process.
New specifications in color management and High Dynamic Range, including DCI-P3 and Rec. 2020 as well as formats like Sony S-log gamma, and others, introduce new pressures into the evolving high-resolution landscape.
Media management becomes essential when working with high-res files. That's why we're introducing Avid Resolution Independence, a fluid architecture that lets you work with material of any resolution and color spec, on premises or in the cloud, across your entire workflow.
What is Resolution Independence?
Avid Resolution Independence lets you take on any job in any resolution while leveraging your current infrastructure. You can handle a range of high-resolution sources, reduce the time spent during editing, deliver top-quality high-resolution masters, and save money on storage.
Resolution Independence also supports new color spaces developed for high resolution—DCI-P3 and Rec. 2020. In addition, Avid’s High Dynamic Range (HDR) support includes 12-bit data types, linear and log implementations, Avid Resolution Independence solves the problems of using high-res media in editing workflows by:
(cid:129) allowing immediate preview for most high-res formats, and native playback for high-res ProRes, AVC-I, XAVC-I, and XF-AVC media (cid:129) transcoding media to disk that is high-resolution but lightweight using the DNxHR codec and permitting real-time editing (cid:129) providing flexibility to playback the media as 1/4 resolution or 1/16 resolution providing further improvements in real-time performance The Media Composer Editing Pipeline The following diagram shows the different points in the pipeline where you can set your image format properties for display and output. It also indicates the places where the color transformations are applied in order to maintain the proper color appearance from acquisition to output.
The Media Composer Editing Pipeline Only displays region within output frame size/mask Composer Full Screen Playback External Monitor View Outputs only region w it hi n o u t p u t S e t th e R a s t e r D im e n si o n s & o u tp u t f r a m e s iz e in th e fra m e s iz e / m a sk project format settings OUTPUT Set the color space for TO TAPE the project Set the mask region in the Target settings O p e n /C r e a t e N e w P r o j e c t M e d ia Reformats media to Uses the project settings Set the Source Size and project settings to play back the effect framing area in the Source settings Transforms original color EXPORT encoding to the TO FILE project color space Exports only region Capture within output MEDIA Media Media is saved at the original frame size (with format option to set a different frame size) Set the Source Size and The color information can The render operation Interpret/set the framing area in the be saved on disk along with generates precomputes incoming media’s Capture Tool the media using the project settings color encoding & format Import STORAGE Media Set the Source Size and Option to transcode to the framing area in the working resolution (proxy) Import settings and color space
1. Open/Create a Project
Media will originate from different sources such as digital cameras, film frames scanned to files, SD or HD tapes, and even computer-generated motion graphics. Each of these media sources can have arbitrary sizes, resolution, frame rates, compression and color encoding (color model, gamma, bit depth, etc.).
Media Composer gives you the ability to capture, import, or link to media coming from different sources, regardless of their resolution, and mix them freely in the Timeline. Of course, all this media needs be output to one frame size, hence it is important to set the frame size according to your primary deliverable.
The application also needs to use a common color space for all media in the project so that a common transformation model is applied to all incoming media.
Step 2. Acquire and Interpret Quality of the File-based Footage When linking to media, you have access to all of the pixels in the source image. However, to fit the final delivery format, you need to set the project size so that media of different sizes and formats can be reformatted to specification.
File-based media can be linked or imported. Linking to media allows you to view the image in its original format, whereas importing the media reformats the image to the frame size of the project. If you link your clips, you will be able to view the media in its full resolution and thus have greater flexibility when mapping the media to the project settings. You can use the full image or select a region to be framed, and then choose how to format the media to the project size.
When the master clips are created in the bin, any associated color metadata (coming either from the camera or other upstream processing) can also be detected and applied. Media Composer keeps all source metadata with the master clips. This metadata will also carry over in the AAF/AFE export for use in other downstream processes.
What's the Difference between Resolution and Size?
Step 3: Edit the Sequence Since high-res file sizes tend to be large, the real-time playback of media on the Timeline may be compromised. During the post-production process, this quality may only be required during the final finishing stages, so it’s best to use a lower resolution (proxy media) for the offline editing and economize on time and disk space.
Step 4. Apply Effects Any effects applied to clips on the Timeline will be applied to the area of the image displayed in the viewer. These will be processed on-the-fly during playback, or rendered to the disk storage, according to the project and proxy mode settings.
Step 5: Output the Final Sequence Media Composer gives you the ability to output your sequences to a delivery format suitable for Cinema, TV broadcast or mobile devices.
From your high-res master, you can easily choose your export options:
(cid:129) DPX files for recording to film (cid:129) output to DCP requirements for theatrical releases (cid:129) output to HD for broadcast or distribution on Blu-ray/DVD (cid:129) output to SD for broadcast (cid:129) export in various compressed formats for mobile devices Refer to the following topics for further information on working with high-resolution media:
(cid:129) What's the Difference between Resolution and Size?
(cid:129) What is Color Management?
(cid:129) Changing Source Properties on a Master Clip (cid:129) Reframing your Media (cid:129) Reformatting the Media to fit the Project Frame Size (cid:129) Setting the Color Properties of Acquired Media (cid:129) Editing with Low-Resolution Proxy Media (cid:129) Relinking to the Source Media (cid:129) Linking to MXF Media (cid:129) Rendering Effects (cid:129) Viewing Sequences with Mask Regions (cid:129) Exporting Sequences to File (cid:129) Exporting Sequences to External Applications What's the Difference between Resolution and Size?
Quite often, the terms resolution and size are used interchangeably. There is a difference between the two and it's important that we clarify the meaning of each one so that you understand how your media is formatted in Media Composer.
What is Color Management?
The resolution of the media refers to the number of pixels that compose the image. Naturally, the more pixels in the image, the higher your resolution will be, and the better the quality of the image.
The resolution is typically defined by the number of pixel columns (width) by the number of pixel rows (height).
HD images are usually 1920 by 1080 pixels, and high resolution images are typically 2K and above.
These resolutions vary depending on the camera that shot the footage. For example, an ARRI 3K image is 2880 x 1620 pixels, whereas a RED 3K image is 3072 x 1728 pixels.
In Media Composer, all incoming media needs be output to one size. Size refers to the physical space that the image occupies in a particular display area (i.e. your TV screen or a cinema screen). Size is simply used to provide a common reference for the framing of images of different resolutions. These dimensions are also in pixels.
When the image resolution is different from the project dimensions, the image must be either scaled, cropped or padded to fit in the project frame. When the image is larger than the project frame, pixels need to be removed from the image to match the size of the project frame. When the image is smaller than the project frame, Media Composer scales the image up by adding more pixels. This is done by algorithms that handle the interpolation and blending between surrounding pixels; and although there are many sophisticated resizing algorithms, the resulting image will never be as sharp as the original.
Image Size Displays the resolution of the original camera media. You can opt to use this size and override the current resolution for the selected clip. For example, you receive a 4K clip but it is mistakenly tagged as HD; you may want to reset the resolution to 4K.
This field is also a good indicator for source media that may have been preprocessed to a proxy resolution. For example, you transcode a clip from 4K to HD (without applying the reformatting).
When you inspect the source properties, the raster dimensions will be HD (e.g. 1920 x 1080), however you will see that this clip is still 4K in size, telling you that you are currently using a proxy and you will likely relink to the full 4K at some point.
Clips placed on the Timeline are treated according to their original image size.
What is Color Management?
Since most cameras record at a high precision, it would be ideal to preserve the maximum precision and color range right through the editing process. Color management enables you to retain the colors of the original images and maintain that color appearance during editing.
The DNxHR codec maintains the highest possible quality by encoding in the original 4:2:0 sub- sampling, eliminating conversions. Popular camera formats use 4:2:0 color sub-sampling and 12 bit encoding. DNxHR is able to accommodate 12-bit as well as 10-bit and 8-bit content. DNxHR maintains all these settings, minimizing errors and noise introduced by conversion and up-sampling.
The color space that you choose depends on your final delivery format needs. Media Composer supports a range of encoding methods—ITU R.BT 709 used for HD; and ITU Rec. 2020 (BT2020) and Digital Cinema Initiatives' DCI-P3 for High-Res projects. Rec. 2020, the new color standard for Ultra HD, defines a color volume which is able to reproduce four times more color than the existing HD (Rec 709) standard, allowing an amazingly natural color reproduction on appropriate monitors.
HDR During acquisition (either by baseband capture, import or link to file), Media Composer automatically detects the color encoding of the footage and allows you to choose the color space that best matches the footage. Media Composer then performs the necessary color transformation of the footage in order to map the colors to internal application functions.
The original color encoding will remain with the master clip metadata for use throughout the editing pipeline, ready to translate the image's colors for other devices at any given point (e.g. for viewing on the monitors). Part of the color encoding includes “look” tables (or LUTs) that can be passed along with the media to ensure that a consistent color is applied to all related footage. The color management system will take the colors in an image and map them as accurately as possible to the color model chosen for the editing process. This color mapping is either done 'on-the-fly', or can be rendered to new media after any effects are applied.
Color mapping also takes place on each device where you view the footage. The Avid system can be connected to a variety of monitors, and each model will display colors differently. For example, say that a certain color coming from a digital camera is turquoise blue (represented by RGB numbers R75, G201, and B220), but appears closer to sea green on a monitor. The color management system needs to translate the RGB numbers to the equivalent numbers required by the monitor in order to preserve the turquoise blue appearance. This translation is performed by setting the appropriate color profile on the monitor. If you want to simulate the colors as they will be projected for final delivery, then you must calibrate your external monitor accordingly.
OUTPUT & ACQUISITION EDITING DISTRIBUTION INTERPRET COLOR ENCODING EDIT IN DESIRED COLOR SPACE RENDER & OUTPUT IN THE & MAP COLORS TO INTERNAL APPROPRIATE COLOR SPACE COLOR MANAGEMENT SYSTEM HD 4:4:4 WEB DELIVERABLES BROADCAST TV High-resolution scanned files DELIVERABLES (UHD, HD, SD, Computer-generated files DVD, BLU-RAY) CG High-resolution digital camera files FILM DELIVERABLES Avid Media Composer HDR Avid provides post-production support for HDR with a range of log formats, 12-bit encoding, and ongoing work with industry leaders in HDR display technology. Camera manufacturers can encode their HDR source directly in DNxHR, retaining the high dynamic range of the original.
HDR Luminance Values Displayed in Nits Media Composer includes HDR waveform display types. With these waveforms (Y Waveform HDR 1000 and Y Waveform HDR 10000) you can see the HDR absolute luminance values in nits.
HDR Waveform Display types to support HDR When working in HDR projects, the traditional white point of a Rec.709 signal falls halfway on the curve once color adapters have automatically (or manually) been applied in the source settings. The dim images in the viewer will look correct on an HDR monitor.
HDR Workflow The following is a basic workflow for working with an HDR project.
Creating an HDR Project When creating a project, choose an HDR type (HLG or SMPTE2084). This defines how the media will be tagged when exporting as well as defining how the source media will be converted.
To work with an HDR project:
1. Launch the editing application.
2. In the New Project dialog, select an HDR color space.
3. Select Tools > Source Browser.
4. Link to your desired media. Color adapters will be automatically added to match the project
color space. This can be seen by right clicking on the clip and selecting Source Settings. Other color adapters can be added as well manually (such as LUTs).
HDR Example of color transformations. A PQ/Rec2020 file does not need adapter as it matches our project type.
5. Select File > Settings and click the Project tab.
6. Click the Render tab.
7. Select DNXHR HQX (or DNxHR444 on RGB projects). This is a 12-bit codec.
8. Set “Effects processing” to 16 bits. All effects will be processed at 16 bits and final result will be
stored at 16 bits. (To preserve 16-bit precision, use DNxUncompressed 16 bits or float.) HDR
9. Build and edit your sequence.
10. When performing color correction, make sure to set the scopes to view the HDR values. For
SMPTE 2084 project, you can view the luminance at 1000/10000 nits. For typical SMPTE2084 (PQ) projects, the maximum luminance should be 1000 nits. For HLG projects, the scale is calibrated 0 to 1.0 and luminance should not go above 1.0 To properly adjust the colors and levels for an HDR monitor, make sure you have an HDR monitor connected to Avid Artist I/O box.
For SDI output, manually set your monitor to the proper EOTF (Electro-Optical Transfer Function) matching the project color space.
For HDMI output, enable HDR metadata in the Settings menu (Select File > Settings and click the Site tab.) Choose the EOTF matching your project and make sure it is supported by your monitor.
> **Note:** When working with HDR projects, media in software monitors will look quite flat because of the
nature of the HDR signal. You can set the viewers to look like Rec.709 (or sRGB) to have a more pleasant experience. This does not affect the output, only the way you see the media in the viewers
11. Right-click in the viewers to change the display setting.
Left image displays typical SMPTE 2084 media and right same image viewed as Rec.709.
12. When finished editing your sequence, export using the same high bit depth codec (such as
DNxHR HQX).
Working with Color Spaces Working with Color Spaces In high-resolution and HD projects, Media Composer lets you work in either the YCbCr or RGB color space, using the project’s color space setting to control how it displays video, processes most effects, and outputs sequences.
RGB and YCbCr both separate colors into three channels, but they store color information differently. When you choose which color space to work in, you need to take several factors into consideration, including the color space of your media, your output needs, and your performance expectations for Media Composer while editing.
> **Note:** The RGB color space is not available for 720p or NTSC/PAL SD projects.
Understanding the YCbCr Color Space YCbCr performs better, but is of lesser quality.
YCbCr stores brightness (Y) separately from colors (Cb and Cr). Since humans are more susceptible to changes in light than in color, YCbCr discards half the chrominance data (one-third of the overall data) with little discernible difference to image quality. Media that uses YCbCr takes up less disk space than media that uses RGB, and less bandwidth is required to play it.
YCbCr is the only color space available for SD media, because SD requires lower bandwidths and might need to maintain backwards compatibility with black-and-white displays. When you only need SD output, you only need to work in the YCbCr color space.
Working with Color Spaces Newer HD technologies can display detailed images with sharp changes in color. Because some color data is missing, YCbCr media does not take full advantage of HD display hardware. The limited color information available in YCbCr also means that the results of effects processing are not as good as they could be with RGB media.
Understanding the RGB Color Space RGB produces higher quality images and effects, but takes up more space.
RGB separates images into their constituting colors: red (R), green (G), and blue (B) and does not discard any of the chrominance data. As a result, video images look sharper, particularly those with fast motion or abrupt changes in color. Newer HD formats support RGB only.
Because no color data is lost, Media Composer can make more precise calculations when processing effects using RGB media. The quality improvement over YCbCr processing is most noticeable in effects that perform color analysis, such as chroma keyers. Even if the original video data is in YCbCr, your should consider converting to RGB to process effects as precisely as possible.
The disadvantage of RGB is file size. Media that uses RGB takes up more disk space than media that uses YCbCr, and more bandwidth is required to play it. Some systems might not be able to handle playback of RGB material smoothly, particularly when you use the J-K-L keys to play at greater than normal speed or to play in reverse.
> **Note:** RGB media requires high bandwidth. For effective playback of multiple streams of video at higher
resolutions, you should distribute the video tracks as evenly as possible among available drives, and target separate drives for audio and video.
Choosing a Color Space for Your Project Your choice of a color space depends on both your input/output hardware and your desired output.
For information on how to define the color space for a project, see “Creating a New Project” on page 122.
If your hardware supports both RGB and YCbCr, choose the color space that corresponds to your output needs.
If your hardware supports only YCbCr, you can choose RGB for your project color space to maintain maximum quality throughout your workflow. Media Composer converts your material to YCbCr right before sending it to the hardware for monitoring or output.
The project color space specifies how Media Composer processes effects in real time. Media Composer supports native processing of effects in either the RGB or YCbCr color spaces. For example, this means that RGB media does not need to be converted to YCbCr for processing, maintaining maximum video quality until the final output.
Mixing Media of Different Color Spaces You can work with media of different color spaces in the same sequence. For example, you can mix SD YCbCr and HD RGB. When you mix media in this way, Media Composer converts media to the project’s color space when necessary. This conversion takes place internally during the processing of real-time effects and prior to output.
The color space of your media depends on its format. Tape-based SD and HD media uses the YCbCr color space. Newer HD digital formats, such as R3D, use RGB. See “Project Formats and Resolutions” on page 1306 for information about supported formats.
Using a Proxy Workflow You can check the color space of the media for any clip in your project by viewing the Color Space bin heading in the bin that contains the clip. For more information, see “Moving, Aligning, and Deleting Bin Columns” on page 275.
Using a Proxy Workflow There are two aspects to the proxy workflow in Media Composer—you can work with transcoded proxy media, or switch to a proxy mode and playback high-res media at a lower resolution.
Depending on the amount of footage you have to edit, and the quality at which you want to preview your media, you can choose to work with any one these options or, both of them in combination.
> **Note:** The proxy mode is only available for high-resolution projects. It also differs from the video quality
options (yellow/green modes) for playback, since you can also render your sequence at this mode.
(cid:129) Set the proxy mode for the Timeline to 1/4 or 1/16: Effectively, this reduces the number of pixels to be processed as you can play your sequence at 1/4 or 1/16 of the current project resolution. This can significantly improve the playback performance of your high-res media.
During playback, each frame in the sequence is transcoded on-the-fly (no files created) based on the proxy mode that you have set.
When you render any effects applied on the sequence, however, the application creates new media at this resolution. (It also uses the compression quality set in the Media Creation settings.) If you change the proxy mode, any previously rendered media at that proxy mode will not be available for playback until you return to that proxy mode. As such, it is recommended that you carefully consider the proxy mode that you want to use for your project before you render your Timeline.
(cid:129) Transcode your media to a proxy format: You can transcode all your media before creating your sequence, or you can place source clips on the Timeline and then transcode the sequence.
Media Composer offers different compression qualities to allow a significant reduction in file size with little or no adverse effect on the visual quality. These compression qualities can be set in the Media Creation dialog, under the Mixdown & Transcode tab.
In addition, you can further reduce the file size of your transcodes when you perform the transcode operation. The Transcode dialog offers the following choices:
- Project Dimensions: Transcodes the media based on the project size and the proxy mode setting.
- Source Dimensions: Transcodes the media based on the size of the original media.
- Source 1/4: Transcodes the media by reducing the size of the source by 1/4.
- Source 1/16: Transcodes the media by reducing the size of the source by 1/16.
> **Note:** For optimum performance, you can first transcode your media to 1/4 res and then set your proxy to
playback at 1/4 as well. By matching the proxy modes of the media and the Timeline, there is no on- the-fly processing required when these clips are played.
Changing Source Properties on a Master Clip Setting the Proxy Mode for the Timeline You can automatically set the playback of all clips placed on the Timeline by selecting the Proxy option in the Project Format dialog box (select File > Settings and click the Format tab). Media Composer will calculate your resolution options based on the source dimensions of the clip. You have a choice of having the clip play back at 1/4 or 1/16 of it’s original resolution; or at the same resolution as the project.
> **Note:** Any clips that are resized will have a spatial adapter applied. This will be indicated by a green dot on
the clip on the Timeline.
When you render your sequence, it will use this proxy resolution as well as the compression quality (if any) that you have set for your media creation. You can change the proxy mode at any time, however, any previously rendered media at that proxy mode will go offline. Should you switch back to that proxy mode, the rendered proxy media will still be available.
When you want to output/export your sequence, you need to turn off the proxy mode to allow all media to be set back to the full project resolution.
To set the proxy mode for your project:
- Select File > Settings, click the Format tab, click Proxy and choose the appropriate setting.
Changing Source Properties on a Master Clip To ease the editorial process, Avid provides a number of tools to preview the original essence from the camera and make adjustments to the incoming media or its metadata. Any adjustments made to the master clips are applied as source adapter effects.
Import or link to your file-based media in the usual manner. After media has been acquired and the master clips have been created in the bin, you will be able to view and adjust the media properties from a single Source Settings view.
The Source Settings dialog box detects the properties of the source media based on the metadata that was found with these files. It allows you to quickly see the properties of the input files and make changes if necessary. You can also view any framing applied on the image, as well as a histogram showing the range of colors in the image.
If there is a plug-in installed on your system for this media format, then an additional AMA Source Settings tab will be available. Any settings on this tab will be applied before the Color Encoding tab.
The Source Settings dialog box allows you to:
(cid:129) set the aspect ratio of the media (cid:129) set the color space of the media (cid:129) apply specific color transformations to the source media (cid:129) choose the way you want to format the source into the current project frame size (cid:129) select a smaller area of the overall image size to be displayed in the project frame (cid:129) interactively scale or rotate the image (cid:129) set the playback rate of the clip to adapt, or not to adapt, to the sequence playback rate.
Reframing your Media
> **Note:** Some of these settings can be set directly in the bin columns.
Imported clips will already be resized to the project size and aspect ratio. However, it is still possible to reframe or reformat the imported clip.
A Spatial Adapter effect is applied either when the clip is reframed, or reformatted to fit within the project frame size. A Color Adapter effect is applied when a color transformation applied to the clip.
A Motion Adapter effect is applied when a frame rate change is made to a clip. When the clip is placed on the Timeline, any of these changes will be indicated as adapter effects and will display as green dots on the clip. These effects can be modified with the Effect Editor and rendered to allow for smooth playback and output.
Reframing your Media For various reasons, it is common practice to shoot at a higher resolution than the final output intentions. Framing charts, that define the dimensions of the final output, have been developed for camera viewfinders so that the camera people can keep the proper perspective in view while filming.
The framing chart used during the onset shoot is usually filmed as the first frame of the shot. Some digital cameras even include these framing parameters in the file metadata that is passed through to Media Composer. During post production, these framing parameters serve as guidelines for the editing process, and this intended action area can be automatically framed to the project frame size.
Reframing your Media During the onset shoot, certain objects (such as lights, flags and other on-set equipment) may inadvertently be recorded within the main viewing area. As part of the dailies process, these objects may be trimmed out from the region of the image that is presented to editorial. If not, then the post editor is required to crop out and reframe the image as necessary.
If the framing parameters were included in the media metadata, then the Framing view will reflect the same area used during the onset shoot. If necessary, the editor can adjust these dimensions manually.
Clips are reframed by applying a spatial adapter on the clip in the bin. The Source Settings dialog has a FrameFlex tab where the dimensions of the framing box can be adjusted. The area within the framing box is what will finally be fit into the project frame when the clip is used in a sequence.
The reformatting settings for each clip are saved in the bin. When the clip is dropped on the Timeline, an icon appears on the clip to indicate that a source adapter effect has been applied. The application accesses the original image and applies the formatting during playback. Effects are applied and rendered based on these settings.
> **Note:** For clips that have already been used in a sequence, the sequence can be refreshed to frame to the
new dimensions.
When transcoding a sequence that has spatial adapters applied, Avid recommends keeping the source dimensions so that the full dimensions of the media are used—see “Using the Transcode Command” in the Media Composer help.
To set the framing dimensions:
1. Select one or more clips in the bin, right-click and choose Source Settings.
2. If the image viewers are not displayed in the Source Settings dialog, click the Show Viewers
checkbox.
3. Select the FrameFlex tab.
The framing options display with the framing box outlining the full image.
> **Note:** If framing parameters were passed from a camera vendor that is an Avid partner, then the framing
view used on set may be displayed in the viewer.
4. In the FrameFlex box, adjust the Framing parameters to set the new dimensions of the framing
box.
Option Description Raster Dimension Actual dimensions of the image.
Image Size Allows you to override the image resolution for the selected clip. This field is also a good indicator for source media that may have been preprocessed to a proxy resolution.
For example, you transcode a clip from 4K to HD (without applying the reformatting). When you inspect the source properties, the raster dimensions will be HD (e.g. 1920 x 1080), however you will see that this clip is still 4K in size, telling you that you are currently using a proxy and you will likely relink to the full 4K at some point.
Image aspect ratio Allows you to change the size of the image according to the selected aspect ratio.
Reframing your Media Option Description would indicate square pixels (1:1).
Frame aspect ratio Changes the size of the framing box according to the selected aspect ratio.
X Reposition the framing box along either the X or Y axes.
Y Size Resize the framing box proportionally.
Z Rotation Rotate the framing box.
Size matches project raster Sets the framing box to the same size as the project dimensions.
Color Set color of framing box outline in the viewer.
Reset Resets the framing to the original size.
Reformat Stretch Stretches the image (disproportionally, if necessary) to fill the project frame.
Pillarbox/Letterbox Scales the image proportionally until either the height or the width extends to the project frame. Black bands will appear on the sides (Pillarbox), or on the top and bottom (Letterbox) in order to pad the empty areas of the frame.
Centre Crop Scales the image proportionally to fill the project frame. Areas that fall outside of the project frame will be cropped.
Centre, Keep Size Centers the image in the viewer without modifying its original size. Areas that fall outside of the project frame will be cropped.
Revert Reverses any changes you made since the last time the Apply button was clicked.
Apply Applies all selections that you made so that you can see the changes in the viewers.
Reframing your Media
5. The bottom viewer displays the framed area as it would appear within the actual project frame.
Refer to “Reformatting the Media to fit the Project Frame Size” on page 80 for more details on the choices that you have.
6. Click Apply.
The new framing of the image will be applied when you drop the clip in the Source viewer or on the Timeline. A green dot on the clip in the Timeline indicates that spatial changes (in the form of a spatial adapter effect) have been applied to this clip.
7. If you had placed your clip on the Timeline before doing the reframing, you can refresh your
Timeline with the changes—see “Refreshing Clips to Use Current Clip Attributes” in the Help.
(Choose Refresh Sequence > Aspect Ratio and Reformatting Options.)
8. If you want to make further changes to the framing box from the Timeline, open the spatial
adapter effect for this clip—see also “Panning a Shot” on page 79.
Also, when you are working with FrameFlex to reframe your media, Media Composer provides a quick way to set the Image Size equal to the raster dimension. To set the Image Size equal to the raster dimension, click the button to the right of the Image size. The Image size is set to the raster dimension. Raster dimension relates to the actual pixel dimensions of the image; Image Size is the dimension that Media Composer will interpret this media.
Reframing your Media To rotate the image frame:
1. In the Source Settings dialog, use the Z Rotation option to rotate the image. Alternatively, you
can use the center handlebar in the top viewer to rotate the image.
You can also use the Rotate left and Rotate right 90 degree buttons to help you when adjusting the Framing parameters.
2. The bottom viewer displays the framed area as it would appear within the actual project frame.
3. Click Apply.
Reframing your Media The new framing of the image will be applied when you drop the clip in the Source viewer or on the Timeline. A green dot on the clip in the Timeline indicates that spatial changes (in the form of a spatial adapter effect) have been applied to this clip.
4. If you had placed your clip on the Timeline before doing the reframing, you can refresh your
Timeline with the changes—see “Refreshing Clips to Use Current Clip Attributes” in the Help.
(Choose Refresh Sequence > Aspect Ratio and Reformatting Options.) Panning a Shot If you want to pan and scan over a segment of video, you need to apply a FrameFlex source adapter to the clip in the bin. When the clip is placed on the Timeline, a green dot will appear on it and you can open the Effect Editor to change the framing box and animate it for the necessary duration—see “Reframing your Media” on page 74.
If the clip was already part of the sequence before you applied the FrameFlex source adapter, then you will need to refresh the sequence so that inherits the newly-set attributes from the clip in the bin—see “Refreshing Clips to Use Current Clip Attributes” in the Help. (Choose Refresh Sequence > Aspect Ratio and Reformatting Options.) If the clip still references the source media, you will see all the pixels in the image. You simply have to set the framing box over the area that is required in the focus and make sure that the box shifts to a new position in subsequent frames in order to follow the important action. These positions should be keyframed to create the effect of a “pan” shot.
To animate the framing parameters:
1. Select the clip on the Timeline and click the Effect Mode button.
The Effect Editor displays.
2. Select and expand the FrameFlex effect.
The Record viewer becomes your workspace to adjust the framing parameters.
Reformatting the Media to fit the Project Frame Size
3. Click in the position bar below the Effect Editor at the point in the effect where you want to add
the keyframe.
The record viewer displays the frame and the framing box.
4. Adjust the size and/or position of the framing box.
For example, drag the handles on the corners of the image to resize it, or click and drag to move the entire box. Media Composer automatically creates a new keyframe on this frame.
5. Move the position bar to another point where you want to add a keyframe and repeat the above
step.
6. Click the play button to see the results of your animation.
> **Note:** If you need to disable this effect, click the Layout button. When the button is gray, the effect is
bypassed.
If you need to reset any keyframe to the original framing dimensions, move the position bar to the respective keyframe, then press ALT and click the Layout button.
Reformatting the Media to fit the Project Frame Size In the Source Settings dialog box, you have the option to reformat the entire image or just the area within the framing box to the current project format.
> **Note:** The reformat image option is also available in the Effect Editor if you need to apply a change to a
clip on the Timeline.
Reformatting the Media to fit the Project Frame Size To reformat the image to the project frame size:
1. In either the bin or on the Timeline, select the clip that you want to change, right-click and
choose Source Settings.
The Source Settings dialog box displays with the viewer showing the first frame of the clip with the current framing dimensions.
2. Select the FrameFlex tab.
3. Select the appropriate Reformat option.
When using media of a different format from the project format, you can specify how the media will be converted in the application by using one of the modes below:
Reformat Options Descriptions Stretch Stretches the image (disproportionally, if necessary) to fill the project frame.
Pillarbox/Letterbox Scales the image proportionally until either the height or the width extends to the project frame. Black bands will appear on the sides (Pillarbox), or on the top and bottom (Letterbox) in order to pad the empty areas of the frame.
Centre, Keep Size Centers the image in the viewer without modifying its original size. Areas that fall outside of the project frame will be cropped.
Centre Crop Scales the image proportionally to fill the project frame. Areas that fall outside of the project frame will be cropped.
The results of your changes will be displayed in the bottom viewer.
Reformatting the Media to fit the Project Frame Size PROJECT FRAME SIZE SOURCE MEDIA 16:9 4:3 CENTRE, KEEP SIZE STRETCH CENTRE CROP LETTERBOX/PILLARBOX Areas of the image that fall outside of the project frame size, will be cropped. On the other hand, if the image is smaller than the project frame size, it will be padded with black.
Once a clip is placed on the Timeline, it will reformat to the project frame size according to the media conversion settings that you have chosen. Note that any reformatting options are processed on the fly during playback and do not affect the source clip.
4. Click Apply.
The new formatting of the image will be applied when you drop the clip in the Source viewer or on the Timeline.
> **Note:** You can set the default formatting optionfor linked media from the Link Options dialog (Settings >
Link > Link Options). There is a Reformatting option at the bottom of the dialog that lets you set the default for new clips.
There is also an option to set SD clips as 16:9 by default.
Example of Reframing and Reformatting The following example shows a 2K image with a framing box set around the desired area of the image. The application first crops out the unwanted area and then fits the image within the project frame size (using the letterbox/pillarbox option selected by the editor).
Setting the Color Properties of Acquired Media Defining the framing box Original 2K image Project frame size (HD) Framing box Reframing and reformatting applied Project frame size (HD) Clip reformatted padded to fit and project frame size Setting the Color Properties of Acquired Media Some cameras have the capability to embed a "look" (LUT and CDL) into each of the media files that they produce. Depending on the recording mode on the camera, this look can be included in the media file as a "final" Rec.709 clip. It can also be saved as a LogC clip with the added metadata (and the LUT) describing the color transformation to recreate that Look in another application.
The acquisition process in Media Composer preserves all color metadata from the incoming media.
This includes color information embedded in the raw footage, as well as accompanying color conversion tables (LUTs, CDLs, etc.) associated with the media to ensure that a consistent color is applied to all related footage. This information is saved with the clip in the bin.
Setting the Color Properties of Acquired Media Media Composer recognizes both LogC and Rec. 709 color spaces and applies the proper transformation for Rec.709 projects. The transformation must be enabled in the Source Settings (Color Encoding tab) of the clip. Furthermore, if the LogC clips include metadata about a Look (LUT and CDL), those transformations will also be applied during the conversion to Rec.709. Any applied transformations can be seen from the Color Encoding tab or under the Color Transformations bin column.
> **Note:** The embedded LUT in each clip is not editable nor can it be saved as "standalone" LUT.
A look-up table (LUT) is a file that contains a conversion table used to map a color value in the source image to a color value in the desired output format. LUTs are used for the following reasons:
(cid:129) To ensure a standardized color output value across different devices such as computer monitors, broadcast monitors, and film projectors.
(cid:129) To offer flexibility in editing and post-production when working with media from different sources or shot with different cameras.
(cid:129) To convert logarithmic media files to linear format prior to editing and applying effects.
(cid:129) For creative or artistic purposes to obtain a particular “look and feel” to a scene.
(cid:129) To determine how the color data of the final image will be displayed.
Media Composer automatically detects color management attributes encoded in most camera formats. Avid provides a standard set of camera conversion tables that will map the camera color values to the color space used in Media Composer. The camera manufacturers need to structure their metadata according to the Avid requirements to allow for these values to be passed on to Media Composer. Refer to the web sites of your camera manufacturers to find out if their file formats include the necessary color management attributes.
For more information on other ways that custom transformations that can be applied to your media, see “Using Color Decision Lists (CDLs)” on page 90.
To change the color encoding of the source media:
1. In the bin, select one or more clips that you want to change, right-click and choose Source
Settings.
> **Note:** Certain file formats that have a plug-in installed on your system will also reveal an AMA Source
Settings tab. In the case of RED media, for example, the color space adjustments should be made on this tab.
2. Select the Color Encoding tab.
The Source Settings dialog box displays with the viewer showing the first frame of the clip with the current color encoding.
Setting the Color Properties of Acquired Media
3. Choose the Source color space for your media, and any color transformations that you want to
apply.
Refer to the table below for your options:
Color Encoding Parameters Descriptions Source color space For some known camera formats, the application reads the color space metadata within the source media, and displays the most appropriate color space. If you know the color space of the media you can select it here and this information will remain with the clip for other downstream processes.
You may leave it as Unknown if you do not know the color space of the media. In this case, the application will leave the colors as they are.
If you click the Auto button, the application will do the necessary color mapping to go from the specified color space to the project’s color space. This color transformation will take place when the clip is used in a sequence.
[drop down list of color To apply a color transformation to the media, select an option from transformations] the drop down list and click the Add button. You can add more than one color transformation to your media.
Setting the Color Properties of Acquired Media Color Encoding Parameters Descriptions Add Add the selected transformation to the Color transformations.
Delete Select a transformation from the list of applied transformations, and click Delete to remove it.
Auto Clicking this button will apply the assigned (detected) Source color space to the media.
Bypass all color transformations Ignore all color encoding settings. This may be required if you need to send a particular segment for special effects processing without any transformations that you have applied during the editing process.
Revert Reverses any changes you made since the last time the Apply button was clicked.
Color Management Settings Insert color transformations Applies any color transformations already specified in the source automatically in the source settings settings. Do not select this option if you want to work with the upon linking original media files.
> **Note:** CDL transformations are only applied if the bin columns of the master
clip have already been populated via an ALE/EDL merge.
Use CDL values from ASC_SOP Primary color grading can be performed as one of the pre-post and ASC_SAT bin columns when functions on dailies systems and then passed on to the offline available editing system. If you are editing with MXF media, these colors are already applied. However, if you want to use the original media, you can select this option to read the CDL values associated with the media and apply them to the master clips.
Installed LUTs Displays all LUTs that have been installed on your system.
Project LUT is available only for the current project.
Shared LUT is available across all projects on this system.
Both Select LUT file Click to browse for a LUT file associated with your media. Select either Project, Shared or Both to determine where this LUT can be accessed.
Once the LUT is installed, it will be available in the list of color transformations. All sequences in the project(s) will be able to access that LUT. See “Applying External LUTs to your Media” on page 88.
4. If you know what color transformation you want to apply, select it from the drop down list, and
click the Add button.
The selection is added to the Color transformations list and applied to the image in the viewer.
Choice of color transformations Description Levels scaling (full range to video levels) To be used for media using full data range (0-255) and bring them to legal Rec.709 values (16-236).
Setting the Color Properties of Acquired Media Choice of color transformations Description Levels scaling (video levels to full range) To be used for media using Rec.709 range (16-235) and bring them to full range (0-255). Mainly used if working on a full-range Timeline or to compensate for media that was erroneously scaled by a third-party application.
Gamma 2.6 to Linear Takes media with 2.6 gamma and brings to linear gamma.
bits) and a linear gamma and applies a 2.2 gamma correction (Rec.709) while scaling the levels to become legal in Rec.709 (16-235) Linear video levels to REC709 Assumes the media is using video range data (16-235 for 8 bits) with a linear gamma and applies a 2.2 gamma correction (Rec.709) while keeping the same black and white points.
Printing Density (Cineon) to linear Used mostly with Cineon or DPX files that are derived from the film scanning process.
Automatically clamps the high white values.
SRGB (IEC 61966-2.1) to linear The gamma is similar to ITU 601/709.
Used mostly when working with standard and CRT monitors, for example to create movies for the web.
Arri ALEXA Log-C SUP 3.x to ITU 709 Converts a logarithmic Arri ALEXA image to HD Rec.
709 values that can be used for broadcast TV.
Canon C-Log to REC709 Converts a logarithmic Canon to HD Rec. 709 values that can be used for broadcast TV.
Sony 1. SLog2-SGamut to LC-709 Converts to low contrast tone. Gives better skin tone.
Both shadows and highlights are lightly compressed.
Overall color is a less-saturated 709.
Sony 2. SLog2-SGamut to LC-709TypeA Simulates a conventional digital camera. Skin tone is slightly different than Sony 1 option above. Overall color is a less-saturated 709.
Sony 3. SLog2-SGamut to SLog2-709 Total color is less saturated 709 to provide more room for color grading. Tone curve keeps S-Log2.
Sony 4. SLog2-SGamut to Cine+709 Emulates film color. Specifically designed for monitoring use.
CDL ASC_SOP=(111)...)(111)ASC_SAT=1 Applies CDL values already associated with the master clips (found in the ASC_SOP and ASC_SAT bin columns).
5. You can add more than one transformation if necessary, and change the order in which they are
applied by selecting and dragging the transformation up or down in the list.
Transformations are applied cumulatively starting from top to bottom.
6. Click Apply to propogate the settings to all clips that you selected in the bin.
Color changes will be visible in the viewer.
Setting the Color Properties of Acquired Media
7. Click OK to close the dialog box.
When clips are viewed in the Source monitor or dropped on the Timeline, any associated look files (LUTs, CDLs, etc.) are also considered when the color transformation is applied. This will be reflected when the clips are played back. You can also choose to apply these changes to any new media is generated through transcode, consolidate or mixdown.
If the clip was already part of the sequence before you applied the color adapter, then you will need to refresh the sequence so that inherits the newly-set attributes from the clip in the bin—see “Refreshing Clips to Use Current Clip Attributes” in the Help. (Choose Refresh Sequence > Color Adapters.) Applying External LUTs to your Media Avid provides a standard set of industry color transformations that you can apply as source settings directly to the master clips. Avid also provides the ability to load custom look-up tables that have been provided by the camera operator, the director of photography, the film scanning facility, or the colorist during the dailies processing. A LUT is essentially a file that contains a conversion table used to map an input color value to an output color value.
> **Note:** There is currently no support for LUT export.
The application supports two different types of LUT formats:
(cid:129) 1D LUT: A 1-dimensional lookup table maps each input channel value to an output channel value on a per-channel basis (independently for each channel R, G, and B).
(cid:129) 3D LUT: A 3-dimensional lookup table maps any given color value (R,G,B) to an output color value (R,G,B). Mistika, LUTher, Kodak KDM, and IRIDAS formats are examples of 3D LUTs that are supported.
A list of supported products or file extensions have been listed below. Other product LUTs may be supported but the first line entry of the file must appear as listed in the third column.
Product File Extension Supported first line entry Avid DS .lut AVID DS LUT Autodesk LUT: followed by the number of channels and entries IRIDAS 1D .itx LUT_1D_SIZE IRIDAS 3D .cube LUT_3D_SIZE Kodak KDM .3dl # IDENTIFICATION: 3DMODEL-3DLUT LUTher .txt #channels: c3 Mistika 3D .itx LUT_3D_SIZE The LUT has to be installed before it can be applied to the media. After the LUT is installed, the Source Settings dialog box will display it as an option in the Color Transformations list. This LUT is available to all sequences within the project.
Setting the Color Properties of Acquired Media Any changes made to these color files will be reflected in the viewer within this dialog box. Changes made in the source settings will be reflected when clips are dropped on the Timeline. For clips already on the Timeline prior to the changes, you will have to refresh the sequence. (Right-click the sequence and choose Refresh Sequence > Color Adapters).
> **Note:** Changing the settings for a master clip will also propogate these changes to subclips that were
created prior to the changes. Similarly, any changes made to the subclips will be applied to the parent master clip.
To install an external LUT:
1. Select File > Settings, click the User tab and select Color Management.
2. Select Project, Shared or Both depending if you want this LUT available to all projects or not.
3. At the bottom of the dialog box, click Select LUT file.
4. Browse for your file, select it and click Open to install it.
The LUT is now available in the list of color transformation in the Source settings. This LUT will be part of the project. All sequences in the current project will be able to access that LUT.
Imported LUTs are stored in the project folder in which the LUT was imported. There is currently no way to differentiate LUTs intended for all projects versus LUTs that are project specific. If you want your LUTs to display in any new or existing project, you can manually copy the LUTs folder in a given project folder to:
- OS X: Library/Application Support/Avid/ColorManagement/LUTs folder - Windows: /ProgramData/Avid/ColorManagement/LUTs folder You will need to copy the LUT as well as the XML file of the same name.
To apply an external LUT to your media:
1. On the Timeline, or in the bin, select the clip that you want to change, right-click and choose
Source Settings.
2. Select the Color Encoding tab.
The Source Settings dialog box displays with the viewer showing the first frame of the clip with the current color encoding.
3. Click the drop-down menu below the list of Color transformations.
The installed LUT(s) will be listed at the bottom, prefixed with the word External.
4. You can apply more than one LUT to the media and change the order in which they are applied.
To delete an external LUT from the color transformation list:
- External LUTs are stored with the project. These LUTs can be deleted so that they no longer
appear in the drop-down menu below the list of Color transformations.
To remove the LUTs from a project, you must delete them from the LUTs folder on a per project basis. Navigate to the project folder(s) where they were installed (Documents > Avid Project > Project name > LUTs) and delete the appropriate LUT file.
Setting the Color Properties of Acquired Media Using Color Decision Lists (CDLs) With the many steps, processes and applications used in a postproduction workflow, maintaining consistency of picture color values has been difficult. This complex problem has been addressed by the American Society of Cinematographers, which has developed the ASC Color Decision List (CDL). A CDL (color decision list) is a simple color transformation format that allows cinematographers to assign looks to images that carry through the postproduction pipeline.
The CDL values can be exchanged via an ALE, EDL or CDL file. These values transfer the color information between processes in the postproduction workflow in a way that enables images to maintain a consistent look as they move from system to system.
CDLs are used for the following reasons:
(cid:129) to convey the intent of the Director of Photography (decisions made on-set) (cid:129) transferring primary color grading values from dailies or media preparation stations to the offline editing stations (cid:129) as a starting point for finishing stations to perform the final grading Primary color grading can be performed as one of the pre-post functions on dailies systems and then passed on to the offline editing system. If you are editing with MXF media, these colors are already applied. However, if you decide to use the original media, then you may want to read these values via the CDL and apply them to the master clips.
These CDL values are imported via four critical parameters—slope, offset, power and saturation.
They are stored with the clip metadata and can be exposed in the bin columns. When you export your sequence/segment as an AAF/ALE/EDL, these values are included and can be sent along to the effects specialist along with the associated media.
To enable the reading of CDL parameters:
1. Select the Settings tab.
2. Double-click Color Management from the list.
3. Select Use CDL values from ASC_SOP and ASC_SAT bin columns when available.
Any values attached to the clip from the EDL/ALE will be applied as a color transformation and can be seen in the Source Settings for the clip.
4. Any clips with CDLs to which you link will automatically apply the CDL values. For clips that
were already linked, you will need to open the Source Settings dialog and click the Auto button on the Color Encoding tab. Alternatively, you can select the CDL option from the Color Transformation list.
> **Note:** CDL values can be copied from one ASC_SOP bin column of a clip and applied to another. The
changes will not be reflected on the receiving clip until you open the Source Settings dialog and click the Auto button.
The ASC_SOP and ASC_SAT are now standard columns in the Media Composer system; they can be displayed by selecting Headings in the Bin menu. The ASC values can be edited if needed, but it is not recommended unless an error or correction has been applied to the same source clip. Changes to any values can be merged into existing clips via the ALE file merge function.
Setting the Display Properties for Media Composer Viewers Removing Color Adapters from a Sequence You can remove color adapters from a sequence before you send it for color correction on another system. Color adapters are removed at the sequence level so that you can export an AAF without the color modifications. It does not affect adapters on the master clips (as source settings); only the sequence is modified.
To remove color adapters from a sequence:
1. Duplicate your sequence so that you save a version with the color adapters.
2. Select Refresh Sequence > Remove Color Adapters.
3. Export the sequence as an AAF for color correction on another system.
To transcode a sequence without color adapters:
1. Right click on the sequence and select Consolidate/Transcode.
2. In the Transcode dialog box, deselect Apply source transformations > Color encoding.
Setting the Display Properties for Media Composer Viewers Media Composer supports Rec. 709, BT/Rec. 2020 and DCI-P3 color spaces. The source and record viewers also support these colors if your monitor has been calibrated for them.
To set the appropriate color space in the computer display:
- Right-click in the desired viewer (source /record), select Display Color Space, and choose from
the list.
Setting the Playback Rate of a Clip If a clip’s frame rate was previously converted to the project’s frame rate, you can reset the clip to the original frame rate in the clip’s source settings.
Alternatively, you may want to convert the clip’s frame rate to match the project frame rate. This can also be done through the clips’s source settings.
To change the playback rate of a clip:
1. On the Timeline, or in the bin, select the clip that you want to change, right-click and choose
Source Settings.
2. Select the Playback Rate tab.
The Source Settings dialog box displays the temporal properties of the clip.
3. Select the desired Playback Frame Rate.
4. Click OK to save the changes.
5. If you applied this change to a clip in a bin, and want to update all instances of this clip that may
already be on your Timeline, you need to select Clip > Refresh Sequence > Motion Adapters/ Timewarps.
Editing with Low-Resolution Proxy Media
> **Note:** You will need to resolve any gaps on the Timeline due to the change in clip length. There is no
automatic ripple as this would break any synched edits.
Editing with Low-Resolution Proxy Media Linking offers the advantage of allowing you to transcode material to a lower resolution at any stage of the process. Most production facilities transcode all their footage up front in order get the best performance when previewing the footage for the editorial.
In high-resolution projects, depending on your storage limitations and the kind of quality you want when editing your sequences, you can use the following options when transcoding your media:
(cid:129) DNxHR LB (low bandwidth) (cid:129) DNxHR HQ (high quality) (cid:129) DNxHR HQX (high quality 10-bit) (cid:129) DNxHR 444 (cinema quality) In HD projects, transcoding to DNxHD 36 is an acceptable quality for editing your sequences.
However, if you plan on doing finishing work to your sequence, it's advisable to transcode your final sequence to DNxHD 145, DNxHD 220, or DNxHD 220x.
Media Composer provides configurable profiles (Dynamic Media Folders) to automate the transcoding of media from external drives. Furthermore, this can all be done in the background while building your sequence with the AMA-linked clips. Once the process is complete, you can link your sequence to the transcoded clips.
Refer to the appropriate topic below depending on whether you want to transcode all your footage, or if you prefer to create your sequence first and then transcode only the clips used in the sequence to low-res proxies.
Transcoding a Bin using Automated Profiles You can transcode a bin using an automated background process set up via a Dynamic Media Folder.
To transcode a bin using a DMF:
1. Open the bin containing the clips that you need to transcode.
2. Select Tools > Dynamic Media Folders.
3. Create a DMF that points to the folder where the media for these clips resides.
This DMF may have already been created for another process. If so, you simply have to create a new profile for the transcode and attach it to the DMF as described below.
4. Click Profile Editor and create a profile for the transcode.
For the Consolidate/Transcode options, select:
- Create new clips - Apply color transformation (if color space adjustments were made on the AMA-linked clips and you want them to be applied when the new media is generated) - Apply reformatting option (if the AMA-linked clip was reframed/reformatted and you want it to be reflected when the new media is generated) Editing with Low-Resolution Proxy Media Color and reframing options do not have to be “baked in” to the media if you want the flexibility to make further transformations to the clips within the sequence. Any changes made to the proxies will be then be reflected when you relink to the source files.
5. Save the profile and name it accordingly.
6. Select the DMF and assign this newly created profile to it.
You will be prompted to start the process. Click Yes to proceed.
While the process is running, you will see an illuminated indicator in the Timeline. If you want to monitor this process, right-click on this indicator and choose Background Queue.
This will open a window where you can see the copy, transcode or consolidate actions listed as processes in the queue. When an action has been completed on the folder where your media resides, you will see a green icon under the Acquire column of the DMF window. This means that new clips are available. Any clips that have been consolidated or transcoded will display as *.new files.
7. Click the Acquire icon at any time to update your bins with the newly-transcoded clips.
Each time more clips are ready, the green icon will appear under the Acquire column in the Dynamic Media Folders window. You can click on this icon to keep updating your bin.The transcoded media is referenced by .new clips in your bin.
8. Move all the *.new clips to a new bin and rename the bin suitably. Separating the linked and
transcoded clips into different bins will allow you to link back to the source clips more easily later in the editorial process.
9. Close the bin with the linked clips.
Continue this process to transcode all media in other storage folders to low-res proxies.
Transcoding a Sequence Some production houses may prefer to create the sequences with the AMA-linked clips first and then transcode only the clips used in the sequence to low-res proxies. This may be a more efficient process if you have enough space on your high-bandwidth storage to place your source camera files.
To transcode your sequence:
1. Right-click the sequence and select transcode.
In the Consolidate/Transcode dialog box, select:
- Create new sequence - Create new clips - Include handles - Apply color transformation (if color space adjustments were made on the AMA-linked clips and you want them to be applied when the new media is generated) - Apply reformatting option (if the AMA-linked clip was reframed/reformatted and you want it to be reflected when the new media is generated) Color and reframing options do not have to be “baked in” to the media if you want the flexibility to make further transformations to the clips within the sequence. Any changes made to the proxies will be then be reflected when you relink to the source files.
When the sequence is transcoded, new media is created for each of the clips in the sequence.
This media is referenced by .new clips that will appear in your bin. Similarly, a new .transcoded sequence will also appear in your bin.
Linking to MXF Media
2. Move all the *.new clips to a new bin and rename the bin suitably. Separating the linked and
transcoded clips into different bins will allow you to link back to the source clips more easily later in the editorial process.
3. Close the bins with the linked clips.
4. Load the transcoded sequence onto the Timeline for the fine-tune editing.
Once you start editing with the low-res proxies, any color adjustments you make to the proxy clips on the Timeline are not transferred back to the original clips. Therefore, apply source-side color adjustments directly to the proxy clips in the bin and then refresh the sequence in order to propagate the adjustments to the sequence. These adjustments will then be available when you link to the linked clips. For procedures on how to refresh your sequence, see .
For example, there may be a case where you need to reframe a certain segment of your sequence or do a pan and scan in order to follow the important action. Since the clips are already used within the sequence, you need to add the framing adapter on the proxy clips in the bin. You must then make sure to refresh your sequence in order to propagate the framing parameters to the sequence. This will allow you to do further adjustments on the framing box directly on the Timeline in order to change it’s size and/or position from one frame to the next.
5. After the editing process is complete, you may want to switch back to the high-resolution
sources before outputting your final sequence—see “Relinking to the Source Media” on page 95.
Linking to MXF Media Your facility may have a pipeline which creates processed or aligned MXF files using a dailies application. Avid recommends that the dailies system generate an AAF file of this media. The AAF can be imported into the Avid to generate bins with master clips that point to the MXF media. In the case of an AAF, the media will come online automatically.
> **Note:** If an AAF is not available, then you can use the Avid Media Tool to create clips from the MXF media.
Keeping media from the same source (at all available resolutions) in the same folder, will also ease the file maintenance and facilitate the reimport process in the event that a different resolution of a clip is required.
To link to MXF media via AAF:
1. Make sure that all your transcoded MXF files are located in the appropriate Avid MediaFiles
folder (drive letter:\Avid MediaFiles\MXF\).
2. Open the bin in which you want to create the master clips.
3. Right-click in the bin, and select Import (or simply drag and drop your clips into the bin).
4. Locate the AAF file that you want to import and click Open.
If you imported an AAF, all clips in the bin will automatically be linked to the corresponding MXF media.
5. The master clips will appear in the bin.
To link to MXF media via the Media Tool:
1. Select Tools > Media tool.
2. Select the media drives where the MXF files are located.
3. Sort the clips by creation date and select the clips that you need.
Relinking to the Source Media
4. Drag these clips into your bin.
5. The master clips will appear in the bin.
Relinking to the Source Media If you built your sequence with transcoded clips for the editorial, you will probably want to switch back to the high-resolution sources to output your final sequence at a better resolution.
> **Note:** The relink operation can be done automatically if you are in an Interplay environment. Refer to
”Using MultiRez and Dynamic Relink” in the online help.
To relink to the original media:
1. Right-click on the sequence in the bin and select Relink from the menu.
2. In the Relink dialog box, choose the following Video Parameters:
- Relink To: Select any video format - Relink Method: Highest Quality - Create new sequence.
3. Set any other options as necessary and click OK to relink.
A new “.Relinked” sequence containing the AMA-linked clips will appear in the bin.
4. Load this relinked sequence onto the Timeline for the finishing and output processes.
Relinking to the Proxy Media If you are currently linked to the source media and would like to edit with existing proxy media, you can select the media resolution to switch to.
> **Note:** The relink operation can be done automatically if you are in an Interplay environment. Refer to
”Using MultiRez and Dynamic Relink” in the online help.
To relink to proxy media:
1. Right-click on the sequence in the bin and select Relink from the menu.
2. In the Relink dialog box, choose the following:
- Relink selected items to > Media on drive: All Available Drives.
- Load media databases - Relink only to media from the current project
3. Then select these options under Video Parameters:
- Relink To: Select any video format - Relink Method: Specific Resolution - Resolution: <Choose desired DNx proxy format>
4. Select Create new sequence.
5. Set any other options as necessary and click OK to relink.
A new “.Relinked” sequence containing the proxy clips will appear in the bin.
Merging Additional Metadata for Clips
6. Load this relinked sequence onto the Timeline for the finishing and output processes.
Merging Additional Metadata for Clips You can import additional metadata for your media—such as information from a 3rd-party application that processed the media—and merge it with existing master clips in a bin. This metadata will be imported as long as it follows the Avid conventions for the bin column data.
To merge additional metadata into a bin:
1. Select the master clips for which you have additional metadata to merge.
2. Right-click on one of the clips, and select Import.
3. Locate the ALE file holding the metadata that you want to import, and click Open.
4. To select options for combining events on import, click Options to open the Import Settings
dialog box.
5. From the Shot Log tab, you must select Merge events with known master clips.
When this option is selected, Media Composer merges information in the shot log onto selected master clips based on the matching tape name or source file name. This must be an exact match and so should the START and END timecodes.
6. Click OK to close the Import Settings dialog box and return to the Select Files to Import dialog
box.
7. Select the source file from the list and click the Open button.
When Media Composer finishes importing the file, the clips (or new metadata for the clips) will appear in the selected bin.
Rendering Effects Any effects applied to clips on the Timeline will use the project settings when they are processed for real-time playback. All effects-processing for playback is done on the fly, in some cases, dropping frames or slowing down as necessary to display your color-corrected output at high quality for evaluation purposes.
You can choose to render any effects on the Timeline. When you render your sequence, it will also take into consideration the proxy mode as well as the compression quality (if any) that you have set for your media creation. Rendered media (precomputes) are saved to disk storage in order to play your sequence smoothly. Precomputes are generated using the project settings with a maximum bit depth of 10-bit.
If you change the proxy mode in the Project settings, any previously-generated computes will become offline. You will need to re-render the effects at the new proxy mode. Should you switch back to the previous proxy mode, the rendered proxy media will still be available.
Viewing Sequences with Mask Regions You can specify mask margins on the output frame to view a master with a different aspect ratio than the project setting. This provides many useful features especially for those dealing with film distribution (e.g. widescreen mode for DVD).
Viewing Sequences with Mask Regions The File > Settings Format tab allows you to select from various aspect ratio presets. In the viewers, this selected aspect ratio will mask out (with a gray or black background) any area of the image that is not inside the specified rectangle. This is for viewing purposes only. For example, if you apply a dissolve or an effect, the mask is not processed. Your viewer simply displays the masked area as in the example below.
Project frame (HD) Mask margins Mask regions are not applied when the sequence is exported to file unless you select Enable Mask Regions in the Export Settings window. For output to tape, however, the mask margins can be applied if you enable the mask region in the output tool.
Scene cropped to mask margins and filled with black To set the mask margins for the project:
1. Select File > Settings and click the Format tab.
2. Click the Mask Margins button.
The Target Settings dialog displays.
Viewing Sequences with Mask Regions
3. Select one of the mask presets or set the margins manually by selecting the appropriate
percentage of the image to be occluded.
To display the mask area in the viewers:
1. Right-click in the source or record viewer and select Target Mask.
2. Choose from one of the following options:
Option Description No Mask Does not display masked region.
Mix to White Displays masked region with a mix to white.
Mix to Black Displays masked region with a mix to black Black Mask Blacks out the masked region to display the image as it would appear when output.
Viewing Sequences with Mask Regions The viewer updates accordingly.
To see the same results on an external monitor, you will need to open the Output Tool to set the Target Mask option.
Source viewer showing full image with mix to black mask Record viewer showing reformatted image with black mask Exporting Sequences to File Exporting Sequences to File The media formats for which you can output media include the following—QuickTime (MOV, AVI), Windows Media (WMV), MPEG, HDV, DV Stream, single-frame graphics (PNG, TIFF, BMP, etc.).
To select the section for export:
1. Render any AMA-linked clips and effects in your sequence.
2. Identify the portion of the sequence that you want to export.
Option Description To export specific Enable the tracks in the Track Selector panel, and disable all others.
tracks in a clip or Ensure that Use Selected Tracks is selected in the Export Settings dialog box.
sequence:
To export a single- Mark an IN point to export the marked frame from a bin or a monitor, or move frame graphic: the position indicator to the frame you want to export.
Ensure that Use Marks is selected and that Sequential Files is deselected in the Export Settings dialog box.
To export part of a Mark IN and OUT points to export the marked range from a bin or a monitor.
clip or sequence: If you mark an IN point and no OUT point, Media Composer exports from the IN point to the end of the clip or sequence.
Ensure that Use Marks is selected in the Export Settings dialog box.
To export the entire Make sure the topmost track is monitored.
clip or sequence:
Ensure that Use Selected Tracks and Use Marks are deselected in the Export Settings dialog box.
> **Note:** For information on setting options in the Export Settings dialog box, see the Help.
3. Select the clip or sequence by doing one of the following:
- Click the monitor that displays the clip or sequence you want to export.
- Click the clip or sequence in a bin. Ctrl+click (Windows) or Shift+click (Macintosh) to
select multiple clips or sequences.
4. Do one of the following:
- Select File > Output > Export to File.
- Right-click the clip or sequence, and then select Output > Export to File.
The Export As dialog box opens with a default file name in the File name text box (Windows) or the Save As text box (Macintosh), based on the file type.
5. Click the Export Setting menu, and select one of the predetermined settings.
This menu lists the possible formats in which you can export your selection. It also determines the type of file(s) that will be exported. For example, if you select Sorenson Squeeze, then a QuickTime reference file will be exported.
Here are the possible options when exporting to media files:
> **Note:** If none of these meet your needs, then select Untitled and click Options to create a customized export
setting.
Exporting Sequences to External Applications Export Setting Export Format Avid 3D Audio WAV Avid Pro Tools LE (Mbox-Ref) MOV Fast-Export QuickTime NTSC MOV Fast-Export QuickTime PAL MOV Macintosh Image NTSC TIF Macintosh Image PAL TIF Make New - QuickTime Reference MOV Pro Tools QuickTime (ref) MOV QuickTime Reference MOV QuickTime Reference DV Codec MOV Send to QT Movie MOV Sorenson Squeeze MOV Sorenson Squeeze - Encode for DVD MOV Windows Image NTSC BMP Windows Image PAL BMP
6. If you want to view or modify the current Export Setting, click Options.
The Export Settings dialog box opens.
The export settings for some formats can be complicated. In some cases, options in the Export Settings dialog box open additional dialog boxes with further options. If you are modifying the Export settings, consult “Common Export Settings” in the Help.
Close the Export Settings dialog box to return to the Export As dialog box.
7. Select the destination folder for the file.
8. Enter a Filename for the selection that will be exported.
The extension will depend on the Export Setting that you chose.
9. Click Save.
Media Composer exports the file.
If you abort the Export while it is in progress, any files that were created, will be deleted.
Exporting Sequences to External Applications If you intend to apply custom audio or video effects using another application (for sweetening, color grading, effects and other finishing tasks), then you can export your sequence to a project data file.
Media Composer allows you to export part, or all your sequence to an AAF/AFE/EDL along with the associated video and audio media.
Exporting Sequences to External Applications Before generating the AAF, you may want to simplify the sequence, especially in the case of multicam sources. Instead of sending all the sources, whether they were used or not, the sequence can be optimized to remove the group information and only reference the camera angle/take used in the final sequence—see “Exporting a Simplified AAF” in the Media Composer help.
> **Note:** If your sequences use file formats that are not supportedlinked by other applications, you will need to
transcode the clips to MXF before the export. These MXF files are saved to the \Avid MediaFiles\MXF folder on your system.
To select the section for export:
1. Identify the portion that you want to export.
Option Description To export specific Enable the tracks in the Track Selector panel, and disable all others.
tracks in a clip or Ensure that Use Selected Tracks is selected in the Export Settings dialog box.
sequence:
To export a single- Mark an IN point to export the marked frame from a bin or a monitor, or move the frame graphic: position indicator to the frame you want to export.
Ensure that Use Marks is selected and that Sequential Files is deselected in the Export Settings dialog box.
To export part of a Mark IN and OUT points to export the marked range from a bin or a monitor. If clip or sequence: you mark an IN point and no OUT point, Media Composer exports from the IN point to the end of the clip or sequence.
Ensure that Use Marks is selected in the Export Settings dialog box.
To export the entire Make sure the topmost track is monitored.
clip or sequence:
Ensure that Use Selected Tracks and Use Marks are deselected in the Export Settings dialog box.
> **Note:** For information on setting options in the Export Settings dialog box, see the Help.
2. Select the clip or sequence by doing one of the following:
- Click the monitor that displays the clip or sequence you want to export.
- Click the clip or sequence in a bin. Ctrl+click (Windows) or Shift+click (Macintosh) to
select multiple clips or sequences.
3. Do one of the following:
- Select File > Output > Export to File.
- Right-click the clip or sequence, and then select Output > Export to File.
The Export As dialog box opens with a default file name in the File name text box (Windows) or the Save As text box (Macintosh), based on the file type.
4. Click the Export Setting menu, and select one of the predetermined settings.
This menu lists the possible formats in which you can export your selection. It also determines the type of file(s) that will be exported. For example, if you select Export to Pro Tools, then an AAF metadata file will be exported.
Here are the possible options:
Exchanging Sequences with DaVinci Resolve
> **Note:** If none of these meet your needs, then select Untitled and click Options to create a customized export
setting.
Export Setting Export Format AudioVision AAF Avid 3D Video AAF Avid Pro Tools LE (002) AAF Avid Pro Tools LE (Mbox-AAF) AAF Avid DS AFE Consolidate Audio to Folder AAF Consolidate-Embed Audio Only OMF Consolidate-Link Audio and Video AAF Export to Pro Tools AAF Link to Audio Only AAF Link to Audio and Video AAF Link to Audio and Video Mixdown AAF
5. If you want to view or modify the current Export Setting, click Options.
The Export Settings dialog box opens.
The export settings for some formats can be complicated. In some cases, options in the Export Settings dialog box open additional dialog boxes with further options. If you are modifying the Export settings, consult “Common Export Settings” in the Help.
Close the Export Settings dialog box to return to the Export As dialog box.
6. Select the destination folder for the exported file.
7. Enter a Filename for the selection that will be exported.
The extension will depend on the Export Setting that you chose.
8. Click Save.
Media Composer exports the file.
If you abort the Export while it is in progress, any files that were created, will be deleted.
Exchanging Sequences with DaVinci Resolve DaVinci Resolve supports the Avid DNxHR/HD family of codecs, which allows you to send sequences with rendered media to Resolve for color grading or special effects. Resolve can also generate DNxHR or DNxHD media that can be imported back into Media Composer for final assembly and output.
There are two possible workflows for exchange of sequences between Media Composer and Resolve:
Playout from Media Composer (cid:129) Export a sequence of AMA-linked clips from Media Composer via an AAF. Resolve can import the AAF and link to the media sources.
(cid:129) Export a sequence of rendered MXF media from Media Composer via an AAF. Resolve can import the AAF and link to the MXF media.
Once the necessary effects work has been completed, Resolve can render to a high-quality DNxHR format and send an AAF back to Media Composer.
To transfer sequences and media to Resolve:
1. Export an AAF from Media Composer.
If the sequence contained AMA-linked clips, make sure the source media folder is part of the Resolve Media Pool.
If the sequence was rendered to MXF, then the media will be located in the Avid Media Files\MXF\1 folder.
2. Import the AAF into Resolve.
The AAF will link to the source or MXF media.
To transfer sequences and media back to Media Composer:
1. Render your Timeline to the media format that you want to send back to Media Composer.
If you want to render to high-res MXF, make sure to select the Avid AAF Round-Trip preset.
You must then select a DNxHR codec before setting the video resolution. The media will be placed in the Avid Media Files\MXF\1 folder.
If you want to render to another media format, then you need to select None from the Preset list.
This will allow you to select other video formats such as DPX.
2. Export the AAF of the sequence.
Playout from Media Composer Before you can send your sequence from Media Composer to the AirSpeed 5000 playout server, you must add the AirSpeed to your Send To Playback list. In an Interplay environment, Media Composer will dynamically relink to the high-res media and send the final sequence to the AirSpeed playout server for broadcast or playback.
Support for ACES Workflow Media Composer supports ACES workflows. ACES is an ultra wide color gamut and high dynamic range format as well as a workflow. It stands for the Academy Color Encoding System and was created by the Academy of Motion Picture Arts and Sciences. ACES has the capability to store color information that is not even possible to see by the human eye.
ACES was mainly created for archival and exchange purposes. Working in this color space allows you to future proof your projects for the time when new monitors and new color spaces will be available. In the case of current workflow, you can easily change the output of the project to deliver different versions (for example HDR HLG/ Rec.2020 and Rec.709).
Support for ACES Workflow Camera manufacturers provide ACES input transforms specific to their different cameras (and exposure + lighting type in some cases) so they look ‘neutral’ when transformed to a color space. In principle, when editing systems and grading systems use the same transforms, there is a uniformity in the workflow as well as visual expectations. Those input transforms convert the camera source to ACES 2065 color space. This is standard on the source side so you can apply common LUTs in the ACES color space. Then, internally we convert to the ACEScct color space. This is done so the current controls still feel the same (such as color correction). The 32 bit floating point timeline precision allow us to convert to and from ACES encoding ACES 2065 and ACEScct types without any loss.
Being an ultra wide gamut color space has the advantage of preserving all the colors and luminance values but realistically there needs to be an output delivered for today’s current standards. Those output transforms are also defined by ACES, which means that all compatible systems would produce the same output, which again simplifies the workflow.
You can edit and grade for a dedicated output color space but the Timeline itself is always at ultra high gamut. This transformation is applied at the output and can be dynamically changed.
Creating an ACES Project Use the following procedures to create and work with an ACES project.
To create an ACES project:
1. Launch the editing application.
2. In the Select Project dialog box, click New Project.
3. Select a greater than HD format.
4. From the Color Space pulldown menu, select the ACES RGBcolor space.
5. Name your project and click OK.
When you create an ACES project, the Timeline will automatically change to 32 bit floating point precision. (You will notice the blue Video Quality Menu at the bottom of the Timeline.) This ensures that all internal processing is done at full precision without loss of the extra high luminance values and colors even if the output is to a narrower color space such as Rec.709.
To preserve full precision when rendering effects, use DNxUncompressed floating point (in Media Creation settings.) To work with Source Settings for Color Encoding:
1. Right click the clip and select Source Settings.
2. Select an ACES Color Adapter option. When working in ACES, the transform you select is the
one matching the media you have as a source. This is not a destination color space. All transforms take you to an ACES 2065 color space (full floating point). This means all media on the Timeline will be as ACES 2065. There is a further automatic lossless transformation to the “working Color Space” (ACEScct).
Support for ACES Workflow
3. For example, if the source is Canon C300 media shot at daylight setting, you would select the
following adapter to go to ACES:
4. Select the desired Color Adapter Type and Color Adapter.
5. Click Add to add the color transformation.
> **Note:** For media not coming from a camera manufacturer (Rec.709 media for example), you should select
ACES Generic Color Adapter Type and a Rec 709 to ACES Color Adapter.
Note: Currently in ACES projects, the color adapters do not apply automatically when linking.
To view ACES color space in the monitors:
1. With the clip or sequence loaded, right click the monitor.
2. Select Display Color Space and choose the ACES color space.
Support for ACES Workflow To select the Output Color Space:
1. Select File > Settings and click the Format tab.
You will notice the ACES version is v1.1. ACES versions define a set of transformations that need to be supported. This is to maintain compatibility between different products supporting ACES.
2. From the Output Color Space, select the color space you want for your exported sequence. This
is a conversion from the ACES Timeline that happens when you export to file so you can deliver a specific format from your ACES project.
Support for ACES Workflow To select an ACES Color Space for viewing on an external monitor:
1. Select File > Settings and click the Project tab.
2. Select the applicable ACES color space. Usually both the output color space and video output
color space should be the same so you can view on the external monitor exactly what will be exported to file.
5 Avid Managed Media Acquiring High-Resolution Media With a file-based workflow, the footage is already in digital file format so the editing system can link to media directly on a camera or storage device. Avid systems support media originating from a variety of cameras and formats which have different codecs, color encodings, frame rates and raster sizes. All metadata is inherited during acquisition and preserved along with the project and media information.
The majority of high-resolution (UltraHD or 2K+) file-based media comes from recording devices that have their own color space. The color information may also come from color grading done during the dailies processing. When the master clips are created in the bin, any associated color metadata is kept with the clip information. Media Composer reads the color space from the media’s metadata, and transforms it to a corresponding color space in Media Composer. This metadata will also carry over in the AAF/AFE export for use in other downstream processes.
File-based media can be linked or imported. Linking to media via AMA allows you to view the image in its original format, whereas importing the media reformats the image to the frame size of the project. When linking to media, you have access to all of the pixels in the source image, and thus have greater flexibility when mapping the media to the project settings so you can use the full image or simply select a region of interest.
Acquisition directly from Media Composer With Media Composer, you can link or import high-resolution media manually or with Dynamic Media Folders (DMFs). With DMFs, you can run automated media acquisition actions on the specific drives/folders where the original media is located. These profiles can be configured to automatically move and/or transcode the media to the shared storage.
Acquisition using a dedicated Media Director System On the Avid Interplay platform, Avid Media | Director is available as an option if you want to offload the file ingest process onto a separate system. This service uses system profiles specifically defined for copying, transcoding, consolidating and checking in files from cameras or drives attached to the Media Director station. This frees up valuable editing systems and allows staff to use older client machines to initiate and set priorities for ingest jobs.
Acquisition via Video Server For broadcast and fast-turnaround media production environments, an AirSpeed video server is used to capture SD/HD feeds directly to shared Avid storage, freeing the Avid editing system for editing.
This media can be recorded either from incoming broadcast channels or connected cameras and decks.
Acquisition and Management of Media The Avid AirSpeed video server can be configured in one of three ways:
(cid:129) In a Standalone Video Server environment, the AirSpeed 5000 uses only its own internal storage for storing clips. Clips can be transferred directly from the AirSpeed 5000 to the storage connected to the Media Composer.
(cid:129) In a Team environment with Avid shared storage, AirSpeed 5000 transfers the clips directly between the AirSpeed 5000 and the shared storage.
(cid:129) On a Interplay platform, the AirSpeed 5000 operates as a member of an integrated workgroup and Avid shared storage environment. You can use Interplay Capture and one or more AirSpeed servers, coupled with the Avid Interplay Low-Res Encoder to simultaneously ingest high-res and low-res versions of the same media. The assets—master clips, sequences, and bins, along with the necessary AAF metadata—are automatically checked into the Interplay database. Clips point to both versions of the media. This way editors can place clips on the timeline, work efficiently using the low-res media, and simply switch to the high-res media for the final editing and playout.
While media is being ingested, you can use the Interplay Stream Publish service to automatically create streamable media that can easily be viewed over a local area network (LAN) or wide area network (WAN).The Interplay Transcode Service can transcode the high-res media to additional lower resolutions (proxies) on an as-needed basis.
Acquisition and Management of Media Once you understand how the media is treated during acquisition, you can decide on the best format or best workflow to use during the editing process.
NATIVE codec support means you can work with the encoded data directly from the device without the need to transcode first. Therefore, the media can be copied much faster to the video storage.
These are formats which can be stored directly in the Avid MediaFiles folder and managed by the Avid system. Additionally, these formats can be consolidated, transcoded and rendered. MXF- wrapped XAVC-I, P2, XDCAM, Apple ProRes, GFCAM are examples of native formats.
NON-NATIVE codec support means that the media must first be imported or transcoded before the Avid system can manage it. With AMA, however, you can link to footage that is non-native and get direct access to it. Avid provides a number of companion AMA Workflow Guides that provide more details on how you can get native, direct access to file-based video without moving, importing, or transcoding media. Refer to the Avid AMA web site (www.avid.com/ama) for these format-specific guides.These are formats which cannot be stored in the Avid MediaFiles folder directly. These formats do not show as options for rendering, and you cannot copy (consolidate) these files into your Avid storage. You can however convert them upon import or in some cases link to them and transcode them into Avid storage. Examples of non-native formats include AVCHD, Canon XF, RED and HDCAM SR.
The diagram below shows how media is generally handled when it is captured, imported or linked into the Avid editing system.
Acquisition and Management of Media Import The process of moving a file from the outside world into the Avid MediaFiles folder. You can import video movies, still images and audio files of various types. Often, the external file is not in the proper container (MXF), does not use an Avid native codec, is the wrong frame size, or has other discrepancies which make it unacceptable for Avid storage and editing. In this case the file will be converted on import into a format the operator chooses.
Fast Import If the file format has native support in Avid, then the transfer requires no reprocessing and becomes in effect a file copy. These files are being 'rewrapped' upon import, and this happens so much faster that it is called a Fast Import.
Link You can link to media via AMA which creates clips in a bin, and makes them accessible for editing.
If the linked files are in an Avid native format, they can also be consolidated in that format. If they are not in an Avid native format, they must be transcoded.
File-linking does not work for all formats. File-linking works for formats like P2, XDCAM and QuickTime movies where the video and audio would all be contained in a single file.
Consolidate With some formats which the Avid supports natively, you can consolidate linked files directly into Avid storage. This is done by 'rewrapping' the contents of the file into a different (MXF) container.
Consolidate is a file copy and there is no loss of quality. (See Fast Import.) Consolidate only works for media which is in a format that the Avid Editing system understands natively. This is why some linked volumes will consolidate (such as XDCAM) and some will not (AVCHD for example).
> **Note:** You can also consolidate a sequence. Doing this copies only the media used in the sequence into Avid
MediaFiles folders.
Transcode Transcode means to convert from one codec or standard to another. Transcodes take place when converting PAL to NTSC or H.264 to DNxHD, for instance. This process is minimally lossy, if we disregard a quality loss which may be a result of going to a lower quality codec.
Media is transcoded into a compliant MXF file using an Avid codec, During conversion, the media is moved into Avid storage (Avid MediaFiles folder).
6 Media and Sequence Formats High-Resolution Sequence Formats Supported by Media Composer For a list of supported Media Composer resolutions, see “Project Formats and Resolutions” in the Help.
The following high-resolution project formats are supported in Media Composer, Pro Tools and Interplay:
Pro Format Color Interplay Tools Preset Frame Rate Bit Rate Space Support Support Ultra HD UHD 3840 x 2160 23.976 or 24p 10 bits Rec. 709; Yes n/a Rec. 2020 25p 10 bits Rec. 709; Yes n/a Rec. 2020 29.97p 10 bits Rec. 709; Yes n/a Rec. 2020 30p 10 bits Rec. 709; n/a n/a Rec. 2020 47.95 or 48p 10 bits Rec. 709; n/a n/a Rec. 2020 50p 10 bits Rec. 709; Yes n/a Rec. 2020 59.94p 10 bits Rec. 709; Yes n/a Rec. 2020 60p 10 bits Rec. 709; n/a n/a Rec. 2020 4K 4K DCI Flat 3996 x 2160 23.976 or 24p 10 bits DCI-P3; n/a n/a 4K DCI Full 4096 x 2160 23.976 or 24p 10 bits DCI-P3; n/a n/a 4K DCI Scope 4096 x 1716 23.976 or 24p 10 bits DCI-P3; n/a n/a High-Resolution Sequence Formats Supported by Media Composer Pro Format Color Interplay Tools Preset Frame Rate Bit Rate Space Support Support 4K Full 4096 x 3112 23.976 or 24p 10 bits DCI-P3; n/a n/a 2K 2K 2048 x 1152 23.976 or 24p 10 bits DCI-P3; n/a n/a 25p 10 bits DCI-P3; n/a n/a 29.97 and 30p 10 bits DCI-P3; n/a n/a 47.95 or 48p 10 bits DCI-P3; n/a n/a 50p and 59.94p 10 bits DCI-P3; n/a n/a 60p 10 bits DCI-P3; n/a n/a 2K 2048 x 1536 23.976 or 24p 10 bits DCI-P3; n/a n/a 47.95 or 48p 10 bits DCI-P3; n/a n/a 2K DCI Full 2048 x 1080 23.976 or 24p 10 bits DCI-P3; n/a n/a 47.95 or 48p 10 bits DCI-P3; n/a n/a 2048 x 1080 23.976 or 24p (per 10 bits DCI-P3; n/a n/a (stereoscopic) 47.95 or 48p 10 bits DCI-P3; n/a n/a 2K DCI Flat 1998 x 1080 23.976 or 24p 10 bits DCI-P3; n/a n/a 47.95 or 48p 10 bits DCI-P3; n/a n/a 2K DCI Scope 2048 x 858 23.976 or 24p 10 bits DCI-P3; n/a n/a 47.95 or 48p 10 bits DCI-P3; n/a n/a 2K Full 2048 x 1556 23.976 or 24p 10 bits DCI-P3; n/a n/a HD Resolution Sequence Formats Pro Format Color Interplay Tools Preset Frame Rate Bit Rate Space Support Support 47.95 or 48p 10 bits DCI-P3; n/a n/a HD Resolution Sequence Formats The following high-resolution project formats are supported in Media Composer and Interplay:
> **Note:** Rendering and output of high-res media is currently limited to 10 bits.
Pro Format Interplay Tools Preset Frame Rate Bit Rate Color Space Support Support 720p 1280 x 720 23.976p 8 or 10 bits Rec. 709 n/a Yes 25p 8 or 10 bits Rec. 709 n/a Yes 29.97p 8 or 10 bits Rec. 709 n/a Yes 50p 8 or 10 bits Rec. 709 Yes Yes 59.94p 8 or 10 bits Rec. 709 Yes Yes 1080p 1920 x 1080 23.976p 8 or 10 bits Rec. 709 Yes Yes 24p 8 or 10 bits Rec. 709 Yes Yes 25p 8 or 10 bits Rec. 709 Yes Yes 29.97p 8 or 10 bits Rec. 709 Yes Yes 50p 8 or 10 bits Rec. 709 Yes Yes 59.94p 8 or 10 bits Rec. 709 Yes Yes 60p 8 or 10 bits Rec. 709 n/a n/a 1080i 50i 8 or 10 bits Rec. 709 Yes Yes 59.94i 8 or 10 bits Rec. 709 Yes Yes High-Resolution Output Formats Supported by Media Composer High-Resolution Output Formats Supported by Media Composer Media Composer can output the following high-res media file formats:
Format MXF (4K DNxHR) See “Avid MXF (DNx) Render & Output Quality” on page 117.
DPX See “Exporting as DPX” in the Media Composer help.
XAVC-Intra (4K) See “Exporting DNxHR Media as MXF OP1a” in the Media Composer help.
QuickTime (4K DNxHR) See “Quicktime Codecs for DNxHR” and “Exporting Quicktime Movies” in the Media Composer help.
The following output formats will be supported to the extent of the encoding/decoding capability of the 3rd- party plug-ins:
Apple ProRes QuickTime (Mac systems only See “Exporting Quicktime Movies” in the Media Composer with codec installed) help.
Avid MXF (DNx) Render & Output Quality There are presently two DNx families:
(cid:129) DNxHD - available only for HD projects (cid:129) DNxHR - available only for higher than HD projects Backwards and Forwards Compatibility When moving an HD sequence to a high-res format, the existing DNxHD precomputes will not be relinked, and you will need to re-render the sequence.
DNxHR Family The table below shows the different quality settings at which your acquired media can be consolidated, transcoded, and rendered to MXF for playback and output in Media Composer.
> **Note:** Not all DNxHR qualities are supported in Interplay.
Legend:
(cid:129) LB - Low Bitrate Offline Quality (cid:129) SQ - Standard Quality (suitable delivery format) (cid:129) HQ - High Quality (cid:129) HQX - High Quality Extended 12-bit (UHD/4K Broadcast-quality delivery) (cid:129) 444 - Finishing Quality 4:4:4 12-bit (Cinema-quality delivery) Avid MXF (DNx) Render & Output Quality DNx Quality Settings (data transfer rates shown in Mbps) Frame 1/16 1/4 4:2:2 4.2:2 4:2:2 4:2:2 4:2:2 4:2:2 4:4:4 1/16 1/4 res res 47.95p 18 71 287 n/a n/a n/a n/a 48p 18 71 287 n/a n/a n/a n/a 50p 18 74 299 963 1457 1457 2914 59.94p 22 74 359 1154 1747 1747 3494 60p 22 74 359 1155 1749 1749 3497 47.95p 19 76 306 985 1491 1491 2981 Avid MXF (DNx) Render & Output Quality DNx Quality Settings (data transfer rates shown in Mbps) Frame 1/16 1/4 4:2:2 4.2:2 4:2:2 4:2:2 4:2:2 4:2:2 4:4:4 1/16 1/4 res res 48p 19 76 306 986 1492 1492 2984 50p 20 79 319 1027 1554 1554 3109 59.94p 24 95 383 1231 1863 1863 3727 60p 24 95 383 1232 1865 1865 3730 7 Working with Projects When you start Media Composer, the system displays the Project Management Window.
The Select Project window is where you create a new project or open an existing project. You can also view the What’s new button to access a list of the new features for the release and previous releases.
Project Management Window Project Management Window The Select Project window is where you create a new project, open an existing project, or see a list of new features for the current and previous releases.
(cid:129) You can easily open an existing project or create a new project.
(cid:129) You can display the project list in column text view or in frame view. Rows and columns in text view allows you to see more information about two or more projects at once.
(cid:129) You can select the What’s New tab to display information about new features.
(cid:129) You can set the poster frame you want displayed in the Select Project window. Once you open the project, right click the desired frame in the Composer monitor and select “Save as project poster frame”. That frame will appear in the Select Project window as the representative project frame.
(cid:129) You can easily change the font and columns displayed from the fast menu.
Creating a New Project Creating a New Project You can choose to create a project in a high-resolution (2K and higher), HD or SD format. The project format settings describe the frame size, aspect ratio, frame rate, and the color space for all sequences created within the project.
You should set your project format according to the highest quality required for the final delivery.
The settings you choose for your project will dictate the way in which your material is handled for the various editing functions within the Avid application.
To create a new project:
1. In the Select Project dialog box, click New Project.
2. Type the name of your new project in the text box.
> **Note:** The system limits bins to 64 characters and project names to 56 characters. If you plan to move bins
and projects from one platform to another, do not use the characters / \ : * ? “ < > | or leading spaces, trailing spaces, or trailing periods, when you name a project, bin, and user.
3. Click the Format preset menu and select a project format and frame rate (fps) that matches your
media and delivery requirements.
The options will change according to the format you choose. These can be changed as necessary.
You also have the option to create a Custom project size and enter the dimensions that you require (as per the guidelines described in the table below). All present frame rates are supported for custom projects (23.98fps to 60fps). Also, custom projects will use DNxHR for media creation and render settings.
Creating a New Project Option SD HD High-Res Format A combination of the video format (e.g. Ultra “High- HD), frame dimension (e.g. 3840 x 2160), color Resolution space (e.g. YCC 709), aspect ratio, (e.g. 16:9) and Sequence the frame rate (e.g. 23.97). Choose the most Formats appropriate combination for your output format. Supported by Media You can select from presets that are based on the Composer” on common formats used for delivery. When you page 114.
select a format preset, the other project settings are pre-populated but these can be refined as necessary before the project is created.
After the project has been created, and you want to create sequences of different formats, you can change the resolution but not the frame rate or aspect ratio. For a list of formats and resolutions, see See “Project Formats and Resolutions” on page 1306.
Custom Set a custom frame size for your project. You must Available for any project format.
enter even values in the Raster Dimension boxes (width x height).
pixels in height, and the maximum size is 8192 by 8192 pixels. (The minimum dimensions are also respected when using 1/4 or 1/16th proxy modes.)
> **Note:** For stereoscopic projects, the height must
be divisible by 4 and the width divisible by
8. For example: 1600 x 6000.
You can also save your custom raster dimensions using the Save Preset button. This preset will be added to the Format drop-down menu as My Presets.
To modify your presets, click the Manage Presets button. In the preset manager, select a preset and overwrite any of the existing values. You can also add or delete presets from this dialog.
Raster Sets the frame size for the project. The dimensions Dimension are the number of pixel columns (width) by the (Resolution) number of pixel rows (height), for example 1920 by 1080.
You should set this resolution according to the delivery requirements of your project. e.g. HDTV broadcast, Cinematic release, etc.
Some devices create media in non-standard resolutions also know as thin rasters--for example, HDV (1440 x 1080). You can use these thin raster dimensions if you are in an HD project and if there is an Avid codec to support it.
Creating a New Project Option SD HD High-Res Aspect Ratio The numerical ratio of the picture width to height. Select Always Automatically either 4:3 uses the calculated The project uses the aspect ratio setting to or 16:9 16:9 aspect based on determine the display setting in the monitors, and ratio project as a factor in determining whether material resolution requires resizing or repositioning in sequences.
For more information, “Mixing Frame Sizes and Aspect Ratios” on page 454.
Frame Rate The rate at which an imaging device produces unique consecutive images called frames.
Also known as frame frequency and frames per second (FPS).
If you change the frame rate after clips have been dropped onto the timeline, Media Composer will create a new sequence with the new frame rate and the respective time adapters applied on the clips.
Creating a New Project Option SD HD High-Res Color Space Set the color coordinate system to be used for Always YCC 709 Multiple color interpreting color values in your media and uses YCC or RGB spaces transforming them to the selected color space for 709 available Media Composer.
If you change the color space after clips have been dropped onto the timeline, you will be asked if you want to create a new sequence or if you want the change to be applied to the current sequence.
Clips will need to be rendered with the new color space.
When assembling a project, it is very common to have media originating from different sources.
Each of the media sources can have arbitrary color encoding (i.e. color model, gamma, bit depth, etc.). The editor needs to see each of these media sources with their true colors from the beginning to the end of the editing process.
When a project is created, a common color space needs to be selected for the processing of all media within a sequence. This color space maintains a consistent color appearance when color values from different media sources are sent to a particular device (either a monitor, storage, or output). The Color Space setting determines the color coordinate system to be used for interpreting color values in your media and transforming them to the selected color space for Media Composer.
The working color space should be set according to the delivery requirements. As an example, for broadcast HD TV, set it to Rec. 709. For a sequence that will be delivered in multiple formats, the working color space should be set to the highest overall precision and range. The project color space can be changed at any time.
Color Space is the predefined limit for the range of colors that can be represented in a given file, application or device. When images are processed, the color that they were encoded with by the camera is transformed to the color space of the Media Composer application. This is known as color mapping.
When these same images need to be viewed on a monitor, the colors need to be mapped to the color space of the monitor. (The color space of the monitor first needs to be calibrated separately as per the vendor’s instructions).
Color Depth Determines the bit depth at which the media will be stored.
Creating a New Project Option SD HD High-Res Stereoscopic Specifies how to handle stereoscopic clips for the Not various editing functions within your project. available.
You can only work with stereoscopic material in an HD project. If you do not need this option, select Off.
Off Turns Stereoscopic functionality off.
Any stereo material in the sequence is treated as a standard format, and only the leading eye image is used.
Leading Eye Uses the leading eye image from a stereo master clip. The leading eye image is defined by the S3D Leading Eye clip attribute.
Left Eye Uses the left eye image from a Only stereo master clip.
Right Eye Uses the right eye image from a Only stereo master clip.
Side by Side Frame compatible format that uses the left and right eye images one beside the other using horizontal half res for each eye.
If you have any standard (non- stereo) material in the sequence, it will use the same image in both the left and right frames.
Over/Under Frame compatible format that uses the left and right eye images one over the other using vertical half res for each eye.
If you have any standard (non- stereo) material in the sequence, it will use the same image in both the top and bottom frames.
> **Note:** When using source material
that is full frame, the frame compatible format is generated on the fly which may result in a performance slowdown.
Full Uses both left and right images in a stereo master clip.
Avid Projects and Avid Users Folders Option SD HD High-Res Film Available for 23.976p, 24p, 25p, 720p, and 1080p Not film projects. Click the Film button and select a available.
format for film gauge tracking from the Default Film Type menu.
4. Click OK.
Media Composer creates the new project files and folder, and then returns to the Select Project dialog box. The project name is highlighted in the Projects list.
5. Double-click the project name to open the project.
The Bin Container, the Composer window, and the Timeline open with your User settings loaded.
6. (Option) If your project uses a film project type, set film preferences immediately after you
create the project.
Avid Projects and Avid Users Folders Once you create a new project or user profile, Media Composer creates files and folders in the Avid Projects and the Avid Users folders.
Locations of Avid Project Folders By default, the system installs two Avid Projects folders:
Private Shared Windows drive:Users\user name\Documents\Avid drive:Users\Public\Documents\Shared Avid Projects Projects Mac Macintosh HD/Users/Mac login name/ Macintosh HD/Users/Shared/Avid Media Documents/Avid Projects Composer/Shared Avid Projects Locations of Avid Users Folders The Avid Users folder is located in the application folder:
Windows drive:\Documents and Settings\Avid Media Composer\Avid Users Mac Macintosh HD/Users/Shared/Avid Media Composer/Avid Users
> **Note:** (Windows only) The location of the Avid Users folder depends on the installation path for Media
Composer.
Opening and Closing Existing Projects Files and Folders Created For Projects When you create a new project, Media Composer creates a folder with the name that you entered when you created the project. The following three files are stored within the project folder:
(cid:129) A project file (.avp) (cid:129) A project settings file (.xml) (cid:129) A bin file (.avb) The project folder and the three files all use the project name you provide. The project folder is stored in the Avid Projects folder.
Your project settings are initially set to the default values. As you create additional bins for the project (see “Creating a New Bin” on page 301), additional bin (.avb) files are added to the project folder.
Files and Folders Created For User Profiles When you create a new user profile, your Media Composer creates a folder for the user and two files that are stored within the user folder:
(cid:129) A user profile file (.ave) (cid:129) A user settings file (.xml) The user folder and the two files all use the user profile name you provide. The new folder is stored in the Avid Users folder.
Opening and Closing Existing Projects Use the following procedures to open and close existing projects or to bypass the Select Project dialog box and have your last project open automatically.
> **Note:** If a sequence that was created in an older version of Media Composer contains effects or color
corrections, you might need to update the sequence. If a sequence requires updating, the Update Sequence dialog box might open when you load the sequence. For more information, see “Updating and Reverting Existing Effects in Sequences” in the Help.
To open an existing project:
1. In the Select Project dialog box, select the folder in which the project is located.
2. Do one of the following:
- Select a project in the Select Project dialog box, and then click OK.
- Double-click a project name in the Projects list.
The Bin Container, the Composer window, and the Timeline open with the User settings loaded.
To browse for a project in a location other than the default Shared and Private folders:
1. Start Media Composer.
The Select Project dialog box opens.
2. Click the Browse button.
The Browse for Folder (Windows) or Project Directory (Mac) dialog box opens.
Deleting a Project
3. Navigate to the folder that contains the project you want.
4. Click OK (Windows) or Choose (Mac).
5. Select a project in the Projects list.
6. Click OK.
The Bin Container, the Composer window, and the Timeline open with the User settings loaded.
The next time you open the Select Project dialog box, the path you selected will be displayed when you click the External button.
To open a project automatically:
1. Select File > Settings and click the User tab.
2. Double-click Interface.
The Interface Settings dialog box opens.
3. Select “Automatically launch last project at startup,” and then click OK.
The next time you start Media Composer, it opens your last project.
To turn off the automatic opening of projects so that you can select another project when you start Media Composer:
1. Deselect “Automatically launch last project at startup,” and then click OK.
2. Quit Media Composer and restart it.
The Select Project dialog box opens.
3. Select a project and click OK.
The Bin Container, the Composer window, and the Timeline open with the User settings loaded.
To close the current project, do one of the following:
- Select File > Close Project.
- Press Ctrl+Shift+W
Deleting a Project To delete a project:
1. Start Media Composer.
The Select Project dialog box opens.
2. Click the project you want to delete.
3. Press the Delete key.
4. If you see a message asking if you want to delete the selected project and associated bins, click
OK.
The deleted project no longer appears in the Select Project dialog box.
Deleting a project also deletes any bins that are in that project.
> **Note:** Media related to a deleted project is not deleted with the project folder. For more information on
deleting media files, see “Deleting Items from a Bin” on page 269 and “Deleting Media Files with the Media Tool” on page 327.
Changing Project and User Names Changing Project and User Names You cannot change project or user names from within Media Composer. You must change the names from your desktop before you start Media Composer. For information about the location of the Avid Projects and Avid Users folders, see “Avid Projects and Avid Users Folders” on page 127.
When you change a user name or a project name, make sure you change the name of the folder and all the files in the folder that have the old name. Media Composer does not automatically change the names of corresponding files in the folder.
To change a project name or user name:
1. Navigate to the Avid Projects or Avid Users folder, and then double-click the folder to open it.
2. Click the name of the folder you want to change.
The name highlights.
3. Type the new name of the folder.
4. Double-click the folder with the new name to open it.
The folder contains profile, settings, and project files with the old name.
5. Change the old name of each file to the new name.
> **Note:** Do not change the name of the file MCState in the Avid Users folder.
6. Close the windows, and restart Media Composer.
The new project name or user name appears in the Select Project dialog box.
Backing Up Your Project Information Although Media Composer application automatically saves your bins, projects, and settings, you should back up these items frequently. Because the storage requirements are minimal, you can back up these files to a variety of storage devices, such as:
(cid:129) USB (thumb) drive (cid:129) Network storage device (such as a file server) (cid:129) Mass-storage device
> **Note:** To back up the larger media files created when you capture footage, use a high-capacity storage
device. For information on backing up media files, see “Backing Up Media Files” on page 341.
To save your work on a drive or on removable media:
1. Mount the drive or insert the storage media.
2. (Windows only) From the Windows desktop, double-click the My Computer icon.
3. Double-click the icon for the destination storage drive or storage media to open it. Double-click
any additional folders to target the appropriate storage location.
4. Navigate to the folder that contains the project folder or the user folder you want to save.
5. Drag a project folder or a user folder to the targeted storage location.
6. When the system finishes copying the files, unmount the drive or eject the media and store it.
Avid Attic Folder To restore a project or user information from a backup storage device:
1. Mount the drive or insert the removable media that contains the backup copies you want to
restore.
2. From the desktop, double-click the icons for the drive or storage media and for the internal hard
drive (Windows) or for the Macintosh HD (Mac).
3. Drag the copies from the storage device to the appropriate folder on the internal hard drive
(Windows) or (Mac).
Macintosh HD/Users/Shared When you start Media Composer, the restored project and user profile appear in the Select Project dialog box.
Avid Attic Folder The Avid Attic folder contains backup files of each bin in a project. You retrieve files from the Avid Attic folder in the following circumstances:
(cid:129) When you want to replace current changes to a sequence or clip with a previous version (cid:129) When the current bin file becomes corrupted For information on retrieving files from the Avid Attic folder, see “Retrieving Files from the Avid Attic Folder (Windows)” on page 131 and “Retrieving Files from the Avid Attic Folder (Mac)” on page 132.
For information on setting automatic save features, see “Saving Bins” on page 305.
The Avid Attic folder contains a folder for each project. Each project folder contains a Bins folder.
When a bin is saved, a folder with the bin’s name is created in the Bins folder and a copy of the bin file is stored in the folder with the bin name. The system adds a version number to the bin’s file name.
The bin file with the highest version number represents the latest copy of the bin file.
When you view a bin folder in Details view (Windows) or List view (Mac), you can also identify the most recent backup file based on the timestamp of creation displayed in the Modified column (Windows) or Date Modified column (Mac).
> **Note:** The oldest backup file is overwritten only if the second-oldest backup file is more than 2 hours old.
Retrieving Files from the Avid Attic Folder (Windows) To retrieve a file from the Avid Attic folder:
1. Minimize Media Composer.
2. From the desktop, double-click the Avid Attic folder, located in:
(Windows) drive:/Users/Public/Public Documents/Avid Media Composer.
The Avid Attic folder opens and displays a folder for each project.
3. Double-click a project folder, and then double-click the Bins folder.
The Bins folder opens and displays a folder for each bin in the project.
4. Double-click the folder for the bin you want to retrieve.
5. If the bin folder is not already in the Details view, select View > Details.
Avid Attic Folder The bin folder displays the backup bin files and their creation dates. A backup bin file has the same name as the bin, with a number appended. For example, a bin named Source Clips might have backup bin files named Source Clips.1 and Source Clips.2.
6. Select the backup bin file or files you want to retrieve.
7. Ctrl+drag the selected backup bin files to the desktop.
This makes a copy of the files, leaving the original files in the Avid Attic folder.
To copy backup files to a new bin:
1. Click the taskbar item for Media Composer to restore it.
2. Click the Bin Container to activate it.
3. Select File > Open Selected Bin(s).
4. From the Files of Type list, select All Files (*.*).
5. Navigate to the desktop, select one of the backup bin files you copied, and click Open.
The backup bin opens. When you open a backup bin, a link to the backup bin on the desktop is created in the Other Bins folder.
> **Note:** Media Composer does not allow a bin and a copy of a bin to be open at the same time. You must keep
all other bins closed and open the backup bins one at a time.
6. Create a new bin.
For example, if you are retrieving clips from a backup bin called Audio.2, you can call the new bin Audio New.
7. Select the material you want to keep from the backup bin, and drag the files to the new bin.
8. Repeat steps 3 through 7 for any other backup bin files you copied to the desktop.
9. Select and delete the backup bins in the Other Bins folder.
10. Drag the backup bin files on the desktop to the Recycle Bin.
Retrieving Files from the Avid Attic Folder (Mac) To retrieve a file from the Avid Attic folder:
1. Minimize Media Composer.
2. From the desktop, double-click the
Macintosh HD/Users/Shared/Avid Media Composer/ folder.
Avid Attic The Avid Attic folder opens and displays a folder for each project.
3. Double-click a project folder, and then double-click the Bins folder.
The Bins folder opens and displays a folder for each bin in the project.
4. Double-click the folder for the bin you want to retrieve.
5. Select View > as List, if the bin folder is not already in the List view.
The bin folder displays the backup bin files and their creation dates. A backup bin file has the same name as the bin, with a number appended. For example, a bin named Source Clips might have backup bin files named Source Clips.1 and Source Clips.2.
6. Command+click the files you want to retrieve.
7. Option+drag the selected backup bin files to the desktop.
Avid Attic Folder This makes a copy of the files, leaving the original files in the Avid Attic folder.
To copy backup files to a new bin:
1. Click the icon on the Dock to activate Media Composer.
2. Select File > Open Bin.
3. Navigate to the desktop, select one of the backup bin files you copied, and click Open.
The backup bin opens. When you open a backup bin, a link to the backup bin on the desktop is created in the Other Bins folder.
> **Note:** Media Composer does not allow a bin and copy of a bin to be open at the same time. You must keep
all other bins closed and open the backup bins one at a time.
4. Create a new bin.
For example, if you are retrieving clips from a backup bin called Source Clips.2, you can call the new bin Source Clips New.
5. Open the new bin and open the backup bin in the Other Bins folder.
6. Select the material you want to keep from the backup bin, and drag the files to the new bin.
7. Repeat steps 3 through 7 for any other backup bin files you copied to the desktop.
8. Select and delete the backup bins in the Other Bins folder.
9. Drag the backup bin files on the desktop to the Trash.
8 Linking File-Based Media File-based media can be acquired from a third-party device (a camera, reader, or drive), from a CD or DVD, from a folder on your system, or from a virtual volume (a server connected to your system). To move the media into your Avid editing system, you have the option to use the Avid Media Access linking method which links the file based media directly into a bin through a plug-in, or you can use the import method which imports the media onto your system. When you work with high-resolution media, the linking method is the preferred and the faster method. You can manipulate and edit this media as you would any other clip or sequence.
Linking also allows for more metadata to be brought into the bin which gives you more information about the media. For example, essence marks (or markers) associated with the clip are automatically brought into your bin.
> **Note:** For information on using the importing method, see “Importing Files” on page 222.
Third party plug-ins are not included and installed with your Avid editing software. You must download and install them separately. This enables Avid and third-party camera manufacturers to update plug-ins outside of a software release. Go to the Avid Media Access page on the avid.com web site to make sure you download the latest plug-in for your specific third-party device.
> **Note:** See the documentation supplied by the third party plug-in vendor for details on using their plug-in. The following Avid-supplied Avid Media Access plug-ins are included with Media Composer: Avid
Generic Plug-In, QuickTime, AVCHD, AS11, AS02, MXF, AIS (Avid Image Sequencer) and WaveAiff.
The RED Plug-in is an Avid plug-in, but it is not automatically installed on your system. You must go to the Avid Media Access page on the avid.com web site to download the RED plug-in. For details on using the Avid plug-ins to link your media, see the following procedures.
(cid:129) Linking to QuickTime Media (cid:129) Linking to AVCHD Media (cid:129) Linking to MXF Media (cid:129) Linking to RED Media (cid:129) Linking to DPX Media (cid:129) Linking to OpenEXR (cid:129) Linking to an AS-11 Sequence (cid:129) Linking to an AS-02 Bundle (cid:129) Linking to Broadcast Wave and AIFF Files The following procedures describe how to automatically link media from a third party device, how to link to a file, or how to link to a volume:
(cid:129) Automatically Linking Media from a Third Party Device (cid:129) Linking File Based Media through the Source Browser Viewing the Installed Plug-Ins Viewing the Installed Plug-Ins To see which plug-ins are installed in your system.
To view a list of the installed plug-ins:
1. Select Help > About Avid Media Composer
2. Click the Configuration tab.
Scroll in the window to see a list of installed plug-ins and their version numbers.
Avid Universal Media Engine (UME) Avid has been working on a solution to remove Media Composer dependency on Apple QuickTime libraries. Avid has implemented the Avid UME plug-in for linking, importing and exporting.
Linking and Importing: Avid UME will be used for linking to and importing the following:
(cid:129) MOV (cid:129) MP4 (cid:129) TIFF - Single image and Image Sequences (cid:129) PNG - Single image and Image Sequences (cid:129) JPEG - Single image and Image Sequences (cid:129) EXR - Single image (cid:129) MP3 (cid:129) AAC Exporting: Avid UME is used for exporting:
(cid:129) MOV (cid:129) EXR Automatically Linking Media from a Third Party Device Use the following procedure when using a third party device such as Panasonic P2, Sony XDCAM, XDCAM EX, HDCAM SR, and Canon.
A typical workflow is as follows:
1. Make sure the third party Avid Media Access plug-in is installed on your system.
2. Make sure the third party driver is installed if necessary. See your third party documentation for
driver information.
3. Make sure the “Automatically link to volumes” option is enabled in the Link Settings Volume
Mounting tab.
4. Connect your third party device to your editing system and if necessary insert any cards or disks.
The system scans the device and automatically links the clips into the active bin. If no bin is active, you will be prompted to create a new bin.
The clips point directly to the high-resolution media on the device.
Linking File Based Media through the Source Browser
5. Use the master clips to edit the sequence.
6. (Option) Rename the clips to help organize your material.
7. You can either transfer your media to your hard drive and then transcode or consolidate your
sequence or clips, or consolidate directly from the third party device.
Consolidating your media helps when you work with multiple cards. If you remove a card from the reader, consolidating lets you view your sequence with all the media online.
> **Note:** For information on consolidating your sequence, see “Consolidating Media” on page 329. For
information on transcoding your sequence, see “Using the Transcode Command” on page 333.
8. Remove the third party device, disk or card.
Linking File Based Media through the Source Browser The Source Browser window allows you to import or link your file based media. (For information on importing, see “Importing Files” on page 222.) You can also preview your file based media in the Source Browser window before you commit the clip(s) into a bin. The following topics provide an overview of the Source Browser window and the procedures for previewing your media and linking to your file based media.
(cid:129) Source Browser Overview (cid:129) Previewing File Based Media (cid:129) Linking Files to a Bin (cid:129) Linking a Volume to a Bin Source Browser Overview Within the Source Browser window you can easily navigate to your media, preview your media, and choose to link or import your media with the appropriate settings.
Linking File Based Media through the Source Browser Source Browser in Frame View: (from top to bottom) Navigation tools and breadcrumbs; Middle area: Navigate and display media panes; Source Browser Settings. Bottom area: Link or Import and select Settings, Choose bin to commit media and Processing Media progress indicator Navigation Tools and Breadcrumbs The top area of the Source Browser provides navigation tools and shows the path to the currently displayed location of your media.
Item Description 1 Navigation buttons: Click to move backward, forward, or up directory levels.
2 Home Button: Click to go to the home directory.
3 Collapse Directories Button: Click to collapse the directories to top levels.
4 Add or Remove Favorites: Click to add the selected folder to the Favorites tab.
5 Media Folder View Button: Click to view folders as media volumes. If you choose to display as media volumes, the Source display area will display the media as individual master clips.
Other structural contents will not be displayed. When viewing a volume, you may see a “Media Processing” message in the display area. Once complete, the master clips will display.
Linking File Based Media through the Source Browser Item Description 6 Breadcrumbs: Displays the path to the currently selected folder.
Explore Media Drives Area of Source Browser The left area of the Source Browser is where you navigate to your media drives. In this area you can also view your Favorite folders or media drives. You can also view the most recently viewed folders or drives.
Display Media Area of Source Browser The right pane of the Source Browser displays the media. You can choose to view the media in either Text view or Frame view.
Linking File Based Media through the Source Browser Item Description 1 Media display area.
2 Text View button. Click to display the media in text view 3 Frame View button: Click to display frame representations (thumbnails) of the media clips.
4 Search Field: Enter text in the search field to easily find clips.
5 Thumbnail slider: Move to enlarge or reduce the thumbnail. (Frame view only) 6 Scroll bar: Scroll to display more columns.
Source Browser Settings The Source Browser Settings is where you configure the behavior of the Source Browser window.
Choose from the following options:
Option Description Double Click to: Link or Import Select this option if you want to double click on media files in the Source Browser to link or import them into the selected bin.
Double Click to: Load Clips in Select this option if you want to double click on media files in the Source Monitor Source Browser to load them into the Source Monitor (without committing them to the bin.) Close Source Browser after Link or Select this option if you want to automatically close the Source Browser Import after the link or import process is complete Clear Source Monitor Upon Closing Select this option if you want to clear all uncommitted Source Browser Source Browser clips from the Source monitor after you close the Source Browser window.
Link or Import Area The bottom area of the Source Browser is where you choose whether to import or link your media.
You can also choose the Target Bin where you want to add the linked or imported clips. A Processing media indicator appears at the bottom of the Source Browser to show the progress of the media as it is populating the display area.
> **Note:** You can choose to Link or Import the media to your bin while the media is populating the display
area. You do not need to wait for the processing indicator to be complete.
Linking File Based Media through the Source Browser Previewing File Based Media You can preview your file based media in the Source Browser before you commit the clip(s) into a bin.
To preview media in the Source Browser:
1. Do one of the following:
- Select File > Input > Source Browser.
- Right-click in the bin and select Input > Source Browser.
- Click the bin Fast Menu and select Input > Source Browser.
The Source Browser Window opens.
2. Browse to the location of the media you want to preview.
3. Click the Frame View button.
The clips will populate the right pane of the Source Browser with the frame clip representation (thumbnails).
Initially, thumbnails show the first frame of the clip. Any thumbnail playback will change the representation frame to the last one displayed.
Top: Clips in Frame View; Bottom: Thumbnail slider
4. Press Ctrl + L (Windows) or Command + L (Mac) to enlarge the thumbnails or use the
Thumbnail slider to reduce or enlarge the frames.
Linking File Based Media through the Source Browser
5. Place your cursor so it hovers over the thumbnail of the clip. While hovering, move the cursor to
the edges of the thumbnail to preview the footage. You can also use the JKL keys to play through the thumbnail.
6. (Optional) You can also drag a clip from the Source Browser to the Source monitor to review the
clip in higher resolution. Dragging to the Source monitor does not commit the clip to the bin.
7. (Optional) You can commit linked clips from the Source Browser to a bin by:
- Simply dragging the clip(s) from the Source Browser to the bin or to the Timeline.
- Loading a clip in the Source monitor, marking an IN and OUT and cutting it to the Timeline.
- Right clicking on the clip in the Source monitor, selecting Source Settings and making
changes to the Source settings.
Collapse and Expand Source Browser An expand and collapse button allows you to view more media in the display area of the Source Browser. If you have a large number of clips to display in the Source Browser, you can click the Collapse and Expand button to view more clips.
To collapse and expand the Source Browser display media area:
1. Select File > Input > Source Browser.
2. Navigate to the folder where you want to preview your media.
3. If the folder contains a large number of clips, click the Collapse/Expand button to view more
clips in the folder.
To create more space for viewing clips, clicking the button will hide the Source Browser Settings portion of the lower pane, displaying more clips.
In addition to clicking the button to collapse and expand this area, the mouse will become a double-sided arrow which enables you to click and drag the splitter bar.
Linking to QuickTime Media Linking Files to a Bin After locating and/or previewing your media files in the Source Browser you can link to them.
To link to File Based Media:
1. Select File > Input > Source Browser.
2. Select the Link option in the bottom left of the Source Browser window.
3. Click the Settings button at the bottom of the Source Browser to access the “Link Settings” on
page 1258 to set the applicable link options for your media.
4. Navigate to and select the files to which you want to link. Ctrl+click or Shift+click to select
multiple files.
5. Either drag and drop the clip(s) to the bin or select the Target Bin at the bottom right of the
Source Browser and click Link.
The linked clip(s) appear in the bin.
> **Note:** You can also link clips by selecting the clips in the Source Browser window, right clicking and
selecting Add to Bin.
Linking a Volume to a Bin After locating and/or previewing your media files in the Source Browser you can link them from a virtual volume.
To link to a Volume:
1. Select File > Input > Source Browser.
2. Select the Link option in the bottom left of the Source Browser window.
3. Click the Settings button at the bottom of the Source Browser to access the “Link Settings” on
page 1258 to set the applicable link options for your media.
4. Navigate to the folder or directory where the media resides.
5. Select the Target Bin at the bottom right of the Source Browser and click Link.
The linked clip(s) appear in the bin.
> **Note:** You can also link by selecting the volume in the Source Browser window, right clicking and selecting
Add volume Bin.
Linking to QuickTime Media There are a few guidelines you should follow when you link QuickTime files.
To link QuickTime media, you first need to create a QuickTime movie from a third-party application or through the Avid editing system. The third-party applications that supports creating a QuickTime AfterEffects® movie include Adobe and Final Cut Pro. This is done through the QuickTime Export dialog box which uses the Avid QuickTime Codecs. These codecs automatically install on your Avid editing system. This process creates an Avid compressed QuickTime media file, with a .mov extension.
> **Note:** For information about exporting a QuickTime movie, see “Exporting QuickTime Movies” on
page 851.
Linking to QuickTime Media QuickTime files use the .mov file name extension. After you link a QuickTime file, the file drops the .mov file name extension. QuickTime media is linked at the data rate at which it was recorded.
A QuickTime workflow is as follows:
1. Create a QuickTime movie with a supported codec in a 3rd party application such as Adobe
AfterEffects or Apple’s Final Cut Pro.
Avid supports the Same as Source and Custom export settings options when you export with Avid QuickTime codec.
> **Note:** See Adobe and Apple documentation for information on how to create a QuickTime movie.
2. Move the created .mov file onto your Avid editing system.
3. Select File > Input > Source Browser.
The Source Browser window opens.
4. Click Link at the bottom left of the Source Browser window.
5. Navigate to and select the .mov file(s) you want to link. Ctrl+click or Shift+click to select
multiple files. To link to multiple files, you can select a folder that stores multiple QuickTime files.
6. Select your target bin and click Link at the bottom right of the Source Browser Window.
The clips appear in the selected bin. A link icon appears next to the clips.
If any of the movies you linked to were QuickTime with Alpha channel files, they appear in your bin as a Matte Key effect. The Alpha Channel options in the Import Settings Image tab apply to the QuickTime linked file. Therefore, the QuickTime file will appear in the bin as a master clip if the Ignore option is set or will appear inverted or not inverted depending on the selected options.
7. Use the linked clips to edit your sequence.
> **Note:** If you change the file name or the location of the clip, you can Relink to linked files. For more
information, see “Relinking to Linked QuickTime Files” on page 144.
8. Continue to edit your sequence or consolidate or transcode your sequence or clip.
> **Note:** When you consolidate, if you want to keep your clips linked to the original source, select the option
“Keep Master clips linked to media on the original drive,” in the Copying Media Files dialog box.
> **Note:** For information on consolidating your sequence, see “Consolidating Media” on page 329. For
information on transcoding your sequence, see “Using the Transcode Command” on page 333.
QuickTime workflow using QuickTime Live Link:
1. Create a QuickTime movie with a supported codec in a 3rd party application such as Adobe
AfterEffects or Apple’s Final Cut Pro.
2. Move the created .mov file onto your Avid editing system.
3. In Media Composer, select File > Settings. Click the User tab.
4. Select the Link settings.
5. Select the Link options tab and enable QuickTime Live Link.
6. Click OK.
7. Select File > Input > Source Browser.
The Source Browser window opens.
Linking to QuickTime Media
8. Click Link at the bottom left of the Source Browser window.
9. Navigate to and select the .mov file(s) you want to link. Ctrl+click or Shift+click to select
multiple files. To link to multiple files, you can select a folder that stores multiple QuickTime files.
10. Select your target bin and click Link at the bottom right of the Source Browser Window.
The clips appear in the selected bin. A link icon appears next to the clips.
11. Use the linked clips to edit your sequence.
12. If you need to change the QuickTime clip in your 3rd party application:
a. From Media Composer, select Clear Monitor from the Clip Name menu above the monitors if the monitor contains the clip you are going to edit in the 3rd party application.
b. Open the existing file in your 3rd party application and make the change.
Do not change the number of tracks, the duration of the clip or the clips file name.
> **Note:** If you do change the tracks, druation, or the clip file name, when you relink, the system creates a new
clip and will not overwrite or replace the existing clip in the bin.
13. Render or export the newly changed QuickTime movie out of your 3rd party application to the
same folder location as the original file. Accept all overwrite prompts. Once the changed QuickTime movie is exported or rendered, refocus or open Media Composer.
The updated clip appears in your bin (and sequence) and replaces the old clip.
14. Continue to edit your sequence or consolidate or transcode your sequence or clip.
Relinking to Linked QuickTime Files After you link Quicktime files into your sequence, you have the option to make changes (in a third party application, such as Adobe After Effects) to that file. If you change the filename or change the location of the file, the best way to link that clip back into your sequence is through the relink option.
Relinking to a linked file allows you to link to a different file. This process only works if the targeted file is compatible with the old file, for example the file has the same duration, edit rate or number of tracks.
This feature is helpful when you have a group of linked clips that were moved to a different folder or drive. You can relink the clips to the new location. You can also use this feature to toggle between different versions of a QuickTime movie, for example a low-resolution version of the movie is myMovie_DV.mov and the high-resolution version of the movie is myMovie_1to1.mov. You can relink to both of these versions, to see which clip works better in your sequence.
At this time, Relink to QuickTime File(s) is only available with QuickTime files.
To relink to QuickTime file(s):
1. Select the file(s) you want to relink by doing one of the following:
- Click a single file
- Shift+click to select multiple adjacent files
- Ctrl+click (Windows) or Command+click (Macintosh) to select multiple nonadjacent files
2. Right-click and select Relink to File(s).
The Select file(s) to relink clip dialog box opens asking you to locate the new file(s).
Linking to AVCHD Media
3. Locate the folder where the files exist and select the files in the folder that require relinking.
4. Click OK.
The clips appear linked in the bin. If all the clips you wanted to relink to do not reside in the selected folder, you will receive a dialog indicating how many files were not relinked. Open the Console window to see the name of the file or files that were not relinked.
> **Note:** If the new file is not compatible with the clip in the bin (it does not have the same duration, edit rate
or number of tracks), the clip in the bin retains its original link.
Linking to AVCHD Media AVCHD is a file-based format and does not use magnetic tape. Instead, video can be recorded onto DVD discs, hard disk drives, non-removable solid-state memory and removable flash memory cards.
> **Note:** Play performance might vary depending on the type of medium you use and the speed of our
computer.
AVCHD media files are recorded in MTS format; the file contains both the video and audio. Audio can be either uncompressed PCM or AC-3 format.
The folder and file structure is dependent on the camera you use.
> **Note:** Most AVCHD cameras produce default file names starting with “00000.” Be aware that you could
have multiple clips with the same file name across multiple media drives.
The following steps describe a typical workflow for editing AVCHD clips.
A typical workflow is as follows:
1. To link to an entire volume, attach the camera and insert a card, disc or drive.
The system links the AVCHD clips automatically into a bin.
> **Note:** It is highly recommended for performance reasons, that you copy the entire media volume to an
external HD drive if you plan on copying media from a card.
> **Note:** If you use multiple AVCHD cards and you remove one of the cards, your media displays offline.
2. To link to an individual AVCHD file, with the camera and card, disc or drive inserted, select File
> Input > Source Browser.
The Source Browser window opens.
3. Click the Link button on the bottom left of the Source Browser window.
4. Navigate to locate and select the .mts file(s) you want to link. Ctrl+click or Shift+click to select
multiple files.
5. Select the target bin and click Link on the bottom right of the Source Browser window..
The clips appear in the bin. A link icon appears next to the clips.
6. Use the master clips to edit and output a sequence.
7. (Option) Rename the clips to organize your material.
8. Transcode your sequence or clips.
Linking to MXF Media
> **Note:** When you transcode a sequence, the system automatically defaults to convert both audio and video.
You cannot transcode video only with AVCHD.
> **Note:** For information on transcoding your sequence, see “Using the Transcode Command” on page 333.
Linking to MXF Media Material Exchange Format (MXF) is a wrapper or container format which encapsulates media and rich production metadata into a single file, which is useful for media storage and exchange. It is an open technology that can is implemented by different manufacturers.
MXF is designed to be flexible enough for use in all stages of content creation, from acquisition, to authoring, to distribution. The primary benefit of MXF is that it provides greater workflow efficiency by preserving useful metadata as media files make their way through the content creation process.
The MXF format is independent of the type of content that it contains, so an MXF file can contain video and/or audio at any resolution or compression. In many instances MXF files encapsulate media which is already formatted to one of the existing industry standards.
A typical workflow is as follows:
1. Create a supported MXF file (create a supported MXF file from your third party application, for
example: Rhozet or Omneon).
2. Move the .mxf file onto your Avid editing system.
3. Select File > Input > Source Browser.
The Source Browser window opens.
4. Click Link at the bottom left of the Source Browser window.
5. Navigate to and select the file(s) you want to link. Ctrl+click or Shift+click to select multiple
files.
6. Either drag and drop the clip(s) to the bin or select the Target Bin at the bottom right of the
Source Browser and click Link.
The linked clip(s) appear in the bin.
> **Note:** If the Plug-In column in the Source Browser displays “ Not detected” autodetect might not have been
able to link to the clip. You can manually select the appropriate Plug-In in the Source Browser to link to the media. The Plug-In selected in the Source Browser will also work for a group of files selected in step 5.
> **Note:** You can also link clips by selecting the clips in the Source Browser window, right clicking and
selecting Add to Bin.
> **Note:** If you move a source file from one location to another and then back to the original location, you
might need to refresh the bin to redisplay the clip. Close and reopen the bin to refresh the bin.
7. Use the linked clips to edit your sequence.
8. (Option) Rename the clips to help organize your material.
9. Consolidate or transcode your sequence or clips.
The media consolidates to the destination you set in the Media Creation dialog box.
Linking to RED Media
> **Note:** When you consolidate, if you want to keep your clips linked to the original source, select the option
“Keep Master clips linked to media on the original drive,” in the Copying Media Files dialog box.
Linking to RED Media You can link to a specific R3D file on the volume or link to the entire volume. RED ONE cameras record metadata which displays in an Avid bin. The metadata includes: edge code, timecode, lens parameters, audio settings and any video image processing information.
> **Note:** You cannot consolidate the RED media in Media Composer.
The RED Camera records a unique clip name and additional files that include the REDCODE RAW files and an optional QuickTime reference file placed in a clip folder (.RDC). The system names clips by Camera Letter + Reel Number + Month + Day + a two digit alphanumeric random number.
For example: A001_C002_0502A6.RDC Each clip folder (.RMD) is at the root directory. In each of these folders is the .RDC folder which contains the video, audio, and metadata files:
(cid:129) (Windows) drive:\camera+reel_date.RMD\camera+reel_clip_date+random number.RDC (cid:129) (Macintosh) Macintosh HD/camera+reel_date.RMD/camera+reel_clip_date+random number.RDC Avid's RED workflow allows you to work with RSX, RLX, and RMD files to manage a clip's color.
You have access to all the metadata and color values in the raw RED files as well as the above mentioned “look” files associated with this media. You may also make non-destructive, custom color adjustments to the R3D clip. These adjustments can be made at any stage of the process.
Media Composer detects folders named with RMD and RDC and files named .R3D.
> **Note:** Audio is included in the RED files, and will display as .wav files in the bin.
You cannot span media across multiple cards. Each clip is recorded as a separate clip, regardless of how many cards you use. There is a 2GB limit on a single master clip. As you record footage, once a 2GB file is captured, an R3D file is created (.001). The camera continues to record and the next 2GB (or less) of media creates another R3D file (.002) until you end recording. So, you can have several R3D files in one clip folder but they are all associated with one master clip. When you link these files/folders, one master clip appears in your bin.
A typical workflow is as follows:
1. Make sure the RED plug-in is installed on your system.
2. Attach the RED drive or insert a REDFlash card.
Your Avid editing system links the RED clips automatically into a bin. The media itself remains on the disk. The clips point directly to the high-resolution media on the disk. All metadata information displays as columns in the bin.
> **Note:** If you use multiple cards and you remove one of the cards, your media displays offline.
3. Use the master clips to edit the sequence.
4. (Option) Rename the clips to help you organize your material.
Linking to DPX Media
5. Choose the video quality from the Transcode & Consolidate tab of the Media Creation setting.
For more information, see “Preparing your RED Clip for Transcode, Mixdown, or Render” on page 148.
6. Transcode your sequence or clips.
7. Remove the RED drive or card.
For information on preparing your RED clip for transcode, mixdown, or renders, see “Preparing your Preparing your RED Clip for Transcode, Mixdown, or Render If you want to take a RED clip and offline it to another application, you can create a different resolution RED file, depending on your requirements. This changes the speed and quality of the clip, which could affect the playback performance. The higher the video quality the slower the process (transcode, mixdown, render). The lower the video quality the faster the process. Before you transcode, mixdown or render your clip or sequence, set the appropriate quality in the Media Creation dialog box.
> **Note:** If you apply any Reformat options (stretch, letterbox, etc.) to your clip, when you perform a
transcode, the reformatting options will apply.
To prepare your RED clip for transcoding, mixdown or rendering:
1. Before you transcode, mixdown or render, select File > Media > Media Creation Settings.
2. Click the Mixdown & Transcode tab or click the Render tab.
3. Select the playback quality from the Linked Source Scaling/Quality menu.
- Full
- Half (Best Quality)
- Half (Good Quality)
- Quarter
- Eighth
- Sixteenth
4. Click OK.
5. Transcode, mixdown or render your clip or sequence as required.
For information about transcoding, see “Using the Transcode Command” on page 333.
For information about mixdown, see “Performing a Video Mixdown” in the Help.
For information about render, see “Basics of Effects Rendering” in the Help.
Linking to DPX Media The Avid Image Sequencer Plug-in allows you to link to DPX files. DPX is a bitmap file format used to store a single frame of a motion picture or video data stream. The DPX format is an ANSI and SMPTE standard based on the Kodak Cineon file format.
The Avid Image Sequencer Plug-in is automatically installed when you install Media Composer.
Linking to DPX Media The DPX plug-in can link to RGB files that have 8-bit, 10-bit (filled using Method A only), 12-bit (filled using Method A only), and 16-bit components. It can only link to files that contain a single image element for example, interleaved RGB). It can link to files of either byte order (MSB or LSB).
The DPX plug-in cannot link to files that are encrypted or run-length encoded. For information on Method A, see Annex C of the SMPTE spec 268M-2003.
> **Note:** Media Composer supports reading 8-bit, 10-bit, 12-bit and 16-bit DPX files. Only export of 10-bit
HD is supported at this time.
To link to DPX files:
1. Select File > Settings and click the User tab.
2. Click Link.
The Link Settings dialog opens.
3. Click the AIS Metadata tab and select the Reel name and Frame Count metadata you want to
read from the DPX file.
Reel names are mapped to Camroll and Reel # bin columns and Frame Counts are mapped to the DPX column. Both should populate AAF exports.
characters and 9 digits.
Linking to DPX Media Option Description Reel name based on: Select from where to read the Reel name:
(cid:129) Embedded in source file (cid:129) Source file name (cid:129) Source file path Frame Count: Select from where to start the frame count:
(cid:129) Convert timecode to frames (cid:129) From the File name
4. Select File > Input > Source Browser.
The Source Browser window opens.
5. Click the Link button on the bottom left of the Source Browser window.
6. Navigate to the folder that contains your DPX files. Note the following when selecting files.
- If you select the entire folder, all sequential files will be represented as one master clip in the
bin. For example, selecting a folder containing the following DPX files results in one Kermit master clip and one Oscar master clip in the bin.
- If you select one file from a sequential group, the resulting master clip contains the entire
group. If you select a range within the sequential group, the master clips includes just the selected files. For example, if you select the highlighted files below, the following master clips would appear in the bin: Bert (1 and 3), Bird (1, 2, 3, and 4), Ernie (1 and 2), Ernie (5 and 6), Kermit (1, 2, 3, and 4), Oscar (1 and 2), and the count.mov.) Linking to OpenEXR
7. Ctrl+click or Shift+click to select multiple files.
8. Either drag and drop the clip(s) to the bin or select the Target Bin at the bottom right of the
Source Browser and click Link.
The clips appear in the bin with a link icon.
> **Note:** Make sure that all the files in your DPX sequence have the same metadata such as height,
orientation, interlace/progressive, etc. especially if you replace one or more files in your DPX sequence with files written by a different DPX writing application. If the DPX sequence contains one or more files that have inconsistent metadata, the DPX sequence will still link without error, but will display an “AMA Plug-In Unable to Provide Sample” error when the DPX sequence is played. If you get such an error, if possible, replace the files that have inconsistent metadata If you can't replace them, move them into a separate folder and link to that folder separately.
For details on exporting as DPX, see “Exporting as DPX” on page 863.
Linking to OpenEXR Media Composer supports linking OpenEXR files using the Avid UME Link plug-in. OpenEXR is a Magic®.
high-dynamic-range imaging file format created by the Industrial Light & The UME Link plug-in is installed with Media Composer and will automatically be used when linking to OpenEXR files.
To link to OpenEXR files:
1. Do one of the following:
- From Tools select Source Browser.
Linking to an AS-02 Bundle
- Select File > Input > Source Browser.
2. Click the Link button at the bottom left of the Source Browser window.
3. Navigate to the folder containing the OpenEXR files.
4. Select one of the files in the sequential list of OpenEXR files.
5. Select the Target Bin where you want to link the OpenEXR files.
6. Click the Link button at the bottom right of the Source Browser.
One master clip containing the sequential files is linked in the bin.
> **Note:** You cannot select Volumes to link to OpenEXR folders.
Linking to an AS-02 Bundle Media Composer supports the creation of AS-02 Export Volumes. AS-02 is a specification for grouping multiple versions of program content into one single bundle. These bundles provide an efficient approach for working in a file-based environment. For information on creating an AS-02 bundle, see “Creating an AS-02 Export Volume” on page 869.
You can link to an existing AS-02 bundle.
Linking to an AS-11 Sequence To link to an existing AS-02 Volume:
1. Select File > Input > Link to Volume for Export.
2. Select the folder where the AS-02 bundle resides.
3. Click OK.
4. A new volume bin opens with the AS-02 assets.
Linking to an AS-11 Sequence Media Composer supports the Advanced Media Workflow Association (AMWA) AS-11 specification. This specification is used in broadcast environments. The specification defines a set of rules that constrain the specification. AS-11 is an OP1A MXF file format for the delivery of finished programming. For information on creating an AS-11 sequence, see “Exporting as AS-11” on page 865. Use the following procedure to link to an existing AS-11 sequence.
To link to an existing AS-11 sequence:
1. Select File > Input > Source Browser.
The Source Browser window opens.
2. Click the Link button on the bottom left of the Source Browser window.
3. Navigate to locate and select the AS-11 sequence.
4. Select the Target bin and click Link on the bottom right of the Source Browser window.
The clips appear in the bin. A link icon appears next to the clips.
The spanned markers are represented in the source Timeline and all the descriptive metadata appears in the Bin columns.
Linking to Broadcast Wave and AIFF Files Media Composer contains a WaveAIFF plug-in that can read AIFF and WAV with uncompressed 16- bit or 24-bit audio up to 24 channels. If the BWAV or AIFF contains iXML metadata, it is preserved and carried with the master clip in the Bin. This information is also exported in the AAF where it can be available to Pro Tools.
When broadcast wave media is linked through the WaveAIFF plug-in, and the media indicates a start time that is between frame edges, the beginning of the clip is padded with silence that brings it back to a frame edge. The resulting linked clip will span from the beginning of the video frame that contains the first audio sample to the end of the video frame that contains the last audio sample.
The Get Info display on the linked master clip indicates how many samples of subframe offset are being applied to the selected clip.
Unlike the import behavior, there is no setting to control this.
Whenever subframe placement of the audio is desired for other downstream operations, it is highly recommended that you consolidate or mix down WaveAIFF linked media before export. This is because other applications are unaware of how to use the subframe alignment information required to nudge the audio data. Consolidated and mixed down media will contain the silence padding required to ensure it aligns correctly to video frame edges.
Linking to Broadcast Wave and AIFF Files To Link to a Broadcast Wave or AIFF File:
1. Select File > Input > Source Browser.
The Source Browser window opens.
2. Click Link in the bottom left of the Source Browser window.
3. Navigate to the location where the BWAV or AIFF files reside and select the files you want to
link to.
4. Select the Target bin and click Link on the bottom right of the Source Browser window.
The clips appear in the bin. A link appears next to the clips. The audio track settings are based on the Link settings.
If the file contains iXML metadata and Broadcast Wave metatdata, relevant data is entered into the appropriate bin columns. If there is a conflict between the Broadcast Wave data and the iXML metadata, the iXML metadata will be used.
The interpretation of audio start time for Broadcast Wave and iXML files requires file frame rate information. The file’s frame rate is determined in this priority order:
- If the frame rate is given in the iXML data, it has highest priority.
- If the frame rate is in the Avid extension to the BWAV, it has next highest priority.
- Otherwise, the Audio Start Time Option in the Link Options tab of the Link Settings is used.
The audio start time appears in the Sound TC column. If the audio TC rate is different from the project TC rate, the frame rate appears in the Soundroll column. The Sound TC is re-interpreted in the current project's frame rate to become the clip’s start timecode.
5. Click Open.
Difference between Importing BWAV or Linking to a BWAV with WaveAIFF Plug-In The following describes the differences between importing a BWAV file or linking to a BWAV file using the WaveAIFF Plug-In.
(cid:129) The import process does not read iXML metadata. Performing an Link operation will read iXML metadata.
(cid:129) If the BWAV files contains an iXML tape name, this will appear as the “Sound Roll” and will override the BWAV specification of “Tape.” (cid:129) Import will automatically group multiple mono clips based on file name patterns. Linked files will not.
(cid:129) The linked version of the clip may sometimes be one frame shorter than the imported version.
This is because import is able to pad the end of the file with silence to fill out a shortage of audio samples in the last video frame.
(cid:129) During the import process, you are prompted to select the TC rate and the Sound TC and start time are displayed. During the WaveAIFF linking process, you are not prompted to select the TC rate. The file TC rate comes from a setting (if not present in the file itself), and the Sound TC and TC rate used are displayed in bin columns.
Linking with Multichannel Audio Linking with Multichannel Audio You can use the Link Settings dialog box to define the audio track formats for the audio channels in your linked media, up to a maximum of 64 audio channels for the clips in your bins. This allows you to specify which source channels are treated as mono or multichannel audio tracks in your project, rather than having to modify the clips in your bin after you link to the media.
The mappings affect all media clips created when you link to your source media. If you want to use different mixes for different master clips or different projects, create a custom Link Settings template for each separate type of mix and then create your linked master clips.
Each stereo track requires two channels, but you can mix mono and stereo input channels for your linking operation as long as you do not exceed the maximum of 64 audio channels for each master clip.
To specify the multichannel audio mix for linked clips:
1. Select File > Settings and click the User tab.
2. Double-click Link.
The Link Settings dialog box appears.
For information about the Link Settings, see “Link Settings” on page 1258.
3. Click the Link Options tab.
The Link Options tab lists any multichannel audio mappings in the current Link Settings template.
4. Click Edit.
The Set Multichannel Audio dialog box opens.
Linking with Multichannel Audio
5. Click the format buttons to select one of the following audio track formats for each pair of source
channels:
Button Track Format Mono Stereo You must map source audio channels in mono or stereo pairs. For example, you cannot map A1 to a mono track and A2 and A3 to a stereo track. Instead, map A1 and A2 to mono tracks, and A3 and A4 to a stereo track. If the source media does not have an audio channel on A2, Media Composer ignores the channel.
6. Click OK to close the Set Multichannel Audio dialog box, and then click OK to close the Link
Settings dialog box.
The Track Formats column in the bin Text view displays the format for all multichannel audio tracks in a master clip.
To save a custom map of linked audio channels as a settings template:
1. Select File > Settings and click the User tab.
2. Click Link.
3. Select Edit > Duplicate.
A duplicate setting appears in the Settings list.
Linking Clips with Ancillary Data
4. Name the setting by doing the following:
a. Click the custom name column.
b. Type a name.
c. Press Enter.
You can select this new setting whenever you link clips.
Linking Clips with Ancillary Data The following steps describe a typical workflow for linking XDCAM or MXF clips with ancillary data.
You should be aware of the following:
(cid:129) If you consolidate the XDCAM or MXF clip or the sequence that contains the XDCAM or MXF clip with ancillary data, the ancillary data track stays with the consolidated clip or sequence. In addition, the Ancillary Data bin column populates with the DID and SDID numbers once you consolidate or transcode the clip with the ancillary data.
A typical workflow is as follows:
1. Make sure the Sony XDCAM or MXF plug-in is installed on your system.
2. For XDCAM, install the appropriate Sony XDCAM drivers.
3. For an XDCAM clip with ancillary data, insert the XDCAM disk.
The system links the XDCAM clip with ancillary data into a bin. The media itself remains on the disk. The clips point directly to the media on the disk.
> **Note:** Ancillary data is only supported with high resolution XDCAM clips. A proxy clip does not contain a
data track, however once you relink to the high resolution XDCAM clip, the data track comes online.
> **Note:** If you use multiple cards and you remove one of the cards, your media displays offline.
4. For an MXF clip with ancillary data, select File > Input > Source Browser.
The Browser Window opens.
5. Select Link in the bottom left of the Source Browser window
6. Navigate to and select the file(s) you want to link. Ctrl+click or Shift+click to select multiple
files.
7. Select the Target Bin and click Link in the bottom right of the Source Browser window.
The MXF clip appears in the bin along with a new Ancillary Data bin column.
8. Use the master clips to edit the sequence.
When you load the clip into a sequence, a Data track appears which contains the ancillary data.
9. You can then transcode or consolidate your sequence or clips.
> **Note:** When you consolidate, if you want to keep your clips linked to the original source, select the option
“Keep Master clips linked to media on the original drive,” in the Copying Media Files dialog box.
When you consolidate the XDCAM or MXF clip or the sequence that contains the XDCAM or MXF clip with ancillary data, the ancillary data track stays with the consolidated clip or sequence.
Linking Clips with Ancillary Data
> **Note:** For information on consolidating your sequence, see “Consolidating Media” on page 329. For
information on transcoding your sequence, see “Using the Transcode Command” on page 333.