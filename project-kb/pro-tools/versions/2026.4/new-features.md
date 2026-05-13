---
product: pro-tools
product-area: editing
version: "2026.4"
release-date: 01/04/2026
doc-type: new-features
source: pdf
confidentiality: public
date-added: 13/05/2026
status: current
---

What’s New in Pro Tools version 2026.4 ProToolsincludesélastiqueProV3byzplane.developmentastimestretchingengine.
1 What’s New in Pro Tools 2026.4 1 What’s New in Pro Tools 2026.4 New Features and Enhancements Pro Tools® software version 2026.4 provides the following new features and enhancements:
Track Pinning
- Transcription Improvements
- Fraunhofer MPEG-H Audio Renderer Support
- Pro Tools Immersive Panner
- Miscellaneous Features and Enhancements
  - Batch File Renaming
  - Miscellaneous Dialog Updates
  - Set Solo Mode in Solo Status Button Right-click Menu
  - Track Comment Editing Undoable
  - Favorite Elastic Audio and ARA Plugin
  - Grid Lines Brightness and Opacity
  - Sends to AAX Renderer Plugin Beds
  - Renderer Migration Utility
  - Dolby Headphone Personalization
  - iXML Channel Ordering Improvements
  - Massive X Player
> **Note:** For access to videos introducing Pro Tools 2026.4, visit the blog at www.avid.com/resource-
center/whats-new-in-pro-tools-20264.
1 What’s New in Pro Tools 2026.4 System Requirements and Compatibility Information Avid can only assure compatibility and provide support for hardware and software it has tested and approved.
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
EuControl Settings, Applications tab 2 Track Pinning 2 Track Pinning Pin Tracks in the Edit Window Pro Tools lets you "pin" tracks to the top of the Edit window. Pinned tracks remain in place (in track order), and an alias of a pinned track appears pinned at the top of the Edit window in a special Pinned Tracks pane. Aliased tracks are persistently pinned on top of all tracks in the Edit window, so they never go out of view when scrolling up or down through the rest of the tracks in the Edit window. Pinned tracks share the same data as their source tracks, and any changes performed on either pinned or source tracks are mirrored in the other in real time. Pinned tracks and the source track share the same show/hide state, however, pinned tracks do not share the same view settings as source tracks. This means that you can set the view (clips, notes, playlists, and so on), automation lanes, and the height of pinned tracks independently from source tracks.
g Pinned Folder tracks appear as a single flat track. You can only view and edit individual contained tracks under the source Folder track.
"Synth" track pinned to the top of the Edit window 2 Track Pinning To pin a track to the top of the Edit window:
- Pin.
In the Edit window, right-click the track name and choose g You can Pin more than one track to the top pane of the Edit window.
To pin a track and replace the top pinned track:
- Pin and Replace.
In the Edit window, right-click the track name and choose g When you choose Pin and Replace, the selected track replace all tracks pinned in the top pane of the edit window.
2 Track Pinning To unpin a track:
- Unpin.
Right-click the track name pinned at the top of the Edit window and choose To add another track to the Pinned tracks pane, do one of the following:
- In the Edit window, right-click an unpinned track name and choose Pin.
- In the Pinned Tracks pane, right-click on the name of a pinned track and choose the desired track
from the Tracks submenu.
2 Track Pinning Search Pinned Tracks Pro Tools also lets you "search" pinned tracks to add or remove tracks to or from the Pinned Tracks pane.
To search tracks to pin:
1. Right-click a pinned track and click Search.
2. In the resulting search panel, click the search icon (magnifying glass).
3. Type the name of the track you want to pin and select it from the search results.
To search for and remove a pinned track:
1. Right-click a pinned track and click Search.
2. In the resulting search panel, click X on the tag for the track you want to remove for the Pinned
Tracks pane.
2 Track Pinning Scroll Pinned Track into View To scroll to the source of a pinned track:
- Right-click the track name pinned at the top of the Edit window and choose Scroll into View.
The source track is scrolled into view at the top of the Edit window just under its pinned alias.
Resizing the Pinned Tracks Pane To resize the Pinned Tracks pane:
- Click and drag the lower border of the Pinned Tracks pane up or down. If the Adjusting Pinned Area
Resizes Tracks preference is enabled the height of pinned tracks resizes accordingly.
2 Track Pinning Pinning Groups Pro Tools lets you pin grouped tracks just like pinning individual tracks.
To pin a group of tracks:
- In the Groups list, right-click the Goup you want to pin to the top of the edit window and choose Pin.
b Command-Option-Shift-click (Mac) or Control-Alt-Shift-click on a group to add the group members to the pinned area.
2 Track Pinning To unpin a group of tracks:
- In the Groups list, right-click the Goup you want to unpin to the top of the edit window and choose
Unpin.
To pin a group of tracks and replace currently pinned tracks:
- In the Groups list, right-click the Goup you want to unpin to the top of the edit window and choose
Unpin.
b Command-Option-click (Mac) or Control-Alt-click on any group but <all> to pin and replace pinned tracks or groups with the clicked group (or to pin it if no other track is already pinned).
Pinned Tracks Preferences (Setup Pro Tools provides preferences for the display of pinned tracks and their source tracks > Preferences > Display).
Auto-Adjust Pinned Area for Tracks When enabled, the pinned area adjusts to perfectly fit tracks as they are added and removed. When disabled, the pinned area will remain a consistent size until it is manually adjusted.
2 Track Pinning Adjusting Pinned Area Resizes Tracks When enabled, adjusting the pinned area resizes all tracks within it to fit. When disabled, adjusting the pinned area does not affect the track size.
b Use the Control (Mac) or Start (Windows) modifier keys when dragging to temporarily reverse the selected behavior while the modifier key is held.
While Pinned, Set Original Tracks Height To When pinning a track, you can have Pro Tools automatically set the source track to a specific track height:
No Change
- Micro
- Mini
- Small
- To set the display preferences for pinned tracks:
1. Choose Setup > Preferences > Display.
2. Set the pinned tracks preferences as desired.
3. Click OK.
3 Transcription Improvements 3 Transcription Improvements Pro Tools Studio and Ultimate provide several improvements to Transcription.
> **Note:** For complete information about Transcription, see the Pro Tools Reference Guide.
Retain Transcription with Rendered Audio Transcription data is automatically transferred to newly created files when consolidating selections, rendering clips using AudioSuite plugins, committing tracks or selections, bouncing tracks, and when files are rendered as part of a Media Composer compatible session.
Separate Clip by Word, Sentence, or Speaker on Tracks Separate Clip by Word/Sentence/Speaker options are available in the Clip Right-click menu on tracks. Unlike the Transcript window, the track-based separate options apply to the selection and can be applied across multiple clips and tracks.
To separate a clip by Word, Sentence, or Speaker:
1. Select one or more transcribed clips on the Timeline.
2. Right-click a selected clip and choose Transcription > Separate Clip by Word, Separate
Clip by Sentence, or Separate Clip by Speaker.
3 Transcription Improvements Show Transcription Lane per Track The track Show Transcription Lane option is enabled by default for all audio tracks, although the lane is only shown when there is at least one clip with transcribed data on the track.
g View > Track Transcription Lane must be enabled for any transcription to show regardless of the track Show Transcription Lane status.
To show (or hide) the Transcription lane for any audio track:
- Show Transcription Lane.
Right-click on the track name and select (or deselect) 3 Transcription Improvements Transcription Indicator in Workspace The Workspace displays a transcription progress indicator when transcribing files in a Workspace.
Shortcut to Scroll Transcript Window to Selection To scroll the Transcript and Edit windows to the selection:
- Command-click (Mac) or Control-click (Windows) a word (or selection of words) in the Edit window.
3 Transcription Improvements Transcription Processing Mode (Windows Only) On Windows, Pro Tools runs a short test to determine if the GPU can be used for transcription rather than the CPU. If it returns a failure, Pro Tools presents a message that processing will be handled by the CPU and that you can save that choice for future processing. Generally, the GPU provides faster processing for transcription.
To manually specify whether the GPU or the CPU will be used for Transcription:
Setup > Transcription Settings.
1. Choose
CPU Auto (GPU preferred).
2. From the Processing selector, select either or
3. Click OK.
4 Fraunhofer MPEG-H Audio Renderer Support 4 Fraunhofer MPEG-H Audio Renderer Support Pro Tools Studio and Ultimate support MPEG-H Audio, enabling the creation of rich, immersive and interactive audio experiences. The MPEG-H Audio technology, developed by the Moving Picture Experts Group (MPEG) with core contribution by Fraunhofer IIS, lets you create multifaceted immersive experiences that span from custom entertainment to advanced accessibility features. At the core of MPEG-H Audio are powerful personalization capabilities, including interactive object positioning, adjustable dialogue levels, dynamic gain metadata for advanced ducking applications, customizable audio descriptions, and support for multiple languages. Features like adaptive background attenuation (ABA) allow background sounds to be dynamically reduced in an automatic process to deliver personalized gain metadata to improve speech intelligibility, further enhancing accessibility. Creators can choose which elements remain fixed and which are user-adjustable, maintaining full control over their artistic intent while offering audiences a more engaging and tailored listening experience.
> **Note:** For detailed information about the controls and settings the MPEG-H Renderer window, refer to the
documentation from Fraunhofer https://mpegh.com/protoolsManual/.
> **Note:** For access to videos introducing using the Fraunhofer MPEG-H Audio Renderer in Pro Tools, visit the
blog at https://www.avid.com/resource-center/mpeg-h-audio.
4 Fraunhofer MPEG-H Audio Renderer Support MPEG-H Audio provides:
- Immersive audio—Places your audience right in the middle of the action.
- Personalized audio—Lets you select your preferred audio presentation from several pre-configured
versions within the same stream. Seamlessly switch between languages and adapt the audio mix to your needs and preferences.
Universal delivery—MPEG-H can go everywhere. On the go, in your living room, in your home theatre,
- or in the car. One production, encoded into one bit stream that is delivered to many different devices,
such as TV sets, loudspeakers, headphones, or MPEG-H equipped AV receivers or soundbars. At the core of this flexibility is the integrated MPEG-H renderer, which automatically adapts the audio playback to the specific listening environment and device capabilities. This ensures an optimal and consistent listening experience—no matter how or where the content is consumed.
Improved accessibility—Features for enhanced speech intelligibility with dialog boost options and
- automated background attenuation (ABA) for audio description and voice over help your content
reach a wider audience.
g Broadcasters and streaming providers around the globe count on MPEG-H Audio for their services. It is the only audio system of the world’s first terrestrial UHD TV service in South Korea and, in Brazil, it was selected as the only mandatory audio system for the next-generation TV 3.0 broadcast service.
Immersive MPEG-H Audio content can be played back over TV sets, Audio/Video Receivers, mobile devices, and MPEG-H Audio equipped soundbars which are already available.
MPEG-H Renderer Features Ability to use the MPEG-H Audio Renderer as an option in Pro Tools
- Creation of MPEG-H Audio components directly via Pro Tools Tracks output selector
- MPEG-H Audio Renderer assignments and pan data can be migrated, retained and managed
- between Pro Tools supported immersive formats
MPEG-H Master file import (MPEG-H Production Format, MPEG-H BWF/ADM, MPEG-H MXF/S-ADM)
- Pro Tools Bounce Mix support (offline)
- Spatial control of Object based components with Pro Tools Immersive Panner
- MPEG-H Audio dynamic metadata creation and handling
- Setup assistant integration for easy kick start of broadcast typical multi-languages scenes
- Loudness measurement (offline) and metering (online) for audio components and presets
- Adaptive Background Attenuation (ABA)
- New session templates for the most common use cases
- Supported Renderer Channel Widths
- Stereo
- LCRS
- Quad
- 5.0
- 5.1
- 5.1.4
- 7.1
- 7.1.2
4 Fraunhofer MPEG-H Audio Renderer Support 7.1.4
- 7.1.6
- 9.1.4
- Supported File Formats
- BWF/ADM
- MPF
- Template XML
- MXF/S-ADM
The MPEG-H Renderer is only compatible with 48 kHz sessions.
Installing MPEG-H Renderer MPEG-H Renderer must be installed for the MPEG-H Renderer to be available in Pro Tools.
To install MPEG-H Renderer:
1. Download the MPEG-H Renderer installer from Avid Link or your online MyAvid products page.
2. Unzip the installer and launch it.
3. Follow the onscreen instructions to complete the installation.
The MPEG-H Renderer.aaxplugin components is installed.
MPEG-H Renderer Setup Enabling MPEG-H Renderer When MPEG-H Renderer plugin is installed, the destination mixer is available as a renderer option in Pro Tools.
To enable the MPEG-H Renderer, do one of the following:
- Setup > I/O > Renderer, MPEG-H OK.
Choose select from the Renderer selector, and click
- MPEG-H Renderer
In the Renderer controls in the Edit Window toolbar, select from the Renderer 4 Fraunhofer MPEG-H Audio Renderer Support selector.
Rendering Format The list of available rendering formats are MPEG-H Audio rendering formats that fit into the currently used monitor path width.
Reference Layout When you first enable the MPEG-H Renderer in a Pro Tools session, you are prompted to specify the Reference Layout. The options include: Mono, 2.0, 3.0, 3.0 Surr, Quad, LCRS, 5.0, 5.1, 5.1+Back, 7.1 (60 deg), 7.1 (110 deg), 5.1+2H, 5.1+4H, 7.2+3H, 5.1+6H, 7.1+4H, 7.1+6H, 9.1+4H.
and
- Without existing channel components, the renderer prompts you to specify the Reference Layout
when first opening it.
Creating a bed prior to setting the Reference Layout, automatically determines the appropriate
- Reference Layout.
The Reference Layout automatically adapts to fit the largest bed.
- Manual adjustments of the Reference Layout can be made in the settings tab of the MPEG-H
- Audio renderer.
4 Fraunhofer MPEG-H Audio Renderer Support Setup Assistant The Setup Assistant can be used to guide you through the key configuration steps for a typical MPEG-H Audio production with a single bed and multiple languages. You can also access the Setup Assistant by pressing the "Magic Wand" button ( ) in the top bar of the MPEG-H Audio Renderer window. Based on selected options, the Setup Assistant creates the required tracks, assignments and fully configured MPEG-H Audio scene.
The Dialog Boost Preset is a representation of the default mix with +9 dB offset for dialog components. The Audio Description Preset is a mix with pre-configured gain sequences for ducking the bed and dialog components to achieve maximum accessibility. The Ambience Preset only includes the bed component. All initial settings can be finetuned later in the production process.
You must remove existing Objects/Beds assignments before running Setup Assistant again.
Creating MPEG-H Objects and Beds Once you have enabled the MPEG-H Renderer and Setup you session, you can assign tracks to MPEG-H Objects and Beds. Any tracks created using the Setup Assistant are automatically assigned.
The created MPEG-H Audio object component can be added to scene presets or switchgroups. The immersive panner is used to position objects.
4 Fraunhofer MPEG-H Audio Renderer Support To create an MPEG-H Object:
- MPEG-H Renderer > Assign as Object.
From the track Output selector, select To delete a MPEG-H Audio Object:
- From the track Output selector, select a different output that is not an MPEG-H Renderer object.
To create a new MPEG-H Bed from a track or send:
- From the track Output or Send selector, select MPEG-H Renderer > Create New Bed and select
the desired channel width.
For every new created bed a specialized Bed Bus is created and the selected Track is assigned to that bed. Multiple tracks can be assigned to the same bed. This also creates a corresponding MPEG-H Audio channel component in the renderer. This component can be added to scene presets or switchgroups.
To create a new MPEG-H Bed from a track:
- MPEG-H Renderer > Bed <(Format)> > Assign.
From the track Output selector, select 4 Fraunhofer MPEG-H Audio Renderer Support To delete a Bed assignment:
- MPEG-H Renderer
From the track Output or Send selector, select no output or anything other than > Bed <(Format)>.
If there are no more Tracks assigned to a Bed bus, the MPEG-H Audio channel components are marked as unconnected in the renderer.
To delete a specialized Bed bus:
- From the track Output or Send selector, select MPEG-H Renderer > Bed <(Format)> >
delete.
This also deletes the MPEG-H Audio channel component.
> **Note:** For information about assigning track sends to Beds, see Sends to AAX Renderer Plugin Beds.
Import To import MPEG-H Audio supported file:
1. Ensure that the MPEG-H renderer is enabled.
2. Choose File > Import > MPEG-H Master.
3. Select one of these file types:
  - MPEG-H BWF/ADM from a .wav-file
  - MPEG-H Production Format from a 16/32 channel .wav-file
  - MPEG-H MXF/S-ADM from a .mxf-file
  - MPEG-H template from a .xml-file (static metadata only, no audio)
