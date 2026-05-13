---
product: pro-tools
product-area: editing
version: "2025.10"
release-date: 01/10/2025
doc-type: new-features
source: pdf
confidentiality: public
date-added: 13/05/2026
status: current
---

What’s New in Pro Tools Version 2025.10 ProToolsincludesélastiqueProV3byzplane.developmentastimestretchingengine.
1 What’s New in Pro Tools 2025.10 New Features and Enhancements Pro Tools® software version 2025.10 provides the following new features and enhancements:
Sony® 360RA immersive audio integration with 360RA WalkMix Creator® Lite included (Pro Tools
- Ultimate and Studio only)
SoundFlow integration
- Speech to Text usability enhancements (Pro Tools Ultimate and Studio only):
  - Transcribe outside of sessions in the Workspace
  - Spot to Edit Insertion command from Transcript window
  - Separate clips by word, sentence, or speaker
  - Transcript window search history
  - More filter options for Transcript window
  - Scroll to word shortcut for Transcript window and timeline
  - New custom shortcuts
Miscellaneous improvements:
lll
  - Improved ARA plugin menus
  - Improved support for macOS Dark UI Theme
  - Automation data maintained when changing pan assignments
  - UI Customization window improvements
  - MIDI Operations window design improvements
  - MIDI plugin processing optimizations
  - Learn (powered by SoundFlow) in the Dashboard and Edit window
  - Show Dashboard Window After Closing a Session option
  - Avid Video Engine improvements
  - Improved Support for Cue Pro Video Plugin and Application
New AAX and MIDI plugins, and Kontakt expansion packs included with Inner Circle Rewards ll
  - Acon Digital Verberate 2 AAX plugin
  - Acon Digital DeBleed:Snare AAX plugin
  - NightFox Rendition Lite MIDI plugin
  - Native Instruments Kontakt Leap expansions
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
EuControl Settings, Applications tab 2 Immersive Audio with 360RA WalkMix Creator Pro Tools Studio and Ultimate let you use Audio Futures 360RA WalkMix Creator for immersive audio mixing and rendering. 360RA is ideal for creating immersive mixes for headphones, stereo speakers, home audio systems, and virtual and augmented reality systems using 360RA ADM file playback.
> **Note:** For an online blog including videos introducing 360RA in Pro Tools, visit
https://www.avid.com/resource-center/sony-360-ra.
> **Note:** For more information about the 360RA surround format, visit https://electronics.sony.com/360-
reality-audio.
Installing and Activating 360RA WalkMix Creator Lite 360RA WalkMix Creator Lite is included with your Pro Tools Studio or Ultimate license, but you will need to download and install it separately.
g You can upgrade to the full version of Sony WalkMix Creator at 360ra.com.
To install 360RA WalkMix Creator Lite:
1. From your myavid.com account or using Avid Link, download and run the 360RA WalkMix Creator
Lite installer.
2. Follow the onscreen instructions to complete the installation.
To activate 360RA WalkMix Creator Lite:
1. Visit 360ra.com and create an account.
2. Launch Pro Tools and enable the 360RA WalkMix Renderer.
3. In the 360RA WalkMix settings, click Activate and follow the onscreen instructions.
4. In the 360RA WalkMix Panner window, click Activate and follow the onscreen instructions.
360RA WalkMix Renderer To mix in 360RA immersive audio, enable the 360RA WalkMix Renderer.
To select the 360RA WalkMix Renderer:
1. Choose Setup > I/O.
2. Click the Renderer tab.
3. Select 360RA WalkMix Renderer and ensure that the Renderer is enabled.
4. Click OK.
g You can also select the 360RA WalkMix Renderer in the Edit window Renderer view.
Renderer View in the Edit Window Pro Tools provides a Renderer view in the Edit Window toolbar where you can select the Renderer (Dolby Atmos or 360RA), access Renderer settings, enable or disable the selected renderer, and select the Monitor path for the selected renderer.
To show (or hide) Renderer view in the Edit Window toolbar:
- Select (or deselect) Renderer in the Edit Window Toolbar menu.
To set the Renderer in the Edit window:
Renderer
1. Ensure that view is enabled.
2. Select the desired Renderer:
  - Dolby Atmos Internal Renderer
  - Dolby Atmos External Renderer
  - 360RA WalkMix Renderer
