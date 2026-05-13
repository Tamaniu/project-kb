---
product: pro-tools
product-area: editing
version: "2025.12"
release-date: 01/12/2025
doc-type: new-features
source: pdf
confidentiality: public
date-added: 13/05/2026
status: current
---

What’s New in Pro Tools Version 2025.12 ProToolsincludesélastiqueProV3byzplane.developmentastimestretchingengine.
1 What’s New in Pro Tools 2025.12 1 What’s New in Pro Tools 2025.12 New Features and Enhancements Pro Tools® software version 2025.12 provides the following new features and enhancements:
Support for UWA Audio Vivid
- Additional Partner Content:
  - Bounce Factory Lite for SoundFlow by Andrew Scheps
  - Inner Circle Rewards:
  - Audio Brewers ab Decoder HOA Express
  - Axart Labs AutoBeat Lite
  - Safari Pedals Time Machine
  - Wave Alchemy TRIAZ Player and Expansions (including exclusive content)
1 What’s New in Pro Tools 2025.12 System Requirements and Compatibility Information Avid can only assure compatibility and provide support for hardware and software it has tested and approved.
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
EuControl Settings, Applications tab 2 UWA Audio Vivid 2 UWA Audio Vivid Pro Tools Ultimate and Studio on (macOS only) support UWA Audio Vivid. Audio Vivid provides 3D spatial position audio editing capabilities, supports binaural, 2.0, 5.1 to 7.1.4 spatial rendering, and lets you export WAV, ADM, and Audio Vivid standard MP4 (AV3A) formats.
Audio Vivid features:
- Import ADM format files in Pro Tools.
- The position and trajectory of sound can be defined by using the Panner's audio-visual control
function, and the audio-visual location can also be controlled using the Audio Vivid panner.
- Trajectory automation.
- Spatial audio monitoring and mixing (binaural, stereo, 5.1, 5.1.4, 7.1, 7.1.2, and 7.1.4) using the
rendering algorithms in Audio Vivid Renderer.
Bounce Mix of the current Audio Vivid project.
- Install the Audio Vivid Production Suite
The Audio Vivid Production Suite includes both the Audio Vivid Panner and the Audio Vivid Renderer.
Panner：Supports the definition of the position and trajectory of sound, and set the spatial position and sound movement trajectory of mono/stereo.
Renderer：Is equipped with multiple rendering algorithms and supports binaural, stereo, 5.1, 5.1.4, 7.1, 7.1.2, and 7.1.4 rendering monitoring. It also supports up-down mixing of sound and channel compression.
To install the Audio Vivid Production Suite:
1. Download and run the Audio Vivid Production Suite installation package.
2. Follow the onscreen instructions and use the default installation path to complete the installation.
Configure the Audio Vivid Renderer After installing the Audio Vivid Production Suite, you can select the Audio Vivid Renderer in either the I/O Setup or in the Renderer controls in the Edit Window toolbar.
To enable the Audio Vivid Renderer, do one of the following:
- Choose Setup > I/O > Renderer, select Audio Vivid from the Renderer selector, and click OK.
- In the Renderer controls in the Edit Window toolbar, select Audio Vivid from the Renderer selector.
2 UWA Audio Vivid Audio Vivid Object and Beds Assignments When the Audio Vivid renderer is enabled, you can assign the output of a routable track in the session to the renderer as an object. This automatically instantiates a source plugin mixer to make the connection.
Object Assignments Object assignments insert a source mixer plugin that is the width of the track. They are only allowed on track widths that are supported by the destination Renderer plugin.
To assign a track as an Audio Vivid Object:
1. Ensure that the Audio Vivid Renderer is enabled.
Audio Vivid > Assign as Object.
2. From the track output selector, select
Unlike Dolby Atmos, object assignments are exclusive per track and are made from the track output section. They cannot be created or renamed in the I/O Setup, and they cannot be renamed by right- clicking on a track I/O plate. When an output is assigned to an object, it cannot be routed to multiple outputs.
2 UWA Audio Vivid Bed Assignments Similar to Objects, when the Audio Vivid Renderer is enabled you can assign track outputs to an Audio Vivid Bed. Bed assignments insert a Pro Tools mixer of a specified width in between the track output/send assignment and the Audio Vivid plugin. This lets you pre-pan the signal before the signal reaches the Audio Vivid plugin. Beds can only be created for widths that the destination mixer plugin supports as inputs. Beds always use Pro Tools panning, even if the destination mixer uses another pan format.
Audio Vivid supports Bed channel widths of Stereo, 5.1, 5.1.2, 5.1.4, 7.1, 7.1.2, and 7.1.4.
g Audio Vivid Beds do not support subpaths. If a track is assigned to a subpath in a Dolby renderer, a new Bed is created during migration that matches the main Bed path width.
Audio Vivid does not support Track send assignments to Beds. When migrating a session from Dolby Atmos to Audio Vivid, any Sends assigned to Beds are removed. These assignments will be restored when switching back to the original configuration.
To create and assign a new Audio Vivid bed:
- Audio Vivid > Create New Bed
From the track Output selector, choose and select the desired channel width.
Managing AAX Beds Bed paths can be added and managed using the track Output selector in Edit and Mix windows. It is possible to create a new Bed, assign track to a Bed, or delete a Bed. Beds can be reused by other tracks in session.
2 UWA Audio Vivid Renderer Switching and Bed Data Migration When switch between renderers for the first time, for any formats that support Beds, all existing Bed- related metadata is automatically migrated to the destination format. The following properties are preserved with this initial migration:
Track Assignments Tracks that were assigned to a specific Bed in the source renderer are automatically reassigned to the corresponding Bed in the new renderer.
Custom Path Names Any user-defined names for Beds are retained and transferred.
Color Settings Custom color configurations applied to Beds are migrated to ensure consistency in visual layout and workflow.
Bed Width Compatibility If a Bed width used in the source format is not supported in the destination renderer, a new Bed is created in the destination format using the width that most closely matches the Bed channel width from the source renderer.
If the Bed width in the source format is larger than what the destination renderer supports, the associated track is migrated as assigned to object, otherwise the tracks are left unassigned if object routing is not supported.
Post-Migration Variations After first changing the renderer, any changes made to existing Beds (such as reassignments, renaming, or color adjustments) are stored as a separate renderer-specific variation within the session. This ensure that each renderer can maintain its own independent Bed configuration while still preserving the initial migration mapping.
2 UWA Audio Vivid Audio Vivid Renderer Window To open the Audio Vivid Renderer window, do one of the following:
- In the Edit Window Toolbar Renderer controls, click the Gear icon.
- Window > Renderer.
Choose b Press Control+Command+= (Mac) or Control+Start+= (Windows).
2 UWA Audio Vivid Theater View Theater view displays a screen at the front of the virtual theater to orient panning. You can click and drag the display to reorient perspective.
2 UWA Audio Vivid Object View Options Display Numbers Enable to show Object numbers in the 3D display.
Display Person Enable to show a virtual head showing the listening position in the 3D panning space instead of the virtual theater screen.
2 UWA Audio Vivid Speakers View < > Click the icon on the right side of the 3D display to show Speakers view. Click the icon to hide Speakers view.
S Click S to solo the corresponding speaker.
M Click M to mute the corresponding speaker.
Limiter Click to toggle the Limiter on and off.
Low-pass Filter Click to toggle the Low-pass Filter on and off.
Bed and Object Panel The input status section represents all available 128 channels and how the channel IDs are assigned to beds and objects. Channels that are assigned to objects show if a track has an active connection to the object (13–128). Beds are represented by a band (1–12).
Bed Mute Click to mute (or unmute) all Beds.
Object Mute Click to mute (or unmute) all Objects.
Monitor Level Meters The monitoring level display area shows the level values of the corresponding speaker or binaural monitoring in the current rendering mode. Binaural monitoring is only enabled in Binaural mode. The level meter shows a dual-level display: the top horizontal line indicates the peak level and the level column shows the RMS level.
2 UWA Audio Vivid Monitor Selector Select the desired monitor format: 7.1.4, 7.1.2, 7.1, 5.1.4, 5.1.2, 5.1, or 2.0.
Meters are ordered from left to right: L/R/C/LFE/LS/Rs/Lrs/Rrs/Ltf/Rtf/Ltr/Rtr.
Binaural Monitoring Click the lower-right corner of the Binaural Monitoring pane to expand the view.
Loudness Meters Provides real-time monitoring of signal loudness after rendering. When short-term loudness, instantaneous loudness, comprehensive loudnes,s and true peak exceed the warning value, they turn red. Values can be reset (measured from the current playing content) or paused (the current values are displayed).
Speakers or Binaural Select whether you want to view the values for Speakers or for Binaural output.
2 UWA Audio Vivid Loudness Meter Speakers view Loudness Meter Binaural view 2 UWA Audio Vivid S/M Meters The bar chart of the loudness meter shows Short term and Momentary, and the horizontal line shows Short term Max and Momentary Max.
Integrated Loudness The average loudness of the entire audio segment.
Short-Term Loudness Extracts signals within 3 seconds expresses the average loudness within 3 seconds.
Momentary Loudness The loudness is within 400 ms and updated every 100 ms, with a very sensitive response.
Range Measures the change in loudness of audio materials in LU (loudness unit).
True Peak The maximum peak level of the digital signal.
Refresh Click the Refresh button to reset the values measured from the current playing content.
Hold Click the Hold button to pause the current values.
2 UWA Audio Vivid Audio Vivid Object Panner Audio Vivid Panner is designed for 3D acoustic spatial position editing operations. You can drag the objects to record panning automation, as well as set step key points and trajectories for spatial rendering.
To open the Audio Vivid panner for a track:
- Click the track's Output Window button.
Space Editing and Display Pointer Tool Lets you click and drag the Object to place it in the XYZ panning coordinates and to record panning automation.
Object Audio Vivid objects appear as colored circles in the Pan Display. You can click and drag objects to reposition them in the XYZ panning coordinates.
2 UWA Audio Vivid 3D View 3D view provides a virtual theater space for orienting object panning.
2 UWA Audio Vivid Top View Top View provides an overhead view for orienting object panning.
Font View Front View provides a forward looking view for orienting object panning.
2 UWA Audio Vivid Function Knobs Location Edit The Function knobs provide position editing for fine adjustment of spatial positioning of audio objects.
Step Click to show or hide the Step controls.
Adjust the object location along the X access.
Y Adjust the object location along the Y access.
Z Adjust the object location along the Z access.
Angle Adjust the Angle of the object location.
Size Adjust the Size of the object to give it a sense of mass. The object graphic expands to indicate increased Size settings.
2 UWA Audio Vivid Step Controls The Step panel provides key point and trajectory editing tools. These let you edit the object movement trajectory at each step, with a maximum of 8 step points.
Step editing is not supported during playback.
The Panner step function lets you edit the movement trajectory of each step. Once the editing is successful, the sound source points will move along the set trajectory over time. It supports editing up to 8 step points at most. In step mode, there are two forms: key point editing and trajectory editing. These two forms can be switched by using their respective unique tools. The same step does not support editing in both forms simultaneously.
2 UWA Audio Vivid Edit/Complete/Reset Click Edit to start editing. Click Complete when done. Click Reset to revert.
Step/Trajectory Tools Step assistance tools and trajectory editing tools support free trajectory drawing or fixed-shape trajectory drawing. With Edit enabled, the Step/Trajectory editing tools become available.
Erase Step/Trajectory Tool Select, and click to erase a step.
Step Model Select either Time or Beat mode to define the duration of the current step.
2 UWA Audio Vivid Loop Enable to cycle the corresponding Step.
Start Time Step start time setting, time units: minutes, seconds, milliseconds.
Step 1–8 Click to select, and click again to close the step point. When the current step point is edited, it will jump to the next step point. When the 8th step point is edited, it will jump to the 1st step. One step point can be edited with one trajectory or eight key points.
Audio Vivid Panning Automation Audio Vivid panning automation include X, Y, Z, and Size for each channel on the track.
XYZ Panner and Conversion Audio Vivid 3D panning is based on Cartesian XYZ coordinates for object positioning within immersive audio mixes. When switching from a different Renderer (such as Dolby Atmos) to Audio Vivid for the first time, Pro Tools automatically converts pan data between the Pro Tools and the Audio Vivid Cartesian (XYZ) coordinate panning system.
g As with other immersive audio formats, it is also possible to perform this conversion on demand at any time using the Global Renderer Track menu.
2 UWA Audio Vivid Export You can export Audio Vivid mixes using Bounce Mix.
To export your Audio Vivid mix:
1. Choose File > Bounce Mix.
2. Select Audio Vivid as the Export Type.
3. Click Bounce.
4. Configure the resulting Audio Vivid Bounce dialog as desired (see "Audio Vivid Bounce Options" on the
next page).
5. Click Export.
2 UWA Audio Vivid Audio Vivid Bounce Options Name Type the Name you want for the exported file. Render Mode Render Mode: 7.1.4, 7.1.2, 7.1, 5.1.4, 5.1.2, 5.1, 2.0, Select the desired channel width for or Binaural.
Output Format Select the desired file format: WAV, ADM BWF, or MP4(AV3A).
Sampling rate (Hz) Select the desired sample rate: 4100, 48000, 88200, or 96000.
88.2 kHz is not available with MP4(AV3A).
2 UWA Audio Vivid Bit Depth 16 24.
Select the desired Bit Depth: or Export Path Click the Select button to specify the Export Path.
3 Additional Partner Content 3 Additional Partner Content Bounce Factory Lite for SoundFlow Bounce Factory Lite for SoundFlow by Andrew Scheps lets you set up multiple mix passes for all your sessions in advance and then bounce them whenever you want, unattended.
> **Note:** For more information, visit https://www.avid.com/resource-center/bounce-factory-lite.
Inner Circle Rewards Inner Circle is a rewards program for annual Pro Tools subscribers and customers with active perpetual upgrade plans that delivers free plugins, sounds, and more. Pro Tools 2025.12 includes four new Inner Circle rewards from Audio Brewers, Axart Labs, Safari Pedals, and Wave Alchemy, giving you new ways to process audio, work with ambisonics content, and create with MIDI.
g Your Inner Circle rewards are available through your online Avid Master account and through Avid Link.
Audio Brewers ab Decoder HOA Express ab Decoder HOA Express makes Ambisonics decoding fast and easy, allowing users to translate their Ambisonics signals into Stereo, 5.1, or even 7.1.2 beds with no configuration required. The entire process is automatic and designed to deliver instant, reliable results.
> **Note:** For more information, visit https://www.avid.com/resource-center/audio-brewers.
Axart Labs AutoBeat Lite AutoBeat Lite is an AI-powered, 12-track generative MIDI beat engine that brings instant rhythmic inspiration to Pro Tools, delivering fresh patterns across a range of modern genres. Utilize intuitive musical controls, detailed step editing, and real-time MIDI pattern triggering to quickly shape grooves and refine ideas with precision. With effortless drag-and-drop MIDI export and smooth integration into your session, AutoBeat streamlines beat creation from first sketch to final arrangement.
> **Note:** For more information, visit https://www.avid.com/resource-center/autobeat-lite.
Safari Pedals Time Machine The Time Machine plugin from Safari Pedals provides four unique sound "filters" that recreate the iconic tones of the 50s, 60s, 70s, and 80s. Each filter type is crafted with a tailored combination of filtering, saturation, and compression, along with recorded Lo-Fi noise samples from each time period.
> **Note:** For more information, visit https://www.avid.com/resource-center/time-machine.
Wave Alchemy TRIAZ Player and Expansions Discover instant rhythmic inspiration with Triaz Player, bundled with the exclusive Avid Select expansion.
Featuring over 8,000 premium samples, 375 curated presets, and a complete suite of mixing and mastering tools. Triaz Player lets you build, shape, and polish drum tracks with ease. The included AAX plugin supports effortless drag-and-drop export of audio or MIDI into your session on both macOS and Windows. This edition also includes Avid Select—180 signature presets curated from Wave Alchemy’s acclaimed expansion catalogue, offering a versatile palette of modern electronic, pop, and experimental drum tones.
> **Note:** For more information, visit https://www.avid.com/resource-center/triaz-player.
For technical support go to www.avid.com/support