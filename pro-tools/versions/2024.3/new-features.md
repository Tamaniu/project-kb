---
product: pro-tools
product-area: editing
version: "2024.3"
release-date: 01/03/2024
doc-type: new-features
source: pdf
confidentiality: public
date-added: 11/05/2026
status: current
---

What’s New in Pro Tools Version 2024.3 © 2024 Avid Technology, Inc., (“Avid”), all rights reserved. This guide may not be duplicated in whole or in part without the written consent of Avid.
For a current and complete list of Avid trademarks visit: www.avid.com/legal/trademarks-and-other-notices This product may be protected by one or more U.S. and non-U.S. patents. Details are available at www.avid.com/patents.
Product features, specifications, system requirements, and availability are subject to change without notice.
Pro Tools includes élastique Pro V3 by zplane.development as time stretching engine.
Bonjour, the Bonjour logo, and the Bonjour symbol are trademarks of Apple Computer, Inc.
Thunderbolt and the Thunderbolt logo are trademarks of Intel Corporation in the U.S. and/or other countries.
Confidential unpublished works. Copyright 2024 Dolby Laboratories. All rights reserved.
Dolby, Dolby Atmos, and the double-D symbol are registered trademarks of Dolby Laboratories Licensing Corporation.
Guide Part Number 9329-66542-00 REV A 03/24 Contents MIDI Plug-ins MIDI Signal Flow Improvements . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 10 Copy and Paste MIDI between Pro Tools and Sibelius. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 12 Miscellaneous Features and Improvements. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 13 Support for macOS 14.3.1 (“Sonoma”) . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 13 Melodyne (ARA) and Clip Effects Floating Windows . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 13 Dolby Atmos Improvements . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 14 Video Bounce Same as Source Enhancement . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 16 Pro Tools Sketch Improvements . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 16 Pro Tools Guided Tour. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 18 What’s New in Pro Tools 2024.3 iii What’s New in Pro Tools 2024.3 New Features and Enhancements Tools® Pro software version 2024.3 provides the following new features and enhancements:
• MIDI improvements:
• MIDI effects plug-ins • MIDI signal chaining Sibelius® • Copy and paste MIDI between Pro Tools and • Miscellaneous new features and improvements • Support on macOS 14.3.1 (“Sonoma”) • Detachable Melodyne (ARA) and Clip Effects tabs in Edit window • Dolby Atmos® improvements • Video bounce with Same as Source enhancement • Pro Tools Sketch improvements • Pro Tools “guided tour” for beginners System Requirements and Compatibility Information Avid can only assure compatibility and provide support for hardware and software it has tested and approved.
For complete system requirements and a list of qualified computers, operating systems, hard drives, and third-party devices, visit:
www.avid.com/compatibility Important EuControl Compatibility Instructions If your system includes any EuControl controllers, do the following to use them with Pro Tools 2024.3:
In EuControl Settings, go to the Applications tab.
In the Applications list, click to select the older version of Pro Tools (such as Pro Tools 23Mac).
Click the minus sign (“–“) next to the Last Focused Application field to remove Pro Tools from the list.
If necessary, launch Pro Tools 2024.3 then click on it to make it appear in the Last Focused Application field.
Click the plus sign (“+”) to add Pro Tools 24.3 to the Applications list.
EuControl Settings, Applications tab Conventions Used in This Guide Pro Tools documentation uses the following conventions to indicate menu choices, keyboard commands, and mouse commands:
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
www.avid.com/products MIDI Improvements MIDI Plug-ins (Instrument Tracks Only) Pro Tools provides a new MIDI plug-ins category for inserts on Instrument tracks. MIDI plug-ins affect track MIDI in real-time on playback or live MIDI input. Use MIDI effect plug-ins to add MIDI effects such as note stacking or velocity processing to enhance parts and arrangements. MIDI effects plug-ins can make a sequence sound more like a human performance or help you discover fresh musical and rhythmic creative ideas.
For detailed information about Avid and included third-party MIDI plug-ins, see the Avid Audio and MIDI Plug-ins Guide (Help > Audio Plug-ins Guide) or Pro Tools Help (Help > Pro Tools Help).
To insert a MIDI plug-in on an Instrument track:
6 In either the Mix or Edit window, ensure that Inserts view is enabled.
7 Click the first available insert and select the MIDI plug-in you want from the MIDI plug-in submenu. (Note that MIDI plug-ins can be used with any insert.) 8 Insert a virtual instrument plug-in after any MIDI plug-ins inserted on the track (or route the MIDI output to an external MIDI device).
Avid MIDI Plug-ins Note Stack Note Stack (MIDI plug-in) Note Stack lets you add MIDI notes to incoming MIDI notes to create note stacks. You can add or subtract notes from the note stack (1–9) by clicking Note# buttons. You can also adjust the interval between the added note and the incoming note, and scale its ve- locity. To add an element of random variation, you can adjust the probability of whether each note in the stack is added or not. This can be useful for layering drum samples, such as snare and hand claps, without having to record additional MIDI data, with or with- out variation.
Notes 1–9 Note On/Off (1–9) Turns the generated note On or Off.
Note Offset Defines the number of semitones by which the incoming note is transposed.
Note Velocity (V) Defines the velocity of the generated note relative to the velocity of the incoming note. At 50%, the note plays at half the velocity and 200% the velocity is doubled (maximum 127).
Note Probability (P) Defines the probability of a note being triggered each time there is an incoming note. At 100%, the note always plays, while at 50% there is 50% chance that the note will be played.
Pitch Control Pitch Control (MIDI plug-in) Pitch Control lets you alter the pitch of incoming MIDI notes. Pitch Control can be useful for triggering specific notes without hav- ing to re-assign MIDI notes in an electronic drum kit or other MIDI controller. For example, kick and snare are most commonly C1 and D1, but side-stick, claps, and rim shot/accent assignments vary among drum libraries. Pitch Control can be used to trigger the sounds you want without having to edit MIDI data or re-assign notes in the controller or virtual instrument. Pitch Control can also be used for percussive patterns to generate different sounds based on probability.
Pitch Range When enabled, only notes defined by Pitch Range are processed. When disabled, all incoming notes are processed.
Pitch Range Type Determines whether processing is applied only to notes within the defined range or to notes outside the defined range.
Pitch Range Low Defines the lower limit of the Pitch range. If the lower limit value is smaller than the upper limit, then the range is inverted.
Pitch Range High Defines the upper limit of the Pitch range. If the upper limit value is bigger than the lower limit, then the range is inverted.
Velocity Range When enabled, only the notes defined by Velocity Range are processed. When disabled, all incoming notes are processed.
Velocity Range Type Determines whether processing is applied only to notes within the defined range or to notes outside the de- fined range.
Velocity Range Low Defines the lower limit of the Velocity range. If the lower limit value is smaller than the upper limit, then the range is inverted.
Velocity Range High Defines the upper limit of the Velocity range. If the upper limit value is bigger than the lower limit, then the range is inverted.
Control Transposes selected notes by octaves and semitones.
Transpose by Octaves/Semitones Transposes selected notes by semitones, as expressed by the difference between the source and destination Transpose From/To pitches.
Set All Notes To Sets all selected notes to the same pitch.
Quantize to Session Key in Scale Steps Transposes selected notes up or down by scale steps based on the Pro Tools Key Signa- ture ruler. When set to 0, only notes outside of scale are transposed.
Velocity Control Velocity Control lets you alter the velocities of incoming MIDI notes.
Velocity Control (MIDI plug-in) Velocity Range When enabled, only the notes defined by Velocity Range are processed. When disabled, all incoming notes are processed.
Velocity Range Type Determines whether processing is applied only to notes within the defined range or to notes outside the de- fined range.
Velocity Range Low Defines the lower limit of the Velocity range. If the lower limit value is smaller than the upper limit, then the range is inverted.
Velocity Range High Defines the upper limit of the Velocity range. If the upper limit value is bigger than the lower limit, then the range is inverted.
Pitch Range When enabled, only the notes defined by Pitch Range are processed. When disabled, all incoming notes are processed.
Pitch Range Type Determines whether processing is applied only to notes within the defined range or to notes outside the defined range.
Pitch Range Low Defines the lower limit of the Pitch range. If the lower limit value is smaller than the upper limit, then the range is inverted.
Pitch Range High Defines the upper limit of the Pitch range. If the upper limit value is bigger than the lower limit, then the range is inverted.
Control Select the desired Control mode for the specified Velocity and Pitch Range.
Filter Out filters out (ignores) the selected note range from processing.
Set to Sets all velocities to the specified value (1–127).
Add Adds to existing velocity values by the specified amount (1–127).
Subtracts from existing velocity values by the specified amount (1–127).
Subtract Scale by Scales all velocities by a percentage amount (1–400%).
Randomize On/Off When enabled, the selected Control mode is randomized by the specified percentage value.
Randomize Percentage Defines the percentage value for the randomization of the selected Control mode.
Limit On/Off When enabled, it restricts the result of the selected Control mode to a minimum and maximum range.
Limit Low Defines the lower limit of the Limit range.
Limit High Defines the upper limit of the Limit range.
Determines whether the Control mode is applied only on Note On, Note Off, or both Note On & Off events.
Apply to Included 3rd-Party MIDI Plug-ins Avid is also pleased to provide the following MIDI plug-ins created by third-party development partners. These are installed with Pro Tools:
• Modalics EON-Arp • Pitch Innovations Groove Shaper Lite For detailed information about included third-party MIDI plug-ins, see the Avid Audio and MIDI Plug-ins Guide (Help > Audio Plug-ins Guide) or Pro Tools Help (Help > Pro Tools Help).
Riffer (MIDI plug-in) Modalics EON-Arp EON-Arp (MIDI plug-in) Pitch Innovations Groove Shaper Lite Groove Shaper (MIDI plug-in) MIDI Signal Flow Improvements Pro Tools lets you route MIDI from the MIDI input of an Instrument track to any plug-ins on the track with MIDI ports, such as MIDI plug-ins, virtual instruments, or audio plug-ins with MIDI CC (Continuous Control). MIDI can be routed to individual plug-ins, or to a “MIDI Chain” that consists of a series of compatible plug-ins in consecutive insert slots on an Instrument track.
Instrument Track MIDI Chains An Instrument Track Chain lets MIDI data pass sequentially (top to bottom) through the MIDI-compatible plug-ins on an Instru- ment track. A MIDI Chain is essentially virtual MIDI Thru for virtual MIDI devices on individual Instrument tracks. MIDI outputs from Instrument and MIDI tracks can be assigned to an Instrument track’s MIDI Chain In. MIDI inputs for Instrument and MIDI tracks can be assigned to an Instrument track’s MIDI Chain Out. MIDI Chains let you control all compatible plug-ins on an Instru- ment track from a single MIDI stream. This can be useful for live performance and MIDI recording (for example, playing a virtual electric piano on insert A and controlling a wah-wah pedal effect plug-in on insert B).
Chain In To assign the MIDI output of an Instrument track to the plug-in chain:
From the MIDI Output selector, select <track name> > MIDI Chain > Chain In.
 Note that the moment you insert any MIDI capable plug-in on an Instrument track, Chain In is assigned automatically.