4. Click Open.
5. Configure the MPEG-H Audio Import settings in the Renderer window.
4 Fraunhofer MPEG-H Audio Renderer Support
  - Import Audio: Select to import audio from the MPEG-H Master file. Disable if only scene
configuration is needed.
  - Import Dynamic Metadata:
Select to import dynamic metadata, which can be objects positions or gain sequences. To import Gain sequences, plugin automation for the Ducking parameter must be enabled in the renderer. The automation data for Gain Sequences can be accessed in the automation lanes for Ducking of a Master Fader track with output Renderer Out.
g For import or automated creation of gain sequences with ABA, ensure ducking parameter automation is enabled in the renderer.
  - Degree of Thinning: If Import Dynamic Metadata is enabled, you can select the degree of
metadata thinning you want: Most, Some, or Full (no thinning).
6. Click Import.
The import process creates the required tracks and assignments, and loads the MPEG-H Audio scene.
It is displayed in the renderer and can be played back and modified.
Export To export an MPEG-H file:
1. Ensure that the MPEG-H renderer is enabled.
2. Make the Timeline selection for what you want to export.
3. Choose File > Bounce Mix.
4. Select MPEG-H as the Export Type.
5. Type the File Name.
6. Set the File Destination.
4 Fraunhofer MPEG-H Audio Renderer Support
7. Click Bounce.
g Note that if you uncheck offline, the online bounce is silent.
Export
8. Configure the settings in the page in the resultant MPEG-H Renderer window.
9. Make sure the MPEG-H Audio scene is valid and the export queue is correctly configured.
10. Different MPEG-H Audio Master File Formats can be selected and added to the export Queue with
individual file locations.
  - MPEG-H Production Format
  - Broadcast Wave Format/Audio Definition Model
  - MXF/S-ADM
  - Channel Mix
