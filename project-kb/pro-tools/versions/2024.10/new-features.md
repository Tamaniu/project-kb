---
product: pro-tools
product-area: editing
version: "2024.10"
release-date: 01/10/2024
doc-type: new-features
source: pdf
confidentiality: public
date-added: 13/05/2026
status: current
---

What’s New in Pro Tools Version 2024.10 1 What’s New in Pro Tools 2024.10 New Features and Enhancements Pro Tools® software version 2024.10 provides the following new features and enhancements:
Import Session Data improvements
- Support for new integrated ARA plugins and ARA improvements:
  - Steinberg SpectraLayers Go
  - Steinberg WaveLab Go
  - ARA improvements
  - Double-click an audio clip to open the ARA editor
  - Show/hide Lower Dock in Edit window
Native Instruments Kontakt 8 Player virtual instrument plugin included
  - Included Kontakt Player content
  - Drag and drop audio clips to AAX plugins
MIDI improvements:
  - MIDI and Instrument track comp lanes (playlists)
  - MIDI Notes Focus view
  - Miscellaneous MIDI improvements
  - Input Monitoring on Instrument tracks
  - MIDI Delay Compensation
  - Show Velocity on MIDI Notes
  - Input Quantize button in Edit Window and MIDI Editor toolbars
  - Global MIDI In and MIDI Out indicators in the Edit window toolbar
New MIDI plugins:
  - BLEASS Arpeggiator
  - SEQUND Lite Sequencer
Dolby Atmos® improvements:
  - Solo and Mute speakers in Dolby Atmos Renderer window
  - Floating Trim and Downmix window accessed from the Dolby Admos Renderer window
Miscellaneous Improvements:
  - Detachable Clip List
  - Playlist Solo button improvements
  - Fades allowed in Clip Groups with Elastic Audio
  - Marker improvements
  - Marker Context menu
  - Marker Line display options
  - Color Coding improvements in the Edit and Mix windows
  - Searchable outputs in the Bounce Mix window
  - WASAPI Shared mode
  - Alternate Keyboard Shortcuts Presets
  - PEC/DIR Metering Improvements with S4™ and S6™