To set the Monitor path for the selected Renderer in the Edit window:
1. Ensure that Renderer view is enabled.
2. Select the desired Monitor path (configured in Setup > I/O).
3. Click OK.
360RA WalkMix Renderer Window To open the 360RA WalkMix Settings window:
- Window > Renderer.
Choose b Press Control+Command+= (Mac) or Control+Start+= (Windows).
Authenticate Before you can use the 360RA WalkMix settings, you must Activate 360RA WalkMix Creator and create an account at 360ra.com. Subsequently you need to Authenticate your 360.ra account by signing in.
360RA Renderer Window Views In the 360RA Renderer window, you can switch between Speaker and Headphones view.
To toggle between views in the 360RA Render window:
- Click the Speaker/Headphone icon.
Speaker View Label Displays the Label (such as L and R) for each channel object shown in the Spherical 360RA panner.
Every channel of any track whose output is assigned to the 360RA WalMix Renderer appears as a unique object in the Spherical Panner.
Name Name Left Right) Displays the full (such as and for each assigned object.
Azimuth Azimuth Displays the value for each assigned object.
Elevation Elevation Displays the value for each assigned object.
Radius Radius Displays the value for each assigned object.
Headphone View Headphone Profile Lets you select and import Headphone profiles.
Volume Lets you adjust the renderer output Volume between –INF and 6.00 dB.
EQ Click on the frequency graph to add a parametric EQ band (up to 15 bands). You can click and drag the EQ band on the EQ graph to select it change its Freq (left/right) and Gain (up/down) settings.
Power: Click to enable or disable the EQ band.
- Type: Click to select Low Shelf, Band, or High Shelf.
- Freq: Click and drag to adjust the frequency from 20 Hz to 20.00 kHz.
- Gain: Click and drag to adjust the gain from –12.0 dB to 12 dB.
- Q: Click and drag to adjust the q from 0.10 to 10.00.
- Spherical Panner Display
Dynamically displays 360RA objects as panned in the entire mix during playback (or at the current Edit location on the Timeline). You can choose from several different views of the Spherical Panner. The number of 360RA Objects used out of the number available (up to 128) is displayed below the Spherical Panner.
Each object appears a ball in the Spherical Panner. Object locations are display only in the Render Settings window. To Write or Edit 360RA Object panning, do so in the Track Output window or in the Track Automation Lanes.
Perspective Perspective provides a full 360 view of all objects in the mix. You can click and drag on the Spherical Panner to change orientation (in Perspective view only).
Back 360RA WalkMix Object Assignments When 360RA WalkMix renderer is enabled you can assign the output of a track to the active renderer. This automatically instantiates a source plugin mixer to make the connection. 360RA WalkMix only supports Object creation. Object assignments insert a source mixer plugin that is the width of the track. 360RA supports all channel widths (except Ambisonics). However, any LFE channel is ignored, so any X.X.X (such as 7.1.4) or X.X (such as 5.1) surround format is displayed as X.0.X (such as 7.0.4) or X.0 (such as 5.0) respectively in the renderer.
Unlike with Dolby Atmos®, object assignments using the 360RA WalkMix Renderer are exclusive to each assigned track. They cannot be created or renamed in the I/O Setup, and they cannot be renamed by right- clicking on a track I/O selector. When an output is assigned to an object, it cannot be assigned to any other outputs (multiple outputs).
Greater than stereo 360RA objects are removed when switching to Dolby Atmos. Mono and stereo objects are migrated and Pan is converted from Spherical to Pro Tools automation. This works the same way when switching from Dolby Atmos to 360RA.
Object Assignments Pro Tools with 360RA WalkMix Creator Lite supports up to 128 object assignments in a session. Assign tracks as objects in the 360RA WalkMix Render to include that track in the immersive mix.
To assign a track as a 360RA Walkmix Renderer object:
- In the Edit or Mix window, click the track audio Output selector and select 360RA WalkMix Render
> Assign As Object.
Object Panning You can write automation for objects by clicking and dragging them in the 360RA Spherical panner (see 360RA WalkMix Panner Window) and by drawing and editing Pan automation on tracks (see 360RA WalkMix Pan Automation).
360RA WalkMix Panner Window When Track is assigned to 360RA WalkMix Renderer as an Object, each channel appears as an object in the track 360RA WalkMix panner.
To open the Output window:
- In either the Edit or Mix window, click the Output Window icon for the assigned track.
The output window shows the 360RA Panner to the right of the fader and meters. 360RA objects for each track channel are shown as colored balls in the spherical panning space.
Spherical Panner Views The Spherical Panner provides several different views for panning objects. You can click and drag an object in any pan view to record automation.
The panner window provides the same views as in the 360RA WalkMix settings, but only shows the channel objects for that track.
Left/Right 360RA WalkMix Pan Automation Pro Tools lets you edit Azimuth and Elevation automation for each channel in track Automation lanes.
Renderer Master Track When the 360RA WalkMix Renderer is enabled, you can assign the Output of a Master Fader track to Renderer Out. This lets you:
- Control of overall level or the 360RA mix.
- Insert plugins to process the 360RA mix.
Import ADM File To import a 360RA ADM .WAV file:
1. Create a new session and enable the 360RA WalkMix Renderer.
File > Import > Import ADM.
2. Choose
Open.
3. Navigate to the 360RA ADM .WAV file, select it, and click
Importing 360RA ADM files is not supported with 360RA WalkMix Lite. Upgrade to the full version to be able to import a 360RA ADM file.
Import Session Data Changes The Track Data to Import window adds the following two options:
Plugin global renderer assignments
- Panner Assignment & Automation
- This provides greater flexibility when working with sessions with track assignments to multiple renderers.
These two options are also available for Track presets.
Export 360RA Rendered File You can export a 360RA ADM .WAV file from Pro Tools using Bounce Mix. This file can be played back by devices that support 360RA playback. It can also be imported into other Pro Tools sessions using the 360RA WalkMix Renderer.
1. To export a 306RA AMD .WAV file:
2. Configure your session for the desired mix.
3. Select the range on the Timeline that you want to export (such as from the start to the end of a song).
4. Choose File > Bounce Mix.
5. Select 360RA WalkMix Renderer as the Export Type.
6. Type the File Name.
7. Specify the File Destination.
8. If desired, select Offline bounce.
9. Click Bounce.
3 Transcription Improvements Pro Tools provides several improvements to Transcription.
> **Note:** For complete information about Transcription, see the Pro Tools Reference Guide.
Edit, Join, and Clear Words Pro Tools lets you edit words in transcriptions. This is useful if you need to correct any mis-transcribed words or phrases.
g The Keyboard Shortcuts window (Setup > Keyboard Shortcuts) lets you define custom key commands for Edit Word, Join Words, and Clear Word(s) commands for both the Edit and Transcript windows.
To edit transcribed words in the Edit window (Transcription Lane or Transcript view) or in the Transcript window (Timeline or Files view):
1. Right-click the word and choose Transcription > Edit Word.
2. In the Edit Word dialog, edit the word as desired and click OK.
g You can enter multiple words separated by spaces (for example, if you want to replace the single word “Mississippi” with two words “Ms. Hippy”). Doing so divides the original word index into multiple segments so each word becomes its own separate entity. Be aware that when doing this, timings for the new words will be approximated. You can also leave the replacement text empty, which effectively clears the word.
b You can use the Previous and Next buttons to navigate between words in the selected clip/file, or use Command+left arrow/right arrow (macOS) or Control+left arrow/right arrow (Windows). In the case of clips in the Edit window and Transcript window Timeline view, the buttons/shortcuts only let you navigate through visible text for a clip. If a clip has been trimmed, it is not possible to navigate to words that are not seen.
To join words:
Transcription > Join Words.
1. Select and right-click the words you want joined, and choose
OK.
2. In the Join Words dialog, edit the words as desired and click
g Entering a single replacement word and pressing OK creates a single word index from the beginning of the first selected word to the end of the last selected word. However, you can also enter multiple replacement words, but doing so re-divides the total duration of the selection into multiple segments corresponding to the number of words entered, and the timing of each word is approximated.
To clear word(s):
Transcription > Clear Word(s).
1. Right-click the word(s) you want to clear, and choose
OK
2. When prompted click to clear the word.
Transcribe in the Workspace Transcribe, Re-Transcribe, Clear Transcription Pro Tools lets you and from the Workspace for single files, a selection of files, or the contents of an entire folder (whether there is a session open or not).
This eliminates the need to import all audio files into a session in order to transcribe them.
g For any non-writable file transcribed from the Workspace outside of a session, its transcription data is written to an AnalysisData.ptadb file found in /Users/Shared/Pro Tools (macOS) or C:\Users\Public\Pro Tools (Windows). When importing such a file into a session, its transcription data is copied into the session’s cache file.
To Transcribe, Re-Transcribe, or Clear Transcription for one or more files in the Workspace:
- In a Workspace browser, right-click a single file, folder, or a selection of files or folders, and choose
one of the following:
  - Transcription > Transcribe
  - Transcription > Re-Transcribe
  - Transcription > Clear Transcription
Transcription Settings without Session Open Pro Tools lets you access the Transcription Settings window (Setup > Transcription Settings) whether or not a session is open so you can adjust language and multichannel settings as desired before transcribing or re-transcribing from the Workspace.
Transcription and Transcription Channel Column The Transcription column displays transcriptions in audio files.
Transcription Channel The column in the Workspace that lets you click to select the channel that includes the transcription data you want to view for an interleaved multichannel or field recorder file.
Searching by Transcription in the Workspace Pro Tools lets you search the Workspace by transcribed data. Transcription text is found when performing a simple (“Any Text Column”) search, as well as when searching specifically for only transcription data using Advanced Search. For interleaved files that have transcription data for more than one channel, the file appears in search results even though the specific channel on which the match was found on is not identified.
Transcript Window Improvements Pro Tools provides several improvements in the Transcript window.
Spot to Edit Insertion in Transcript Window Pro Tools lets you make a selection in the Transcript window Files view and spot the selected content to the Edit insertion point in the Timeline.
To spot text to the Edit insertion:
1. Place the Edit insertion point to the location you want on a track in the Edit window.
2. In the Transcript window, select the text you want to spot.
3. Right-click and choose Spot to Edit Insertion.
b You can also Option-click (Mac) or Alt-click (Windows) and drag a selected word or phrase from the Transcription window to an audio track on the Timeline.
Separate Clip by Word, Sentence, or Speaker Pro Tools lets you separate a clip by word, sentence, or speaker. This only operates on a single clip at a time, and the operation is performed on the clip as a whole.
To separate clip by word, sentence, or speaker in the Transcript window:
1. Select Timeline view in the Transcript window.
2. Right-click the and choose one of the following:
- Separate Clip by Word
- Separate Clip by Sentence
- Separate Clip by Speaker
Search History in Transcript Window As with the Clip List, the Transcript Window includes a Search History of the 20 most recently searched items.
Filter Clips on Hidden Tracks from Transcript Window Pro Tools lets you show or hide (filter out) clips on hidden tracks in the Transcript window Timeline view using filters.
Re-Transcribe Options Always Appear Whenever executing Re-Transcribe, you are presented with the Transcription Settings for review. The most common reason for initiating a Re-Transcribe operation is because the initial transcription had some issue and you want to transcribe again using different file analysis options (a different language hint or multichannel options, for example).
Reduce Visual Effects Preference To Reduce Visual Effects for optimal UI performance:
1. Choose Setup > Preferences > Display.
2. Select one of the following from the Reduce Visual Effects setting:
- Always
- During Playback
- Never
OK.
3. Click
New Transcription Key Commands The following navigation shortcuts have been added:
- Command-click (Mac) or Control-click (Windows) a word in either the Transcript window (Timeline
view) or Transcription Lane of a track to place the insert point at the beginning of the word and scroll it into view.
Command-Shift-click (Mac) or Control-Shift-click (Windows) a word in either the Transcript window
- (Timeline view) or Transcription Lane of a track to select, scroll into view, and zoom to fit selection.
4 SoundFlow Integration Pro Tools includes SoundFlow technology to provide customizable Macros and Flows (SoundFlow subscription required). Streamline repetitive tasks using SoundFlow macros in the integrated SoundFlow panel.
> **Note:** For an online blog including videos introducing SoundFlow in Pro Tools, visit
https://www.avid.com/resource-center/soundflow.
> **Note:** For more information about SoundFlow, visit soundflow.org.
To sign into SoundFlow:
1. Do one of the following:
- Click the Learn or SoundFlow panel on the right of the Edit window.
- Choose Window > Learn or Window > SoundFlow.
2. Do one of the following:
- Click Sign in with Avid and sign in with your Avid Master Account email and password.
- If you have a separate SoundFlow account, click Sign in with SoundFlow and sign in with
your SoundFlow credentials.
SoundFlow Macros SoundFlow Macros provide one-click access to most common Pro Tools tasks. Macros are organized by category (such as AudioSuite, Automation, Clips, and so on). Each category includes relevant macros for common tasks (such as Automation window or Track Automation tasks). You can also use the SoundFlow panels search field to find and trigger commands from the filtered results.
SoundFlow Flows SoundFlow Flows are available with a SoundFlow subscription. Flows are scripts that let you execute more complicated tasks than Macros, such as Select the Best Mic or Upload to Samply. Flows appear below Macros in the SoundFlow panel and window. For more information, visit soundflow.org.
SoundFlow Tab The SoundFlow tab is available in the side panel of the Edit window along with the Clip List, Splice, and Learn tabs.
b Custom key commands can be assigned to call the "Learn" and "SoundFlow" panels/windows in the same way as for Splice and ARA plugins.
SoundFlow Window To open the SoundFlow window:
- Window > SoundFlow.
Select SoundFlow Header Controls The Learn tab and window, and the SoundFlow tab and window all provide the following common controls at the top of the panel or window:
Click the Home icon to show the main SoundFlow controls.
Click the Account icon to access your SoundFlow account online (in your default browser) or to Log Out of SoundFlow.
Click the SoundFlow icon to Open SoundFlow online (in your default browser). You can also choose Report Issue to submit an issue, a bug report, or a support request.
5 Miscellaneous Improvements Elastic Audio/ARA Plugin Menu Improvements The Elastic Audio/ARA plugin selector on audio tracks is divided into two sub-menus: one for Elastic Audio and one for ARA.
If an ARA plugin (such as Melodyne) is already enabled on an audio track, it is added to the Right-click menu for clips on the track separately from the ARA Plugins submenu for ease of access.
Improved Support for macOS Dark UI Theme Pro Tools system dialogs windows fully supports the macOS Dark UI Theme. macOS dialogs called from within Pro Tools follow the macOS UI theme setting and are not dependent on the Pro Tools UI theme setting.
Automation Data Maintained When Changing Pan Assignments Track Output Assignments and Pan Data Pan data linked to a track output is preserved even when the output is changed or removed. If a track is routed to an incompatible output, its pan automation is retained and automatically re-applied once a supported output is restored.
In earlier versions of Pro Tools, removing or changing a track output permanently deletes the track pan controls and automation data. Any incompatible or unused automation data preserved in a session created in Pro Tools 2025.10 is discarded if the session is opened and saved in Pro Tools 2025.6.1 or earlier.
Send Output Assignments and Pan Data Explicitly removing a send deletes its associated pan data. However, replacing a send with one that uses an incompatible channel width preserves the data until a compatible send is reapplied. When dragging a send to another existing send, pan data is overwritten.
UI Customization Window Improvements Pro Tools lets you customize the User Interface (UI) to best suit your work environment. The UI Customization window has been separated from the Color Palette window, and you can now adjust the brightness and saturation for Track names and headers based on track type.
To open the UI Customization window:
- Window > UI Customization.
Choose Tracks Pro Tools now lets you adjust the brightness and saturation for Track names and headers based on track type.
MIDI Operations Window Improvements The MIDI Operations window user interface and MIDI Operations panel in MIDI Editors have been refreshed.
MIDI Plugin Processing Optimizations MIDI plugin processing improvements enhance overall system responsiveness and increase available CPU headroom when working with complex MIDI arrangements, particularly in sessions with numerous MIDI plugins and high event densities. These optimizations greatly improve working with low buffer sizes.
Learn In the Dashboard, click the Learn tab, or press Command+4 (Mac) or Control+4 (Windows). The Learn tab provides easy access to Tutorials, Demo Sessions, and additional Resources. The bottom of the Learn tab provides a link to More Pro Tools Videos online.
Pro Tools Tutorials are powered by SoundFlow. You will need to log in to your Avid Master Account to access Tutorials (see Miscellaneous Improvements). You can also access Tutorials in the Learn pane on the right of the Edit window (see SoundFlow) or the Learn window (Window > Learn).
With SoundFlow integration, the legacy in-app tutorials in the Pro Tools Dashboard Learn tab have been replaced by interactive tutorials powered by SoundFlow. When launched from the Dashboard, these tutorials close the Dashboard and guide you through an interactive tutorial experience in a demo session.
The tutorials available in the Dashboard's Learn tab cover the essential topics for getting started with Pro Tools. Additional tutorials can be accessed from the SoundFlow Learn panel and Learn window.
> **Note:** For more information about SoundFlow, visit soundflow.org.
Learn tab in the Dashboard Learn panel in the Edit window Learn window Show Dashboard Window After Closing a Session Option Pro Tools lets you show the Dashboard window after closing a session. This is useful for quickly accessing other recently opened sessions or session templates.
g The Dashboard is only shown after closing a session if the last session was opened from Dashboard, not from the File menu.
To show (or hide) the Dashboard after closing a session:
Setup > Preferences > Display.
1. Choose
Show Dashboard Window After Closing a Session
2. Enable (or disable) the option.
OK.
3. Click
Show Dashboard Window After Closing Alternatively, in the Dashboard window, enable the a Session option.
Avid Video Engine (AVE) Improvements The Avid Video Engine (AVE) includes the following improvements and optimizations:
- The methods for establishing and maintaining clock with the audio engine have been refactored,
resulting in a connection that is more stable and tolerant to error conditions.
Improved robustness when accessing media from slower storage devicesand systems.
- Performance and responsiveness is greatly improved when rapidly transitioning between states such
- as stop, relocate, and play.
Improved Support for Cue Pro Video Plugin and Application Pro Tools Studio and Ultimate provide integrated support for Cue Pro from Non-Lethal Applications (an ADR and vocal cueing solution for use with Pro Tools that is purchased and installed separately).
The following improvements are included with Pro Tools 2025.10:
Integrated support on Windows
- Auto text capture from Pro Tools transcriptions
> **Note:** For more information about Cue Pro, visit https://non-lethal-applications.com/cue-pro.
6 New AAX and MIDI plugins, and Kontakt Expansions Included with Inner Circle Inner Circle is a rewards program for annual Pro Tools subscribers and customers with active perpetual upgrade plans that delivers free plugins, sounds, and more. Pro Tools 2025.10 includes 2 new AAX plugins from Acon Digital, the Rendition Lite MIDI plugin from Nightfox Audio, and Native Instruments Kontakt Leap expansions.
> **Note:** Your Inner Circle rewards are available through your online Avid Master account and through Avid
Link.
Acon Digital Verberate 2 AAX Plugin Verberate 2 is a transparent reverb that recreates realistic spaces without coloration. With precise shaping tools for damping, modulation, and diffusion, Verberate 2 enhances mixes without masking detail—ideal for music production, post, and real-time environments.
> **Note:** For an online blog including videos introducing Acon Digital Verberate 2, visit
https://www.avid.com/resource-center/verberate-2.
Acon Digital DeBleed:Snare AAX Plugin DeBleed:Snare is an advanced AI-powered plugin that lets you quickly and transparently remove unwanted mic bleed from snare drum recordings in real-time to deliver cleaner and more natural drum recordings.
> **Note:** For an online blog including videos introducing Acon Digital DeBleed Snare, visit
https://www.avid.com/resource-center/debleed-snare.
NightFox Rendition Lite MIDI Plugin Rendition Lite is the MIDI chord and arpeggiator plugin that helps artists and producers quickly play chords and ARPs without needing to understand music theory or complicated programming.
> **Note:** For an online blog including videos introducing NightFox Rendition Lite, visit
https://www.avid.com/resource-center/rendition.
Native Instruments Kontakt Leap Expansions Leap is a live looper in Native Instruments Kontakt Player (included with Pro Tools) that lets you perform, layer, and manipulate samples quickly. Three new sound expansions for Leap are included: Pummeled Piano, Eventide Drums, and Isorhythm.
> **Note:** For an online blog including videos introducing the new Kontakt Leap expansions, visit
https://www.avid.com/resource-center/kontakt-leap-expansions.
For technical support go to www.avid.com/support