11. The Base Name and MPE File Location are transferred from the Bounce Mix window.
12. Select the Frame Rate.
13. Select the Sample Format.
14. Select the number of Channels.
15. Click Add to Queue to add the selected export format to the queue.
16. Click Start Export.
Export progress is indicated and you are notified when the export is complete.
5 Pro Tools Immersive Panner 5 Pro Tools Immersive Panner Pro Tools Ultimate and Studio provide a new immersive panner for object panning with Fraunhofer MPEG-H or Audio Vivid renderers. The Pro Tools Immersive Panner is based around the concept of an anchor point.
This single point can be controlled by multiple meta and macro controls. Additionally, each source channel has its own pan parameters. The combination of the individual and meta control values result in the ultimate position of each channel in 3D space and is represented in the Plugin Automation lane channel position as Composite Pan lanes.
g When the Pro Tools Immersive Panner is used on mono source track it has a limited set of controls and the anchor is hidden.
The Pro Tools Immersive Panner is not available with Dolby Atmos Renderers or the Pro Tools mixer. It is only available with AAX Renderer plugins.
Pro Tools Immersive panner, mono track 5 Pro Tools Immersive Panner Pro Tools Immersive Panner, stereo 5 Pro Tools Immersive Panner Pro Tools Immersive Panner, LCR with C as the Focus Channel 5 Pro Tools Immersive Panner Anchor Point You can drag the anchor point to control panning for all track audio channels in accordance with the other Pro Tools Immersive Panner settings. By default, the anchor point is only shown for stereo or greater channel widths.
Pro Tools Immersive Panner, stereo with anchor point shown 5 Pro Tools Immersive Panner To pan one or more source channels using the anchor point:
1. Configure the Pro Tools Immersive Panner settings as desired.
2. Click and drag the anchor point while recording pan automation.
b Command-click (Mac) or Control-click (Windows) and drag for fine control.
b Shift-click and drag to confine movement to first dragged direction.
b Command-Shift-click (Mac) or Control-Shift-click and drag to confine movement to first dragged direction with fine control.
Meta and Macro Controls A Meta Control is parameter that affects one or more channel positions but is not directly responsible for final channel position. Each contains its own automation lane.
A Macro Control is a parameter that affects one or more controls in the pan plugin. It does not affect pan position directly, but rather by proxy by remote controlling other pan parameters and it does not have its own automation lane.
When Automation is written, the sum of Meta and Macro controls is represented as Pan automation composite lines on X, Y, and Z channel pan automation lanes.
5 Pro Tools Immersive Panner Expanded View Expanded view lets you reference the speaker layout and click to pan the anchor or the focused object to any speaker location.
Top Panel Controls Reset All Click the Reset All button to set all panner controls to their default settings.
Z Click the Z button to enable or disable panning along the Z axis (height).
Height Modes Sets the Height mode for the track. Choices include FreeForm mode (manual height adjustment), and Wedge, Sphere, and Ceiling modes (automatic height modes). Height mode can be automated.
Height modes, FreeForm selected 5 Pro Tools Immersive Panner To select the Height mode:
- Click a Height mode icon to select that mode.
Walls Click the Walls button to enable or disable whether or not object panning is constrained to the walls.
Walls enabled, stereo objects 5 Pro Tools Immersive Panner Room Views The Pro Tools Immersive Panner has 3 room views:
Tilt:
- Provides a rear view with a slight angle. This view behaves much like the regular Pro Tools
panner. Drag the object up and down to pan forward and back on the Y axis.
b In Tilt view, Control-Option-click (Mac) or Start-Alt-click (Windows) and drag the anchor point or object to adjust the Orbit control.
5 Pro Tools Immersive Panner Rear: Provides a direct rear view. Drag the object up and down to pan top and bottom on the Z axis.
- b
In Rear view, Control-Option-click (Mac) or Start-Alt-click (Windows) and drag the anchor point or object to adjust the Tilt X control.
b In Rear view, Control-Option-Command-click (Mac) or Control-Start-Alt-click (Windows) and drag the anchor point or object to adjust the Roll setting with fine control.
b In Rear view, Control-Shift-click (Mac) or Start-Shift-click (Windows) and drag the anchor point or object up or down to adjust the Y setting.
b In Rear view, Command-Control-Shift-click (Mac) or Control-Start-Shift-click (Windows) and drag the anchor point or object up or down to adjust the Y setting with fine control.
5 Pro Tools Immersive Panner Top: Provides a direct overhead view. Drag the object up and down to pan forward and back on the Y
- axis.
b In Top view, Control-Option-click (Mac) or Start-Alt-click (Windows) and drag the anchor point or object to adjust the Orbit control.
b In Top view, Control-Option-Command-click (Mac) or Control-Start-Alt-click (Windows) and drag the anchor point or object to adjust the Orbit setting with fine control.
b In Top view, Control-Shift-click (Mac) or Start-Shift-click (Windows) and drag the anchor point or object up or down to adjust the Z setting.
b In Top view, Command-Control-Shift-click (Mac) or Control-Start-Shift-click (Windows) and drag the anchor point or object up or down to adjust the Z setting with fine control.
5 Pro Tools Immersive Panner Room Guides You can select from the following for room guides:
Grid:
- Shows grid lines in the room.
5 Pro Tools Immersive Panner No Markings: No grid lines are shown.
5 Pro Tools Immersive Panner Speaker Placement (only available in Top View): Speaker locations are indicated.
- Anchor Link
The Link Anchor button determines what happens when dragging the anchor point in the pan graph.
When linked, only the anchor can be moved (unless additional keyboard modifiers are used). Dragging the anchor point moves all of the objects (whch represent individual input channels). This adjusts only the position of the Manipulate controls, but not the actual channel lane values.
When unlinked, the anchor or individual objects can be dragged. If the anchor is sitting in the same position as an object, the anchor movement takes priority.
g When the anchor and channel match position, and the anchor is linked, advanced controls are hidden.
When the anchor is unlinked—or the anchor is linked, but the channel and anchor position do not match—the advanced controlsare shown.
b Press Control (Mac) or Start (Windows) to clutch Anchor Link off.
b Command-Control-click (Mac) or Control-Start-click (Windows) the anchor point to reverse the Anchor Link and drag with fine with control.
5 Pro Tools Immersive Panner Manipulate X, Y, and Z: These are Meta controls for the L/R, Front/Rear, Top/Bottom positions of the anchor point in the room.
Orbit: This Macro control adjust the anchor X, Y, and Rotate parameters, causing the anchor to orbit around the center of the room.
Rotate: This Meta control rotates the direction of the anchor left and right, causing the channel positions to follow relatively in the room. Otherwise known as yaw. This control is not available with a mono source and the anchor point is unlinked.
Roll:
This Meta control rolls the anchor left and right, causing the channel positions to follow relatively in the room. This control is not available with a mono source and the anchor point is unlinked.
Pitch: This Meta control rolls the anchor left and right, causing the channel positions to follow relatively in the room. This control is not available with a mono source and the anchor point is unlinked.
Spin Spin The controls help automate the movement of fully rotatable parameters. For example, you may want to do live momentary movements that do not necessarily relate to a tempo, or you might want the movement to relate to and adapt with the tempo of a song.
Spin Mode Selector: Free, Note, and Bar options are exclusive. The dotted and triplet selections are 1/2, 1/4, 1/8 supplementary, and their behavior only applies to the and note options, and they can be selected at any time.
Spin Rate Knob: For Bars and Notes, the Spin Rate is relative to the selected rhythmic value. For example, 100% of a 1/4 note means that one rotation happens every quarter note. Free modes spin slower or faster depending on the specified percentage, and is based on how many milliseconds it takes for a full rotation.
Spin Target Selector: Determines which parameter is affected by the spin control.
Orbit <default>
- Rotate
- Pitch
5 Pro Tools Immersive Panner Roll
- Scale
The Scale controls let you adjust the available space between the channels and the anchor. Think of it like a room within a room. When the scale positions are at 100%, the rooms match in size.
g Scale controls are not available with a mono source and the anchor point is unlinked.
Spread: This Macro control adjusts the Width, Depth, and Height controls relative to their current position.
Width: This Meta control sand expands from the left and right of the anchor point.
Depth: This Meta control shrinks and expands from the front and back of the anchor point.
Height: This Meta controls shrinks and expands from the top and bottom of the anchor point Channel Controls Each channel has a specific set of controls.
X, Y, and Z: These Meta control determine the specific channel L/R, Front/Rear, Top/Bottom position in the room relative to the anchor and the scaling parameters. Those values do not change when the anchor point position, orientation, or scale changes.
Size: This Meta control determines the channel size.
Channel Link Button When enabled, groups of channels are linked together. This affects positional and size parameters for channels in the groups. Channel groups are pre-defined. Most of the time, channels are linked in L/R pairs.
The one exception is L C R, which moves in a group of 3.
Channel groups have pre-defined inversion settings. When linked, L/R ‘X’ positions are always inverted. ‘Y’ and ‘Z’ are not inverted. In an LCR group, C’s ‘X’ will ignore L/R movements. If C is moved, L/R will always follow without any inversion.
This control is not available with a mono source when the anchor point is unlinked.
5 Pro Tools Immersive Panner Channels View For assigned objects with channel widths greater than stereo (LCR or wider only), you can expand the Pro Tools Immersive Pannner window to show Channels view. Channels view provides the same controls per input channel (objects) as the Focus Channel controls: X, Y, Z, and Size.
To show (or hide) Channels view in the Pro Tools Immersive Panner window:
- Click the Show/Hide Channels view button.
6 Miscellaneous Features and Enhancements 6 Miscellaneous Features and Enhancements Batch File Renaming Pro Tools lets you rename whole file clips and disk files in batches.
To batch rename clips and files:
1. In the Clips List, select the clips you want to rename.
2. From the Clips List menu, choose Batch Rename.
> **Note:** Press Control+Shift+R (Mac) or Start+Shift+R (Windows).
3. In the Batch Clip Rename dialog, enable Rename Clip and Disk File.
4. Configure the rest of the Batch Clip Rename dialog as desired.
OK.
5. Click
If any subclips are included in the selection, the two radio buttons will be greyed out and only clips will be renamed.
Clip List Filtering The Clip List includes the following two options, which are enabled by default:
Whole File Clips
- Subclips
- Disabling either of these hides the respective items from the Clip List. Hiding Subclips makes it easier to
select only whole files to batch rename.
Key Commands The following key commands have been added for toggling either of these filtering options on or off:
Whole File Clips: Press Command+Shift+Numpad 5 (Mac) or Control+Shift+Numpad 5 (Windows).
Subclips: Press Command+Shift+Numpad 6 (Mac) or Control+Shift+ Numpad 6 (Windows).
6 Miscellaneous Features and Enhancements Miscellaneous Dialog Updates Duplicate Tracks Dialog Enhancements Duplicate Track Comments, Elastic Audio, and ARA assignments options have been added to the Duplicate Tracks dialog.
Duplicate Tracks dialog 6 Miscellaneous Features and Enhancements Track Commit and Extract MIDI to New Track Dialogs Mute Source Track option has been added to the Track Commit and Extract MIDI to New Track dialogs.
Commit Tracks dialog, selecting Mute Source Tracks Extract MIDI to New Track dialog, selecting Mute Source Tracks 6 Miscellaneous Features and Enhancements Missing Plugins Dialog The Missing Plugins dialog lets you save a text file report.
To save a text file report of missing AAX plugins:
1. In the Missing AAX plugins dialog, click Save Report.
2. Navigate to where you want to save the report and click Save.
Set Solo Mode in Solo Status Button Right-click Menu Pro Tools lets you right-click the Solo Status button in the Edit Window toolbar to set Solo Mode.
6 Miscellaneous Features and Enhancements Track Comment Editing Undoable Edits made in Track Comments field are undoable and can be found in the Undo queue.
Track Comments field in the Mix window Favorite Elastic Audio and ARA Plugin Pro Tools lets you set your favorite Elastic Audio and ARA plugin in a track Elastic Audio/ARA Plugin selector.
To add a favorite Elastic Audio or ARA plugin:
- From the track Elastic Audio/ARA Plugin selector, Command-click (Mac) or Control-click (Windows)
the Elastic Audio or ARA plugin you want to assign as a favorite.
g Repeat this to add additional plugin favorites.
Favorite plugins appear at the top of the Selector menu.
6 Miscellaneous Features and Enhancements To remove an Elastic Audio or ARA plugin from favorites:
- From the track Elastic Audio/ARA Plugin selector, Command-click (Mac) or Control-click (Windows)
the Elastic Audio or ARA plugin you want to remove from favorites.
Grid Lines Brightness and Opacity The UI Customization window includes controls for both brightness and opacity for grid lines in both Grid Mode and Non-grid Mode. This means that in Dark theme you can set grid lines (in Grid Mode) to black for improved visibility.
6 Miscellaneous Features and Enhancements Sends to AAX Renderer Plugin Beds Track sends to AAX Renderer beds (such as Audio Vivid or MPEG-H renderers) are auxiliary sends used to route audio from a track into internal buses that correspond to specific AAX Renderer bed inputs when active. AAX Bed assignments insert a Pro Tools mixer of a specified width in between the track output and send assignment and the renderer plugin. This lets you pre-pan the signal before the signal reaches the renderer plugin. The send level controls the amount of the track signal contributing to the bed.
The 360RA Renderer does not support beds.
Functional behavior:
Multiple tracks can contribute to the same bed using sends.
- Sends to AAX Beds cannot be sent to multiple destinations.
- Renderer plugin Beds do not support subpaths.
- Renderer plugin sends use the Pro Tools panner (not the Pro Tools Immersive Panner).
- Bed Path Management
Bed paths can be created and managed directly from the Send Assignment menu when an AAX Renderer is active in the session. From this menu, you can:
To create and assign a track to a bed:
- From the Send selector, choose Renderer > Create New Bed and select the channel width you
want.
6 Miscellaneous Features and Enhancements To reassign a track to a different bed:
- Renderer > Bed <n> > Assign.
From the Send selector, choose To delete an existing bed path:
- Renderer > Bed <n> > Delete.
From the Send selector, choose Format and Width Constraints Sends to beds can only be created for channel widths supported by the destination mixer plugin (AAX Renderer). If the renderer does not support a given format, that send configuration will not be available.
Mixer and Panning Behavior
- Bed send assignments always use the Pro Tools panner.
- The panner FMP (Follow main pan) setting is automatically disabled when the main output and send
panners do not match.
Format Migration Behavior When migrating a session to a different renderer or format while having sends assignments to beds:
- If the bed format differs, a new bed is created in the destination format that most closely matches
the channel width of the source bed and the send remains assigned to the new width.
If the source session bed send width exceeds what the destination renderer supports, the send to bed
- is dropped.
If the destination format does not support beds, the send to beds are dropped.
6 Miscellaneous Features and Enhancements Renderer Migration Utility When switching between renderers in a Pro Tools session, you are presented with options to manage the migration between renderers.
To launch the Migration Utility:
1. With an Immersive session open in Pro Tools, switch from the current renderer to another (such as
from 360RA WalkMix to MPEG-H).
2. Select the desired option for migration.
  - Perform Automatic Migration: Select this option to perform automatic migration of