The MIDI Chain order is displayed below In:
Chain MIDI Thru indicator, Insert slot (A–E, F–J), <plug-in name>, <plug-in instance #> MIDI Chain In Inserts in MIDI Chain Assigning “ModWave” Instrument track MIDI output to ModWave MIDI Chain In MIDI Chain Flow Visualization MIDI Thru is indicated for each insert in the MIDI Chain by a shaded circle. A top-half shaded circle indicates MIDI In only (no MIDI thru). A bottom-half shaded circle indicates MIDI Out only (such as with a generative MIDI plug-in). No circle is present for inserts that are completely excluded from the MIDI Chain (no MIDI In, Out, or Thru).
MIDI Thru indicators MIDI Improvements 10 MIDI Chain Out You can select the MIDI Chain Out of any Instrument track in the session as the MIDI input for Instrument and MIDI tracks. MIDI Chain Out includes any MIDI processing on the source Instrument track.
The MIDI Chain order is displayed below Chain Out:
MIDI Thru indicator, Insert slot (A–E, F–J), <plug-in name>, <plug-in instance #> Selecting an Chain Out from Inst 3 for MIDI track input Individual MIDI Targets Select an individual MIDI target to send MIDI exclusively to that device on the track. This provides the same functionality as MIDI In and Out of tracks in previous versions of Pro Tools.
To select an individual MIDI target:
From the MIDI Output selector, select <track name> > Individual Target > <MIDI device>.
 Selecting an individual MIDI target ([C] modwave native 1) MIDI Improvements 11 MIDI Chain versus Individual Targets MIDI Chains use the first MIDI channel of plug-ins inserted on an Instrument track. Chain In and Chain Out cannot be part of a selection of multiple MIDI streams. If anything other than the MIDI Chain is selected (that is, if one or more individual plug-ins are selected), then plug-ins inserted on the track can only be targeted individually. Plug-ins cannot be in both Chain mode and In- dividual Target mode at the same time. If an Instrument track is in MIDI Chain mode (either because the track itself or another track that is routed to the MIDI Chain), then individually targeting plug-ins on that track is not possible, and the plug-ins are grayed out.