System Requirements and Compatibility Information Avid can only assure compatibility and provide support for hardware and software it has tested and approved.
For complete system requirements and a list of qualified computers, operating systems, hard drives, and third-party devices, visit:
www.avid.com/compatibility Important EuControl Compatibility Instructions If your system includes any EuControl controllers, do the following to use them with Pro Tools 2024.3 or later:
Applications
1. In EuControl Settings, go to the tab.
Pro Tools 23Mac).
2. In the Applications list, click to select the older version of Pro Tools (such as
3. Click the minus sign (“–“) next to the Last Focused Application field to remove Pro Tools from the list.
Last Focused
4. If necessary, launch Pro Tools 2024.3 then click on it to make it appear in the
Application field.
5. Click the plus sign (“+”) to add Pro Tools 24.3 to the Applications list.
EuControl Settings, Applications tab Resources The Avid website (www.avid.com) is your best online source for information to help you get the most out of your Avid system.
Account Activation and Product Registration Activate your product to access downloads in your Avid account (or quickly create an account if you do not have one). Register your purchase online, download software, updates, documentation, and other resources.
- www.avid.com/account
Support and Downloads Contact Avid Customer Success (technical support), download software updates and the latest online manuals, browse the Compatibility documents for system requirements, search the online Knowledge Base or join the worldwide Avid user community on the User Conference.
- www.avid.com/learn-and-support
Training and Education Study on your own using courses available online, find out how you can learn in a classroom setting at an Avid-certified training center, or view video tutorials and webinars.
- www.avid.com/learning
Videos and Tutorials Visit the Avid YouTube channel to find playlists and videos that show how to use and learn Pro Tools.
- Avid YouTube Channel (all playlists and videos)
- Pro Tools Tech Tips (playlist)
- Pro Tools Quick Tips (playlist for the Pro Tools Quick Reference Guide, available from the Dashboard)
Products and Developers Learn about Avid products, download demo software, or learn about our Development Partners and their plugins, applications, and hardware.
- www.avid.com/products
Pro Tools 2024.10 Content For an online video about how to redeem Pro Tools 2024.10 content, visit:
- https://bcove.video/3XQ9RLC
2 Import Session Data Improvements Independent Selection in Import Session Data Pro Tools lets you filter tracks to be imported from a source session to the currently open session, and then match them exactly, inexactly, or create new tracks. In the default linked state, Import Session Data behaves as just like previous versions of Pro Tools. Making a selection in the does not automatically cause the selected track to be set to New Track if set to none.
Selection Enable Unlink to ensure that no Destination is automatically designated when selecting a track in the Source list. You must specify the Destination for each track selected in the Source list manually.
Disable Unlink to be able to make a selection in the Source list and have it assigned automatically to New Track Destination in the list.
Clear, Add, or Match Tracks Pro Tools lets you Clear, Add, or Match selected or all tracks in the Source list with tracks in the Destination list. These buttons are context sensitive update to read either Selected or All accordingly.
- Clear: Sets selected or all tracks in the Source list to none in the Destination list.
- Add: Adds selected or all tracks in the Source list as New Tracks in the Destination list.
- Match: Matches selected or all tracks in the Source list to matching session tracks in the
Destination list.
Exact Match When the Exact Match option is enabled, Pro Tools looks for exact matched of track names (case- sensative). When this options is disabled, Pro Tools uses a fuzzy matching algorithm when not checked.
To match tracks selected in the Source list exactly with tracks in the session:
Source
1. Select the tracks you want to match in the list.
Exact Match
2. Enable the option.
3. Click the Match Selected button.
Tracks in the open session that exactly match the selected tracks in the Source list are assigned in the Destination list.
Filtering Selected Tracks When unlinked, the track selection is removed when filtering tracks out of the list.
Imported Tracks Destination Indication None: Default color
- New track: Blue
- Mapped by exact name: Green
- Mapped without exact name: Orange
Search Tracks Pro Tools lets you type to search for track names in the destination box. When clicking on the destination item you can immediately start typing to search, or click the Search (magnifying glass) icon.
Changes to Key Commands in the Import Session Data Window There are two types of key commands available in the Import Session Data dialog. The standard commands, accessed with a modifier, are available even if a text field is focused. There are also single press key commands that are only available if a text field is not focused. This speeds up actions on tracks after making a selection.
Action Mac Windows Select all source tracks and toggle to new Command+A Control+A tracks or none, and tracks are automatically imported if linked Trigger the Add button Command+N Control+N Triggers the Clear button Command+B Control+B Triggers the Match button Command+M Control+M Filter tracks by name Command+F Control+F Toggle Exact Match option on/off Command+E Control+E Toggle UInlink on/off Command+U Control+U Add A or N A or N Match M M Clear C or B C or B Unlink U U Exact match E E 3 New Integrated ARA Plugins and ARA Plugin Improve- ments Pro Tools includes the following integrated ARA plugins from Steinberg Media Technologies GmbH:
SpectraLayers Go
- WaveLab Go
- SpectraLayers Go
Pro Tools provides integrated ARA support for Steinberg's SpectraLayers. SpectraLayers Go is a feature- reduced version included with Pro Tools for every paying customer. If you own a SpectraLayers Pro license, you can use the full feature set of SpectraLayers Pro as an ARA plugin in Pro Tools.
SpectraLayers Go is installed separately from Pro Tools. SpectraLayers Go provides powerful tools for spectral editing audio clips on tracks in Pro Tools.
> **Note:** For an online video on how to use SpectraLayers Go, visit https://bcove.video/3zHdZ90.
To use SpectraLayers Go:
- Select SpectaLayers from the Elastic Audio/ARA Plugin selector on an audio track.
SpectraLayers Go in the docked ARA editor in the Edit window
> **Note:** For complete information about using SpectraLayers Go, see the SpectraLayers Go documentation
from from Steinberg online at https://steinberg.help/spectralayers-manuals/spectralayers- go/spectralayers-go-11/ or locally at:
/Applications/SpectraLayers/11.app/Contents/Resources/help/SpectraLayers_Go.html on macOS or C:\Program Files\Steinberg\SpectraLayers 11\Resources\help\SpectraLayers_Go.html on Windows.
WaveLab Go Pro Tools provides integrated ARA support for Steinberg's WaveLab. WaveLab Go is a feature-reduced version included with Pro Tools for every paying customer.
Wavelab Go is installed separately from Pro Tools. WaveLab Go provides powerful tools for audio mastering, analysis, editing, restoration, and batch conversion on audio tracks in Pro Tools.
> **Note:** For an online video on how to use VaeLab Go, visit https://bcove.video/3zMgkPX.
To use WaveLab Go:
- Select WaveLab from the Elastic Audio/ARA plug-in selector on an audio track.
WaveLab Go in the docked ARA editor in the Edit window
> **Note:** WaveLab Go documentation is available from Steinberg's online help center. You can also click the ?
(question mark) icon in the WaveLab Go ARA plugin window.
New ARA Plugin Preference Pro Tools lets you set the preference for double-click behavior with audio clips. You can now double-click an audio clip to open the ARA editor if the clip has active analysis or ARA edits made with a particular ARA plugin. If there are no analysis or edits, the Clip Rename dialog opens.
To be able to double-click an audio clip and open the ARA editor:
1. Choose Setup > Preferences.
2. Click the Editing tab.
3. Select ARA from Double-Clicking an Audio Clip.
4. Click OK.
Show/Hide Lower Dock in the Edit Window Pro Tools lets you show or hide the Lower Dock and its tabs.
To show (or hide) the Lower Dock and its tabs:
- View > Other Displays Lower Dock.
Choose and select (or deselect) 4 Native Instruments Kontakt Player Pro Tools includes the Kontakt Player virtual instrument plugin from Native Instruments (installed separately).
> **Note:** For an online video introducing Native Instruments Kontakt player, visit https://bcove.video/4eVUAQp.
Included Kontakt Player Content Pro Tools includes the following content for the Native Instruments Kontakt Player virtual instrument plugin depending on which tier of Pro Tools you are running.
Pro Tools Tier: Intro Artist Studio Ultimate Kontakt Player 8 √ √ √ √ Pro Tools Factory Series √ √ √ √ Native Instruments Hybrid Keys — √ √ √ Native Instruments Soul Sessions — — √ √ Kontakt Player 8: Hybrid Keys Drag and Drop Audio Clips from Pro Tools to AAX Plugins Pro Tools lets you drag and drop audio clips from tracks in the Edit window and Workspace Browsers to AAX plugins, such as Kontakt Player or GrooveCell. When a clip is dragged and dropped into an AAX plugin window it will be committed with any Clip Gain, Clip Effects, Elastic Audio, ARA and track insert processing applied, and a new file will be created in the Sampler Audio Files folder within the session folder.
Dragging and dropping clips from audio tracks to GrooveCell Dragging and dropping a clip from a Pro Tools track results in a post-fader rendered audio file.
Consequently, if you drag and drop a clip from a track in Pro Tools that is muted (for example), the resulting file will contain no audio.
> **Note:** For an online video on how to drag and drop clips from Pro Tools tracks to an AAX plugin, visit
https://bcove.video/4eDmlxE.
5 MIDI Improvements MIDI Playlists Pro Tools provides MIDI Playlists for Instrument and MIDI tracks, which can be used in the same way as audio tracks.
> **Note:** For on online video on how to use MIDI playlists in Pro Tools, visit https://bcove.video/3ZWnhIJ.
Create a MIDI playlist and switch the track to playlist view.
MIDI Playlists and Edit Window Automation Lanes When selecting a playlist, the automation lanes are updated to display the automation of the selected playlist. If no playlist is selected, then the Main playlist automation is displayed.
For MIDI Automation, the above rule applies but additionally if there is a playlist in Audition mode (FKA Solo), the automation of the Audition playlist will be displayed in the background in green. This is useful for having a reference for comparing what you are editing versus what you hear.
MIDI Playlists and MIDI Editor MIDI Playlist clips are generally treated as regular MIDI Clips. In the Edit Window, when selecting one or more clips from MIDI Playlists, they will be shown in the targeted MIDI Editor. You can show clips from multiple playlists of the same track, even if the clips overlap. In the MIDI Editor Tracklist, you can also use the Show/Hide buttons to show or hide clips for the different playlists of a Track. In contrast to the Edit Window, in the MIDI Editor the automation lanes of multiple playlists of the same track can be viewed simultaneously.
MIDI Notes Focus View When Focus view is enabled, the keyboard rows are limited to the notes that are used throughout the tracks shown in the MIDI Editor.
MIDI Editor Focus view enabled When recording, Focus view expands in real time to display the new note rows for any incoming notes that are not already part of the view. Moving one or more notes up and down either using a mouse or keyboard Duplicate, Copy is limited to the note rows of Focus view. The same applies for other actions such as or and Paste. Transposing the notes by octaves using Shift+Up/Down arrows adds new note rows to the view.
Event Operations and Real-time Properties also interact with Focus view and any operation that is applied is reflected in Focus view.
MIDI Notes Focus View in the Edit Window MIDI Notes Focus View is also available in the Edit window for MIDI and Instrument tracks.
To enable Focus view on a track in the Edit window:
Click the Track Options menu in the upper-left corner of the track header.
Select View > Focus View.
Selecting Focus View on an Instrument track\ Miscellaneous MIDI Improvements Input Monitoring on Instrument Tracks Instrument tracks support Input Monitoring just like audio tracks—although audio tracks switch between Input Monitoring and playback, Instruments tracks continue to play back and merge input. This lets you listen to the audio output of the track in real-time, which is particularly useful for live performances or when checking the output of a plugin with MIDI output functionality. This can be done without needing to record- enable the track.
Instrument track, Input Monitoring enabled
> **Note:** For on online video about Input Monitoring on Instrument tracks, visit https://bcove.video/4eAmDFo.
Note that Input Monitoring on an Instrument track (as well as recording) is affected by the MIDI Delay Compensation setting. When MIDI Delay Compensation is enabled, the Input Monitoring button lights blue, indicating that the output you hear is compensated for any delays ensuring a tight and coherent sound.
This is not recommended for live performance, but is useful for ensuring accurate timing of virtual instruments with built-in sequencers (for example).
Instrument track, both Input Monitoring and MIDI Delay Compensation enabled Command-Control-click (Mac) or Control-Start-click (Windows) the Input Monitoring button to switch between “blue” and “green” modes. Blue indicates that both Input monitoring and delay compensation are enabled. Audio is aligned with the rest of the session, but there will be latency with live MIDI input. Green indicates that Input monitoring is enabled, but delay compensation is disabled.
MIDI Input Monitoring Follows Selected Track Pro Tools has replace the Default Thru Instrument preference available in earlier versions with the MIDI Input Monitoring Follows Selected Track (Setup > Preferences > MIDI).
option When enabled, Input Monitoring is automatically engaged whenever you select an Instrument track. If you then select a different Instrument track, Input Monitoring is moved to that track.
When Input Monitoring is automatically enabled (rather than explicitly enabled) on an Instrument track, the Input Monitoring button is dimly illuminated.
Input Monitoring button dimmed Input Monitoring button dimmed MIDI Delay Compensation Pro Tools provides the option to automatically compensate for MIDI latency on Instrument track on a track- by-track basis. By default, MIDI Delay Compensation is disabled. This is recommended for performing MIDI live, so you can hear and record your performance in real-time, exactly as played. For those workflows (Setup > Session > System where precise synchronization with the MIDI Beat Clock and system delay Delay) is crucial, such as when using virtual instrument plugins with internal sequencers, enable MIDI Delay Compensation. This ensures your tracks are perfectly synchronized, providing seamless integration of your plugins with the MIDI Beat Clock and other tracks in the session.
To enable (or disable) MIDI Delay Compensation on an Instrument track:
- Right-click the name plate of the Instrument track and select (or deselect) MIDI Delay
Compensation.
Selecting MIDI Delay Compensation option on an Instrument trac g Instrument track Input monitoring and MIDI Delay Compensation can both be enabled at the same time, however this is not always desired.
Velocity Display on MIDI Notes Pro Tools lets you show (or hide) MIDI velocity values on MIDI notes in MIDI Editors.
MIDI Notes displaying Note Name | Velocity value To show (or hide) MIDI velocity values on MIDI notes:
- In the MIDI Editor, click the MIDI Editor Window menu and select (or deselect) Display Options >
Velocity on Notes.
Input Quantize Button in Edit Window and MIDI Editor Toolbars Pro Tools lets you enable (or disable) Input Quantize for MIDI in the toolbar of the Edit Window or MIDI Editors.
Input Quantize enabled in the Edit Window toolbar Input Quantize enabled in the MIDI Editor toolbar g Right-click on the Input Quantize (or Quantize) button to open the Event Operations window with Input Quantize (or Quantize) expanded.
MIDI In and MIDI Out Indicators The Edit Window toolbar provides global indication of MIDI In and MIDI Out activity in the upper-right of the MIDI Selection area. MIDI In flashes with incoming MIDI while MIDI Out flashes with outgoing MIDI activity.
\ New MIDI Plugins Pro Tools includes two new MIDI plugins:
- BLEASS Arpeggiator
- SEQUND Lite Sequencer
BLEASS Arpeggiator BLEASS Arpeggiator is a modern take on the classic synth arpeggiator with polyrhythms, polyphony, and a large collection of configurable arpeggio patterns built in.
This MIDI plugin includes a pair of advanced LFOs and a Motion Sequencer for modulating arpeggiator parameters.
A simple FM synthesizer is also built into the plugin, letting you use it as a standalone instrument or as an arpeggiator for other virtual instrument plugins.
> **Note:** For an online video introduction to BLEASS Arpeggiator, visit https://bcove.video/4dFpprO.
Performance Tab The Performance tab takes incoming real-time performance control messages and routes them to BLEASS Arpeggiator parameters.
Mod Wheel: Receives the controller messages from your keyboard (or other performance device)
- modulation wheel and responds to MIDI CC1.
XY-1, XY-2: A pair of XY controllers for creating interconnected parameter modulations. The XY
- Controller panels generate two modulation values simultaneously (an X and a Y value). Drag the
control point to vary these values.
Arpeggiator Tab The settings on the Arpeggiator Tab control the rhythmic and pitch patterns produced by the BLEASS Arpeggiator.
Reset:
- Lets you reset the Arpeggiator, LFOs and Motion Sequencer in response to the Pro Tools best
or a specific incoming MIDI note.
- Trigger: Controls the basic rate at which BLEASS Arpeggiator steps through the pattern of notes it
creates.
Pattern: Lets you choose from 62 different rhythmic patterns, or set it to OFF (the left-most
- position) if you do not want to apply a trigger pattern.
Sequence: Creates a sequence of notes based on the chord or notes you play into it. The settings in
- this section let you determine the details of the generated sequence.
Polyphony:
- Unlike classic arpeggiators that can only play one note at a time, BLEASS Arpeggiator
can create multi-line and polyphonic arpeggios. The controls in this section let you set this up.
- Velocity: Controls the note-on velocity of notes generated by BLEASS Arpeggiator.
LFO Tab BLEASS Arpeggiator includes a pair of LFOs (Low-Frequency Oscillators) that can be used to modulate the plugin’s parameters. This is a great way to create dynamic, evolving arpeggios.
Motion Tab BLEASS Arpeggiator’s built-in Motion Sequencer allows patterns of values to be sequenced and then used to modulate up to two of the plugin’s parameters.
Synth Tab BLEASS Arpeggiator features a built-in FM synthesiser. You can use this on its own, use it to reinforce the sound of another synth, or disable it altogether.
oscillators. The main oscillator (OSC) is the carrier, while FM 1 and FM 2 are modulators of that carrier.
SEQUND Lite Sequencer SEQUND Lite is a versatile and inventive polyrhythmic sequencer designed to facilitate creativity in electronic music.
> **Note:** For an online video introduction to SEQUND Lite Sequencer, visit https://bcove.video/3Y8EqNZ.
Edit Settings The Edit Window consists of 5 lanes. In these lanes, you can manually input or randomly generate the necessary data to create your sequence. Adjustable parameters include Gate, Hold, Pitch, Velocity, and CC# lanes, each with its own definable number of steps(each lane has a maximum of 16 steps). By reducing the number of steps to the right of each lane, you can generate polyrhythms while melodies and correspondences shift, creating unexpected, evolving patterns.
Play Modes To access the Play Mode menu with the following available modes, click the arrow next to the lane name:
Forward: Increases the active step from step 1 to the highest active step and starts again according
- Advance Mode
to the setting.
Backward:
- Decreases the active step from the highest active step down to step 1 and starts again
according to the Advance Mode setting.
- Pendulum: Increases and decreases the active step starting from Step 1 to the highest active step
without repeating the first and last steps.
Bi-Directional: Increases and decreases the active step starting from Step 1 to the highest active
- step repeating the first and last steps.
Random (Mode 1): Randomly selects the active step with a possible repetition of the last played
- step.
Random (Mode 2):
- Randomly selects the active step is randomly without repetition of the last
played step.
Randomization To randomize the sequencer settings for any given lane, click the Dice icon on the right side of the lane.
Click the 3 verticle dots to the right of the Dice icon to access the randomize and reset settings in the Lane menu.
Global Settings The Global settings are divided into 3 different panels: the Global Settings panel, Scale panel, and Preset panel. The Global settings can be hidden or revealed by clicking on the Global Settings Arrow at the bottom left of the plugin.
Global Panel Set the global values of SEQUND Lite on the Global panel. When any of the Length, Octave, Transpose, Velocity or lanes are enabled, the corresponding controls in the bottom left panel of the Global Settings are disabled. Changing the visibility of each line lets you switch between values set in the Global Settings and your programmed sequence in real time. You can adjust the Clock Division and Swing values on the same panel.
Scale Panel The notes specified in the Pitch lane are constrained to the selected key and scale (which can be set in the Scale panel).
To edit or create a new scale:
- Click the Scale Edit button in the upper right corner of the panel.
To maintain the current scale when switching between presets:
- Enable Scale Lock.
Pattern Panel Each preset can hold 12 patterns. You can Right-click on any pattern to copy, paste, or clear the pattern.
Enable MIDI Pattern Control C0-B0 to switch between patterns in real-time using corresponing MIDI notes.
6 Dolby Atmos Improvements Solo and Mute Speakers in Dolby Atmos Renderer Window Pro Tools lets you solo or mute speakers in the Dolby Atmos Renderer window.
To solo or mute speakers in the Dolby Atmos Renderer window:
1. Move the mouse cursor over a speaker icon to show solo and mute buttons.
2. Click the solo or mute button (it latches, and persists, even if you change monitoring formats).
L C R speakers soled in the Dolby Atmos Renderer window Suround speakers muted in the Dolby Atmos Renderer window To solo or mute an entire horizontal row, such as L/C/R or Lsr/Rrs:
- Control-click (macOS) or Start-click (Windows) any speaker in the row.
To solo or mute an entire plane:
- Option-click (macOS) or Alt-click (Windows) any speaker on either the floor or ceiling.
Floating Trim and Downmix Window The Trim and Downmix window can be accessed from I/O Setup, or the Dolby Atmos Renderer Window.
When accessed from the renderer window, the Trim and Downmix window acts as a floating window, and settings can be changed during playback. This allows you to hear the effect on the mix in real time.
Floating Trim and Downmix Window 7 Miscellaneous Features and Improvements Detachable Clip List Pro Tools lets you detach the Clip List as floating window or dock it in the Edit window.
To detach the Clip List from the Edit window, do one of the following:
- Click the Detach from Edit Window button.
Detach from Edit Window button
- Choose Window > Clip List.
To dock the Clip List window to the Edit window:
- Click the Dock in Edit Window button.
Dock in Edit Window button Keep Window On Top Option Keep Window On Top Enable the option in the detached Clip List window menu to ensure that the floating Clip List window remains in the foreground of the Edit window (and other windows). When disabled, other windows may cover the floating Clip List window.
Playlist Solo Button Improvements For both Audio and MIDI Playlists, the S (solo) button is now replaced with an “audition” button to differentiate it from the Solo button of the Track. Additionally, this button is now available in the Edit Window Track List and for MIDI Playlists it is also available in the MIDI Editor Track List for easy access.
Playlist Audition buttons outlined Fades Allowed in Clip Groups with Elastic Audio Pro Tools lets you create Clip Groups on tracks with Elastic Audio processing even if those clips have fades on them.
Marker Improvements Marker Context Menu Marker rulers and lanes provide a right-click context menu that lets you edit, color, and delete individual markers, as well as copy, cut, paste, delete, batch rename, and color an entire selection of markers.
The menu options vary depending on if a marker is within an edit selection or not.
Marker Line Display Options The View menu provides a Marker Displays submenu with the following options for Marker Rulers and Track Marker Lanes:
Track Lane (Shift+U)
- Show/Hide Ruler Lines (Command+Option+Control+R or Control+Alt+Start+R)—new in 2024.10
- Show/Hide Folder Lines (Command+Option+Control+F or Control+Alt+Start+F)—new in 2024.10
- Ruler Lane Color (previously only available in Preferences)
- Track Lane Color (previously only available in Preferences)
- Color Coding Improvements in the Edit and Mix Windows
Color in I/O Menus I/O menus show a color swatch next to each path in the menu when a path in the I/O Setup is assigned a color. This includes Input, Output, Send, H/W Insert, Side-Chain, Object, and Dolby Atmos Group menus.
Color Quick Assign Pro Tools lets you quickly assign color coding to multiple related elements of track I/O plates (Input, Output, Send, H/W Insert, Side-Chain, Object, and Dolby Atmos Group) Marker rulers and lanes
- Marker color in the Memory Locations window
- Track name plate
- Clips
- There are two new ways to color various items in Pro Tools:
Context menus—If you see a color, right-click it and choose Color. This either opens a color menu, or
- the color palette, depending on the item that you select.
- Key modifier-click—Control-right-click (macOS) or Start-right-click (Windows) to get to the same
color picker that you would otherwise choose in the context menu.
Searchable Outputs in Bounce Mix Window Pro Tools lets you search for the names of output paths in the Bounce Mix window.
To search for output paths by name in the Bounce Mix window:
1. Choose File > Bounce Mix.
2. Click the Mix Source selector and choose the Search option.
3. Type the name of the output path you want to find.
The output type is indicated by brackets at the end of the name.
Support for WASAPI Shared Mode (Windows Only) Pro Tools supports WASAPI Shared mode. This lets you use the same WASAPI audio interface with Pro Tools and other applications at the same time.
WASAPI Shared mode may result in higher latency. For the absolute lowest latency possible, use WASAPI Exclusive mode.
Playback Engine, selecting WASAPI Shared mode To select WASAPI Shared or Exclusive mode:
1. Choose Setup > Playback Engine.
2. Select Windows Audio Device as the Playback Engine.
3. Select the desired WASAPI Input Device.
4. Select the desired Output Device.
5. Select either Shared or Exclusive as the Device Mode
6. Configure the rest of the Playback Engine dialog as desired.
7. Click OK.
Alternate Keyboard Shortcuts Presets Pro Tools includes presets for alternate keyboard shortcuts. If you are used to working with a different DAW, such as Cubase or Logic Pro, or video editor, such as Media Composer or Adobe Premiere, you can now import keyboard shortcuts presets that you are used to using with those alternate DAWs and video editors.
Alternate keyboard shortcuts for the following DAWs and video editors are included with Pro Tools:
- Adobe® Audition®
- DaVinci Resolve
- FL Studio
- Ableton® Live™
- Apple® Logic Pro®/Garage Band®
- Avid® Media Composer®
- Steinberg Nuendo/Cubase
- Adobe® Premiere®
- Reaper
- Studio One
Adobe, Audition, and Premier are either trademarks or registered trademarks of Adobe in the United States and/or other countries. All other trademarks are the property of their respective owners. The digital audio workstation developers identified above do not sponsor or endorse Avid or its products and services.
To import alternate keyboard shortcuts into Pro Tools:
Setup > Keyboard Shortcuts.
1. Choose
2. From the Librarian menu, select the desired Keyboard Shortcuts preset.
g Keyboard Shortcuts presets are stored in the //Documents/Pro Tools/Pro Tools Presets/Keyboard Shortcuts/Application folder.
PEC/DIR Metering Improvements with S4/S6 This is only available with HDX Classic at 48 kHz in Destructive Punch record mode. Also, bus meter delays must be enabled and the record (PEC) tracks' Delay Comp "cmp" view must be in "blue" (suspend auto low-latency) mode..
To configure Pro Tools for PEC/DIR metering with S4 or S6 Post and Display Modules:
1. Choose Setup > Preferences > Metering.
2. Enable the S4/S6 Off-Disk (PEC) Meters for Post Meter Module option.
3. Click OK.
4. Quit and relaunch Pro Tools.
5. Choose Setup > Preferences > Metering.Enable the Track and Master Meter Types Linked
option.
6. Open a session.
Dly
7. Right-click the indicator at the top of the Edit Window (under the counters), and ensure that
Meters > Bus is enable (it shouold be enabled by default). This enables ADC for bus meters and is necessary for DIR/PEC meters to be in sync if there is any plugin delay in the session.
8. Signals to be recorded must first pass through an Auxilary Input track. The Auxilary Input tracks
provides the input (DIR) meter source.
9. From there, route the signal should directly to an Audio track using a bus. The audio track provides
the disk (PEC) meter source.
10. Assign the audio track to a post strip on the S4/S6. Assign the Auxiliary Input track as the strip’s DIR
meter source.
Do not assign master faders with plugins to the bus connecting a DIR and PEC track and do not insert plugins on any PEC track. It is generally recommended that you use the DIR track exclusively for metering, and apply processing to Auxiliary Input tracks earlier in the signal chain.