Object and Bed assignments. Unsupported Object or Bed assignments are removed of deactivated.
  - Convert All Immersive Assignments to a Bed:
Select this option to convert all immersive assignments to a Bed. All tracks currently assigned as Objects or Beds are converted into a single Bed. After migration, you can manually reassign tracks as Objects as desired.
This option is not available for the 360RA WalkMix renderer.
  - Do Not Perform Migration: When this option is select, Pro Tools does not migrate
Immersive assignments to the new format.
9.1.4, 7.1.4, 7.1.2, 7.0.2, 7.1, 7.0,
3. Select the desired Bed Width for the destination renderer:
6.1, 5.1.4, 5.1.2, 5.0.2, 5.1, 5.0, Quad, LCRS, LCR, Stereo, or Mono.
4. Click OK.
6 Miscellaneous Features and Enhancements
5. In the resultant Migration Results dialog, click Yes to save a text file of the results or No to not.
6. If prompted, select the desired Monitoting Environment (such as 7.1.4).
7. Click OK.
Dolby Headphone Personalization Dolby headphone personalization, or Personalized Head Related Transfer Function (PHRTF), lets you create a profile of your head using a mobile app. Monitoring with a Dolby personalized profile improves spatial and timbral accuracy of Dolby headphone mixes, providing a more accurate and consistent monitoring experience. You can then load that profile into the Dolby Atmos Internal Renderer.
6 Miscellaneous Features and Enhancements To import a .personalized.headphone profile:
1. Ensure that the Dolby Renderer is enabled.
Window > Renderer.
2. Choose
3. In the Dolby Atmos Renderer window, click the gear icon.
Headphone Personalization Import New Profile.
4. From the selector, choose
5. Navigate to and select the .personalized_headphone profile you want.
6. Click Open.
The imported profile is now selected in the Headphone Personalization selector.
File locations:
On macOS: /Users/<username>/Library/Application Support/Avid/Dolby Atmos renderer/Binaural Configurations On Windows: \Users\UserName\AppData\Local\Avid\Dolby Atmos Renderer\Binaural Configurations Format files : .personalized_headphone To delete the current .personalized_headphone profile:
1. Choose Window > Renderer.
2. In the Dolby Atmos Renderer window, click the gear icon.
3. From the Headphone Personalization selector, select the .personalized_headphone profile you
want to delete.
Headphone Personalization Delete Current Profile.
4. From the selector, choose
Delete.
5. When prompted to confirm that you want to delete the file, click
The deleted profile is moved to the trash.
iXML Channel Ordering Improvements When importing and exporting certain multichannel files in earlier versions of Pro Tools (mainly specific to immersive stem formats from 5.0.2 up to 9.1.6), there were some issues caused by discrepancies between iXML channel info metadata, WavEXT channel mask metadata, and the physical order of channels within files. These issues have been addressed while maintaining backwards compatibility with earlier versions of Pro Tools. As a result:
6 Miscellaneous Features and Enhancements Files created by third-party applications are imported to the correct track format in Pro Tools and
- with the correct channel order.
- Files created by Pro Tools are recognized correctly by other applications.
Massive X Player Pro Tools includes Massive X Player from Native Instruments along the Pro Tools Massive X Essentials pack.
Active Pro Tools Artist, Studio, and Ultimate customers also get the "Lo-fi & Chill Plucks" and "Haze" expansion packs.
> **Note:** For access to videos covering the NI Massive X Player, visit the blog at
https://www.avid.com/resource-center/massive-x-player.
g Massive X Player is like Massive X, but the Edit page is not available.
To access and install Massive X Player and Expansion Packs:
1. Do one of the following:
  - Login to your online MyAvid account and navigate to your products.
  - Products Pro Tools Included
In Avid Link, select the page, locate in the list and click the Apps & Plugins link, locate Massive X Player in the list and click Install.
2. Use the codes provided to authorize Massive X Player and included expansion packs in the Native
Access application.
For technical support go to www.avid.com/support