Likewise, if one or more plug-ins on an Instrument track are targeted individually, then the MIDI Chain for that track is not avail- able and is grayed out.
Copy and Paste MIDI between Pro Tools and Sibelius In Sibelius and Pro Tools (versions 2024.3 and later) you can copy and paste MIDI (notation) to the clipboard and then paste it from any Pro Tools session or Sibelius score into any other as long as you do not clear the system clipboard.
To copy and paste MIDI between Pro Tools and Sibelius:
1 Make a selection of MIDI in either Sibelius or Pro Tools.
2 Copy the selection to the Clipboard.
3 Paste the selection to Pro Tools MIDI or Instrument tracks or to Sibelius Instruments (staves).
MIDI Improvements 12 Miscellaneous Features and Improvements Support for macOS 14.3.1 (“Sonoma”) Pro Tools 2024.3 provides support for macOS “Sonoma” with certain caveats. Please visit the Avid Knowledge Base for the latest information and a list of known issues as of macOS 14.3.1.
Melodyne (ARA) and Clip Effects Floating Windows In the Edit window, the Melodyne (ARA) tab and the Clip Effects tab can each be detached independently and opened as its own floating window.
To open the Melodyne or Clip Effects window:
1 If necessary, enable Melodyne processing on at least one track.
2 Do one of the following:
• Select Window > ARA Plug-Ins > Melodyne or Window > Clip Effects.
• In the Edit window, click the Open Window icon on the Melodyne or Clip Effects tab.
Open/Close Window icons To keep the Melodyne or Clip Effects window floating on top of other windows:
In the Melodyne Window or Clip Effect Window menu, select Keep Window on Top.
 To close the Melodyne or Clip Effects window, do one of the following:
Deselect Window > ARA Plug-Ins > Melodyne or Window > Clip Effects.
 In the Melodyne or Clip Effects window, click the Close Window icon.
 Miscellaneous Features and Improvements 13 In the Edit window, click the Close Window icon on the Melodyne or Clip Effects tab.
 Dolby Atmos Improvements ADM File Metadata on Import Pro Tools shows the following information in the Import Session Data dialog when importing an ADM file:
• Name • Type • Start Time • End Time • FFOA (First Frame of Action) • Timecode Format • Bed Configurations • Number of Beds • Number of Objects • Audio Sample Rate • Audio Bit Depth • Application and version that created the ADM Dolby Atmos Page Sub-paths Pro Tools lets you create sub-paths for Dolby Atmos beds (objects are only stereo or mono and do not support custom subpaths).
To create subpaths for a Dobly Atmos bed:
On the Dolby Atmos page of the I/O Setup, select the Dolby Atmos bed for which you want to create sub-paths.
Click New Sub-Path.
Configure the New Sub-Paths dialog as desired and click Create.
Stock and Custom Re-Renders Pro Tools supports two different kinds of re-renders: stock and custom.
Stock Re-Renders Pro Tools offers two stock re-render options: Loudness and Headphones. These are exclusively for routing audio back into the ses- sion for monitoring.
Loudness Re-Render To be routed to a track with a loudness metering plug-in. The Loudness Re-Render can be configured as 5.1 or 2.0 on the Dolby Atmos tab the I/O Setup.
Headphones Re-Render To be sent to headphones through an output different from your main monitors. The Headphones Re-Ren- der can be configured as Binaural or 2.0 on the Dolby Atmos tab of the I/O Setup.
Selecting a Dolby Atmos Re-Render path as a track input for monitoring Miscellaneous Features and Improvements 14 Stock re-renders cannot be accessed in the Bounce Mix window. They follow the mute state in the Dolby Atmos Renderer window.
They also require very low CPU overhead unless binaural processing is engaged for the headphones re-render. These re-render op- tions follow the H/W Buffer Size, so you can get lower latency monitoring if needed. This means that binaural processing is dis- abled at lower buffer sizes.
Custom Re-Renders Custom Re-Renders can be used to route audio back into the session or for bouncing to disk (File > Bounce Mix). Custom Re-Ren- ders let you configure a copy of the mix in any format supported for monitoring Dolby Atmos within Pro Tools. You can also filter out elements of the mix by group, bed, or object. Note that while there is no hard limit for the number of custom re-renders you can create, the more “live” re-render streams you have, the more CPU resources will be used.
To ensure optimal performance, custom re-renders always run at the highest possible H/W Buffer Size supported by the selected Playback Engine regardless of the actual H/W Buffer Size selected in the Playback Engine. If you require lower latency, you can use the stock re-renders at a lower H/W Buffer Size. Since custom re-renders are always running at the highest possible H/W Buf- fer Size, you can keep using binaural processing when the actual H/W Buffer Size selected in the Playback Engine is lower.
Live re-renders are suspended when using the External Dolby Atmos Renderer, but custom re-render configurations remain accessible for Bounce to Mix.
Re-Renders window To create custom re-renders:
1 Do one of the following:
• On the Dolby Atmos page of the I/O Setup, click Custom Re-Renders.
• In the Bounce Mix window, set Dolby Atmos as the File Type and enable Re-Renders, then click Configure.
2 Type the Name you want for a New Re-Render path and click + (plus).
3 If you want the new re-render to be live, select Live. This makes the re-render available to track inputs in Pro Tools. Offline re-renders are only available for Bounce Mix and do not use any additional CPU.
4 Select the channel Format you want for the new re-render.
5 Select either Full Mix or Custom for the selected re-render.
6 For Custom re-renders, select (or deselect) the Types and Groups you want to include in the re-render.
7 Repeat the previous steps to create additional re-renders.
If a track had a live re-render assigned as an input, and that re-render is taken offline, the track input remains assigned and is made inactive.
Miscellaneous Features and Improvements 15 Video Bounce Same as Source Enhancement Pro Tools lets you bounce H.264 using Same as Source if blank space is included in the selection past the end of the clip. Note that the entire file must be included in the timeline selection, and only one file can be selected at a time.
Pro Tools Sketch Improvements Embed Sketch Documents in Pro Tools Session Files (Pro Tools Sketch Window Only) Pro Tools now includes a new option in the Dashboard to create and embed a new Sketch document in an open session (Save In Session Folder). This also pins the new Sketch to the open session.
Dashboard, Save in session folder option enabled Miscellaneous Features and Improvements 16 The Save Copy In dialog (File > Save Copy In), includes an option to save any currently open Sketch with the session copy (Current Sketch). This too pins the Sketch to the session.
Save session copy in dialog, Current Sketch option enabled Drag and Drop Improvements (Pro Tools Sketch Window Only) When dragging a MIDI clip from the Sketch window to an instrument or MIDI track in the Edit window, the clip remains as MIDI data. Conversely, Pro Tools renders the entire signal chain for MIDI clips being dragged into the Sketch window from the Edit window. When dragging and dropping an audio clip into the Sketch window from the Edit window, it is also rendered to include any Clip Gain, Clip Effects, Elastic Audio, Fades, and Plug-in processing.
Also, when dragging and dropping a clip from the Sketch window to the Edit window to create a new track, the Sketch Mixer set- tings (volume, pan, mute, and solo) are used for the new track in the session.
Master Section Sketch provides a Master section on the Meters tab (both for the Sketch window in Pro Tools and the Sketch app on iPad).
Master controls and displays on the Sketch Meters tab Miscellaneous Features and Improvements 17 Controls the overall output volume of the Sketch and displays stereo master meters.
Main Volume Output Limiter Toggle Switches the Limiter ON/OFF. The Output Limiter keeps the main output signal from clipping.
Click Volume Lets you adjust the volume of the metronome.
Pro Tools Guided Tour The first time you launch Pro Tools you are presented with a Dashboard for creating and opening sessions, projects, and sketches.
You are also presented with the opportunity to take a guided tour of Pro Tools with the included demo session. This provides a quick and easy overview of how to use Pro Tools that highlights elements of the user interface with information about the “what” and “why” of each. Once you have taken the guided tour, it will not present itself again. However, you can revisit the guided tour at anytime from the Help menu in Pro Tools (Help > Launch Guided Tour).
Starting your Guide Tour of Pro Tools Miscellaneous Features and Improvements 18 For technical support go to www.avid.com/support