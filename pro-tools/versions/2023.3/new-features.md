---
product: pro-tools
product-area: editing
version: "2023.3"
release-date: 01/03/2023
doc-type: new-features
source: pdf
confidentiality: public
date-added: 13/05/2026
status: current
---

What’s New in Pro Tools Version 2023.3 Pro Tools Native on Apple What’s New in Pro Tools 2023.3 New Features and Enhancements Tools® Pro software version 2023.3 provides the following new features and enhancements:
• Apple Silicon fully supported • Editing Improvements:
• Include Rulers with Edit Groups • Tab to automation breakpoint • Double-Click Selects Automation Breakpoints peference • Edit Window Toolbar Quantize controls improvements • Elastic Audio updates:
• Melodyne improvements on tick-based tracks • élastique Pro V3 by zplane.development for Elastic Audio processing X-Form® Radius® • (based on the algorithm from iZotope) native on Apple Silicon • Bounce to M4A (Mac only) • Sync X Video Generator Follows 10 MHz Clock System Requirements and Compatibility Information Avid can only assure compatibility and provide support for hardware and software it has tested and approved.
For complete system requirements and a list of qualified computers, operating systems, hard drives, and third-party devices, visit:
www.avid.com/compatibility The following symbols are used to highlight important information:
User Tips are helpful hints for getting the most from your Pro Tools system.
Important Notices include information that could affect your Pro Tools project data or the performance of your Pro Tools system.
Shortcuts show you useful keyboard or mouse shortcuts.
Cross References point to related sections in this guide and other Avid documentation.
Products and Developers Learn about Avid products, download demo software, or learn about our Development Partners and their plug-ins, applications, and hardware.
www.avid.com/products Pro Tools 2023.3 Features and Improvements Pro Tools Native on Apple Silicon Pro Tools now fully supports Apple M1 and M2 Silicon processors. Running natively on Silicon provides significant performance improvements over running on Rosetta. Pro Tools runs natively on Apple silicon machines after installation.
Editing Improvements Include Rulers in Edit Groups Pro Tools lets you include rulers in Edit groups (including Mix/Edit groups).
To include rulers in an Edit group:
Create a new Edit (or Mix/Edit) group or edit an existing one.
In the Create Group or Edit Group dialog, enable Include Rulers.
Include Rulers option You can also include Rulers with the <ALL> group. You can select the <ALL> group in the ID selector.
3 Configure any other settings as desired.
4 Click OK.
Tab to Automation Breakpoint Pro Tools lets you tab to automation breakpoints when automation lanes are the only lanes included in a selection. In this case, tab- bing stops at each breakpoint in the selection as well as clip boundaries for any clip that exists on the track (or transients depending on mode). There is special logic to account for dense breakpoints on steep slopes. If you tab or shift-tab to a cluster of breakpoints such as 2 breakpoints that are 1 sample apart, Pro Tools always locates to the second breakpoint of the cluster. This ensures that the Trim tool will behave as desired with such selections.
Double-Click Selects Automation Breakpoints Preference The Double-Click Selects Automation Breakpoints option has been added to the Editing Preferences in Pro Tools. Enable this op- tion to select between automation breakpoints by double-clicking with the selector tool. Disable to ignore breakpoints for selection, making it quicker to select the duration of a clip.
Edit Window Quantize Tools The Edit Window Toolbar Quantize controls have been improved to show when Strength and Swing are enabled. Clicking either Strength or Swing toggles the parameter on (lit) and off (unlit).
Edit Window Toolbar Quantize controls: Swing enabled Elastic Audio Improvements Melodyne Tick-based Audio Track Improvements The existing capability of Melodyne to perform time-stretching operations on tick-based tracks has been improved by treating those tracks more like traditional Elastic Audio tracks. For Melodyne workflows, this means that when Melodyne is selected as the Elas- tic Audio plug-in on a tick-based track, Pro Tools ensures that any content on that track is analyzed and conforms to the session tempo in the same manner as other elastic tracks. If new content is added to a tick-based Melodyne track, that content is automat- ically analyzed regardless of how it was added.
Elastic Audio zplane élastique Pro Tools now includes élastique Pro by zplane.development for Elastic Audio processing. élastique Pro is a general purpose time-stretching engine that offers unmatched quality for professional productions and broadcast applications. élastique Pro sounds especially good when stretching long material or whole songs. The time-stretching engine is based on state-of-the-art psychoacous- tic models and signal processing theory resulting in sharp transients and crystal clear vocals without phasing artifacts, making stretching artifacts obsolete. élastique Pro offers stable timing and inter-channel phase coherence. As a special feature, élastique Pro provides formant preserving pitch shifting for both polyphonic and monophonic audio.
zplane élastique Elastic Audio plug-in Formant Sets a spectral envelope shift factor. If the shift factor is the same as the pitch shift factor, formant preserving pitch shifting is performed. Otherwise you can shift the formants (envelope) separately.
Sets the order of the spectral envelope estimation (Voicing). To ensure best timbre-shifting quality for different types of in- Voicing put signals, adjust the dominant frequency region of the input signal with the Voicing slider. The default position of the slider should work for most audio. However, try moving the slider to the left when the dominant frequency is low or moving it to the right when the dominant frequency is high to see if there is a beneficial effect on the quality of the timbre-shifting. The Voicing setting has no impact on the pitch-shifting quality—it only affects the formant-shifting quality.
X-Form Native on Apple Silicon X-Form now runs fully native on Apple Silicon machines.
Bounce to M4A (macOS Only) On macOS, Pro Tools lets you Bounce Mix to M4A stereo or mono AAC files at 44.1 and 48 kHz with constant or variable bit rates (CBR or VBR). This option is only available in the File Type selector in the Bounce Mix window (File > Bounce Mix).
Bouncing to M4A File Type Sync X Video Generator Follows 10 MHz Clock You can now use a 10 MHz clock source with Pro Tools | Sync X and generate video reference at a relative rate. This requires an When the Clock Ref Source is set to 10 MHz in the Session Setup, and Video Ref: Source is set to Internal, the video reference sig- nal that is generated from the Sync X is relative to the incoming 10 mHz clock.
In Standalone mode, there is a new setting called “VIDEO GEN REF SOURCE.” By default, it is set to “Internal.” When this is the case, the video reference generation speed is independent from the 10 MHz clock source. However, you can set it to “10 MHz” where the generated video reference signal follows the speed of the incoming 10 MHz signal.
When Pro Tools is controlling Sync X, this setting is set automatically based on the selected Clock Ref Source.
For technical support go to www.avid.com/support