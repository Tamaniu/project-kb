---
product: media-composer
product-area: editing
version: "2022.12.6"
release-date: 01/12/2022
doc-type: readme
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

Avid Editing Application Composer® ReadMe for Media v2022.12.6 Security Guidelines Update Currently, CrowdStrike is only supported up to v7.0.3 (macOS and Windows). Do not install v7.0.4 or later at this time.
Fixed in Media Composer v2022.12.6 The following have been fixed:
➤ Bug Number: MCCET-4179. Match Frame did not work properly after applying a dissolve between two clips and a Motion Effect or “Fit to Fill” was used.
➤ Bug Number: MCCET-4835. Depending on source media, Gang button was unexpectedly enabled when using Match Frame in MultiCamera mode.
➤ Bug Number: MCCET-5135. MultiCamera edits containing a muted group clip with a Temporal (motion) Adapter created a blank clip after selecting “Commit Multicam Edits”.
➤ Bug Number: MCCET-4692. Modifying values in a bin’s Auxiliary TC1 column caused an “Assertion failed: FALSE File” error if the clips were at non-standard frame rates, such as 15 fps.
➤ Bug Number: MCCET-5214. Audio was out of phase when using “Proxy Preferred” instead of “High-Resolution Only” playback.
➤ Bug Number: MCCET-4639. Muting clips with an alpha layer on the timeline produced an “Assertion failed: parent File” or “Exception: FATAL_ERROR” error.
➤ Bug Number: MCCET-4209. Media Composer crashed when using Segment Mode to drag nested clips between tracks in a Matte Key.
Fixed in Media Composer v2022.12.6 ➤ Bug Number: MCCET-3491. Using Waveform Analysis or Source Timecode to create an autosynced subclip did not work properly, resulting in clips that would not sync or were out of sync by a frame or more.
➤ Bug Number: MCCET-5219. Using ScriptSync with Modern Standard Arabic (MSA) resulted in an “Error syncing… The file could not be opened” message. The corresponding AvidLanguagePacks installer was “Arabic (Modern Standard)”.
➤ Bug Number: MCCET-5308. (Windows) “Multi-Input mode” text was scaled incorrectly in the Audio Suite Effect Dialog user interface.
➤ Bug Number: MCCET-5318. Using Lift or Extract with Digital Audio Scrub enabled caused Media Composer to crash.
➤ Bug Number: MCCET-5292. AMA Mapping error occurred if essence data was unavailable for some tracks.
➤ Bug Number: MCCET-5066. Source Browser did not consistently ingest media from P2 cards.
➤ Bug Number: MCCET-5061. Audio waveforms would not redraw properly if both “Show Marked Waveforms” and “Show Marker Regions” were enabled in the Timeline settings.
➤ Bug Number: MCCET-5333. (MediaCentral | Production Management) Matte Keys with a duration longer than two minutes would not appear as rendered.
➤ Bug Number: MCDEV-17422. Connecting to iNews using the NRCS tool triggered an installation of Avid Media Composer.
➤ Bug Number: MCCET-5339. Enabling the Play Length Toggle caused Media Composer to crash in v2022.12.5 only.
➤ Bug Number: MCCET-3909. Media Composer appeared to hang on launch when using a checked-out license with no VPN connection to the license server.
➤ Bug Number: MCCET-5356. Performing Send to Playback with the “Transcode before sending to playback” option enabled in the Transfer Settings window could result in a message that media was offline. After clicking OK to acknowledge the message, media became online.
➤ Bug Number: MCCET-5358. In some instances, XDCAM media became offline when using Dynamic Relink in v2022.12.5 only.
Product specifications are subject to change without notice and do not represent a commitment on the part of Avid Technology, Inc.
The software described in this document is furnished under a license agreement. You can obtain a copy of that license by visiting Avid's Web site at www.avid.com. The terms of that license are also available in the product in the same directory as the software.
The software may not be reverse assembled and may be used or copied only in accordance with the terms of the license agreement.
It is against the law to copy the software on any medium except as specifically allowed in the license agreement.
No part of this document may be reproduced or transmitted in any form or by any means, electronic or mechanical, including photocopying and recording, for any purpose without the express written permission of Avid Technology, Inc.
U.S. GOVERNMENT RESTRICTED RIGHTS. This Software and its documentation are “commercial computer software” or “commercial computer software documentation.” In the event that such Software or documentation is acquired by or on behalf of a unit or agency of the U.S. Government, all rights with respect to this Software and documentation are subject to the terms of the License Agreement, pursuant to FAR §12.212(a) and/or DFARS §227.7202-1(a), as applicable.
Avid and the Avid logo are trademarks or registered trademarks of Avid Technology, Inc. in the United States and/or other countries.
See www.avid.com/US/about-avid/legal-notices/trademarks for more information on Avid's trademarks.
Adobe and Photoshop are either registered trademarks or trademarks of Adobe Systems Incorporated in the United States and/or other countries. Apple and Macintosh are trademarks of Apple Computer, Inc., registered in the U.S. and other countries. Windows is either a registered trademark or trademark of Microsoft Corporation in the United States and/or other countries. All other trademarks contained herein are the property of their respective owners.
Avid Media Composer ReadMe (cid:129) Created 10/31/23