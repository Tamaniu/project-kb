---
product: nexis
product-area: shared-storage
version: "2025.5.0"
release-date: 01/05/2025
doc-type: network-guide
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

® Avid NEXIS Network and Switch Guide Version 2025.5.0 Using This Guide Using This Guide NEXIS® The Avid software-defined storage system provides a high-performance distributed file system that uses high-capacity shared media storage for workgroups of connected devices. This guide describes how to manage your storage system.
Unless noted otherwise, the material in this document applies to the Windows®, macOS®, and Linux operating systems. The majority of screen shots in this document were captured on a Windows system, but the information applies to all operating systems. Where differences exist, information on the differences is provided.
The documentation describes the features and hardware of all models. Your system might not contain certain features and hardware that are covered in this guide.
Who Should Use This Guide This guide is intended for users who will manage the Avid NEXIS media network. You should have a basic understanding of how to use and manage the Windows operating system or the macOS systems, and you should be familiar with basic workgroup and network concepts.
Revision History Date Notes Sequoia support for select NICs; removed old network adapters that reached EOL.
2024 Sept: Added support for Intel E810-XXVDA2 NIC on Windows 11.
- July: Added Ruckus ICX-8200-24 to the list of qualified switches and added support for Intel
- E810-XXDA2 NIC on Windows 10.
- May: ATTO TLNS-3252 supported with macOS 14 and all client connections
- March 21: Added information about Dell S4100/S5200 series Port Profiles for 40GbE
configuration (see "40GbE Switch Operation" on page 18)
- March 7: Added more ATTO network adapters
2023 l Sept: Added Nvidia and ATTO network adapters
- July: Added Cisco Nexus 93108TC-FX3, 93180YC-FX3 to Qualified table. Removed all
Myricom products (no longer supported) Mar: Added Avid NEXIS | F2 SSD switch/cables/NICs
- Oct: Updated Flow Control from recommendation to requirement
- Sept: Added F-series as supported with Dell S4048-ON switch
- Aug: Clarified flow control specification
- July: Introduced Avid NEXIS F-Series and supporting switches and options
- May: Minor updates for Avid NEXIS 2022.5
2021 l Oct: Moved older switches to Legacy table, added more switches to Approved table
- April: Added Mac Pro 7,1 to Apple/Aquantia row in Supported NIC cards table. Added Avid
NEXIS v2020.x and 2021.x 2020 Dec: macOS 11/Myricom issue
- Nov: Added Dell S5200-ON series
Using This Guide Date Notes
- Oct: Added more ATTO NICs and supported operating systems
- Sept: Added Dual Port Networking and AALB; added Cisco 93xxx “qualified” switches from KB
page Aug: Changes to LACP procedures for Arista and Cisco switches, added Dell 4100 Series
- switches
- May: Added CentOS 7.x support for some ATTO NICs
- Apr: Added Intel X550 NIC
- Mar: Added long-range optics information
- Jan: Added more OS detail to NIC tables. Added more Sonnet NICs. Removed NETGEAR X728
(not tested in Avid).
2019 l Sept: Removed some ATTO switches and NICs (duplications or never released)
- July: Dell switches rebranded to PowerSwitch
- May: Improved the Supported NIC table in "Supported Network Components and Cables" on
Symbols and Conventions Avid documentation uses the following symbols and conventions:
Symbol or Meaning or Action Convention
> **Note:** A note provides important related information, reminders, recommendations, and
strong suggestions.
A caution means that a specific action you take could cause harm to your computer or cause you to lose data.
w A warning describes an action that could cause you physical harm. Follow the guidelines in this document or on the unit itself when handling electrical equipment.
g A user tip provides a helpful hint that can aid users in getting the most from their system.
b A shortcut shows the user keyboard or mouse shortcuts for a procedure or command.
> This symbol indicates menu commands (and subcommands) in the order you select them. For example, File > Import means to open the File menu and then select the Import command.
- This symbol indicates a single-step procedure. Multiple arrows in a list indicate that
you perform one of the actions listed.
(Windows), (Windows This text indicates that the information applies only to the specified operating system, only), (macOS), or either Windows or macOS.
(macOS only) Bold font Bold font is primarily used in task instructions to identify user interface items and keyboard sequences.
Italicfont Italic font is used to emphasize certain words and to indicate variables.
Courier Bold font Courier Bold font identifies text that you type.
Using This Guide Symbol or Meaning or Action Convention Ctrl+key or mouse Press and hold the first key while you press the last key or perform the mouse action.
action For example, Command+Option+C or Ctrl+drag.
| The pipe character is used in some Avid product names, such as MediaCentral | Cloud UX. In this document, the pipe is used in product names when they are in headings or at their first use in text.
If You Need Help If you are having trouble using your Avid product:
1. Retry the action, carefully following the instructions given for that task in this guide. It is especially
important to check each step of your workflow.
2. Check the latest information that might have become available after the documentation was
published. Always check online for the most up-to-date release notes or ReadMe because the online version is updated whenever new information becomes available. To view the online version, visit the Avid NEXIS Documentation available on the Avid Knowledge Base.
3. Check the documentation that came with your Avid application or your hardware for maintenance or
hardware-related issues.
4. Visit the Avid Online Support at www.avid.com/support. Online services are available 24 hours per
day, 7 days per week. Search the Knowledge Base to find answers, to view error messages, to access troubleshooting tips, to download upgrades, and to read or join online message-board discussions.
Accessing the Online Documentation The Avid online documentation contains all the product documentation in PDF format. You can access the documentation from the Knowledge Base site specific to your release. Download and install Acrobat Reader before you access the PDF documentation.
Avid Training Services Avid makes lifelong learning, career advancement, and personal development easy and convenient. Avid understands that the knowledge you need to differentiate yourself is always changing, and Avid continually updates course content and offers new training delivery methods that accommodate your pressured and competitive work environment.
For information on courses/schedules, training centers, certifications, courseware, and books, please visit www.avid.com/support and follow the Training links, or call Avid Sales at 800-949-AVID (800-949-2843).
1 Planning Your Configuration 1 Planning Your Configuration This document provides Avid NEXIS Administrators with a single reference regarding the implementation, configuration and troubleshooting of Avid® qualified, approved, and architecturally capable Ethernet switches for use as the Avid Production Network (APN) switch for all Avid platforms. See the AvidNEXIS SetupandMaintenanceGuideand the latest AvidNEXISReadMefor information about currently supported models.
Network Considerations Carefully plan for space, environmental, and power requirements for your Avid hardware. This section contains topics related to setting up your Avid network environment.
For environmental specifications and recommendations for Avid hardware, racks, and Uninterruptible Power Supplies, see the Avid NEXIS Setup and Maintenance Guide.
Computer Names A hostname must comply with RFC 952 and RFC 1123 standards. For example, you cannot use an underscore in a hostname. For more information, see the Microsoft Knowledge Base article “Naming Conventions in Active Directory for Computers, Domains, Sites, and OUs.” Verify Entries on the DNS Server Make sure that you correct any errors in DNS entries for name to IP resolution. The Avid network can become sluggish and unstable if there are incorrect entries in the DNS server for any of the computers in the MediaCentral | Production Management environment. Symptoms include excessive CPU usage by the Interplay Framework Lookup service and Interplay Diagnostics. The tree view in the Interplay Service Configuration or Health Monitor may also fail to populate if there are incorrect DNS entries.
Configure the DNS Server to Support Reverse Lookup Make sure that the DNS server is configured to support Reverse Lookups. If not, Interplay Framework cannot resolve IP addresses to host names, and tree views can fail to populate in the Interplay Service Configuration, Interplay Diagnostics, and Health Monitor.
Computers with Multiple Network Interfaces Computers that have multiple network interfaces in use must be entered in DNS so that all IP addresses have the same hostname.
If you have multiple network interfaces on a computer and one is not used, use the Device Manager to disable the interface. Otherwise, the computer might have problems communicating with the Interplay Framework. If multiple network interfaces are used, adjust the binding order and local specific routes to ensure the intended operation. Use the Advanced setting in the Network adapter properties to change the priority order on the network interfaces.
Configuring an Avid Shared Storage System On an Avid Production Network, to support clients that are not routed, you must configure a Layer 3 switch to route between subnetworks.
Know Where Your Subnets Are on the Network Create a system diagram or a table that identifies the subnets on your Avid network environment. Avid recommends you use Classless Inter-Domain Routing (CIDR) contiguous (sequential) IP ranges with a /24 size and matching VLAN IDs. Avid no longer recommends using non-contiguous IP ranges and VLAN IDs such as VLAN 10, 20, 30.
1 Planning Your Configuration Time Synchronization If you already have a system in place to maintain Time Sync on your network, you can continue to use that system. Avid has created a detailed guide on synchronizing many Avid products. Search for “Time Synchronisation for Avid MediaCentral” posted on the Avid Knowledge Base at www.avid.com/US/support.
It is important to use only one time synchronism mechanism to set the local PC clocks in the MediaCentral | Production Management environment.
2 Qualified and Approved Switches for Avid NEXIS 2 Qualified and Approved Switches for Avid NEXIS Avid uses the following designations for Ethernet switches that can provide suitable performance for Avid NEXIS storage:
Qualified
- Fully qualified for a broad range of applications. Qualified switches are typically part of the Avid
engineering and test labs and part of ongoing testing, or an accepted (and listed) next-generation family variant.
- Approved
Approved for deployment as detailed in the Avid ISIS / NEXIS & Media Central Network Requirements Document. (Approved switches are typically tested at a customer site as part of a specific commissioning engagement.) All of the listed switches support using the 802.3ad Link Aggregation Control Protocol (802.1ax), which is supported on any Avid NEXIS Enterprise (E-Series) Engine and the Avid NEXIS | SDA running Avid NEXIS v7.0 or higher, and Avid NEXIS F-Series and Avid NEXIS | SDA+ running Avid NEXIS v2022.5.0 and higher.
> **Note:** LACPisnotsupportedonAvidNEXIS|PROandAvidNEXIS|PRO+.
Refer to the switch vendor’s documentation for specifics.
The switches in each table are listed in alphabetical order. If a switch cannot connect directly to an Avid NEXIS system it can still be used as a down-linked (subordinate) edge switch.
Qualified Switches and Options The following table lists qualified switches and the options for use with Avid NEXIS.
g Unlessotherwisespecified,alltheQualifiedswitchesareapprovedforusewithlegacyAvidNEXISE- Series,includingthePROandSDA.Seealso"LegacySwitchesandOptions"onpage 12forswitches thatmayhavereachedend-of-lifeorend-of-salesandbeenmovedintothattable.
> **Note:** Laterfirmware/operatingsystemversionsshouldbeacceptablebutarenottestedbyAvid.
Qualified Switches and Options Vendor and Avid NEXIS Models Minimum Description and Approved Model Firmware or Blades Network OS Cisco Nexus All F-series, SDA+, PRO+ (see NXOS: 10.x 48x100M/1/10GBASE-T ports 93108TC-FX3, "Switch Speeds for Avid NEXIS and 6x40/100Gbps QSFP28 93180YC-FX3 F-Series" on page 11) ports See also "40GbE Switch Cisco Nexus All F-series, SDA+, PRO+ (see NXOS: 7.0(3)I7(6) 48x100M/1/10GBASE-T ports 93108TC-EX, "Switch Speeds for Avid NEXIS and 6x40/100Gbps QSFP28 93108TC-FX F-Series" on page 11) ports 2 Qualified and Approved Switches for Avid NEXIS Qualified Switches and Options Vendor and Avid NEXIS Models Minimum Description and Approved Model Firmware or Blades Network OS See also "40GbE Switch Cisco Nexus All F-series, SDA+, PRO+ (see 48x1/10/25Gbps fiber ports 93180YC-EX, "Switch Speeds for Avid NEXIS and 6x40/100Gbps Quad 93180YC-FX F-Series" on the next page) Small Form-Factor Pluggable 28 (QSFP28) ports See also "40GbE Switch Cisco Nexus All F-series, SDA+, PRO+ (see 36x100/14Gbps 9336C-FX2 "Switch Speeds for Avid NEXIS 100/40Gbps ports can be F-Series" on the next page) broken out to 4x25/19Gbps 100Gbps Quad Small Form- Factor Pluggable 28 (QSFP28) ports Cisco Nexus All F-series, SDA+, PRO+ (see 48x1G RJ45, 4x1/10/25Gbps 9348GC-FXP "Switch Speeds for Avid NEXIS SFP, 2x40/100Gbps QSFP28 F-Series" on the next page) Cisco Nexus All F-series, SDA+, PRO+ (see 96x100M/1/10GBASE-T ports 93216TC-FX2 "Switch Speeds for Avid NEXIS and 12x40/100Gbps QSFP28 F-Series" on the next page) ports Cisco Nexus All F-series, SDA+, PRO+ (see 48x1/10/25Gbps fiber ports 93240YC-FX2 "Switch Speeds for Avid NEXIS and 12x40/100Gbps Quad F-Series" on the next page) Small Form-Factor Pluggable 28 (QSFP28) ports This switch does not support breakout connections — cannot be used with F-Series Engines at 50GbE.
Cisco Nexus All F-series, SDA+, PRO+ (see 96x1/10/25Gbps SFP28 and 93360YC-FX2 "Switch Speeds for Avid NEXIS 12x40/100Gbps QSFP28 F-Series" on the next page) Dell EMC F2, PRO+ 6.3.0.18 and later 24x1GbE (RJ45) PowerSwitch E2, E4, PRO 2x10GbE SFP+ ports N2024 Avid-supplied switch includes (Avid P/N: 7080- 2-port 10GbE SFP+ module 30085-00) Supported options:
10GigE, SFP+, single, transceiver, SR, 850nm (Avid 2 Qualified and Approved Switches for Avid NEXIS Qualified Switches and Options Vendor and Avid NEXIS Models Minimum Description and Approved Model Firmware or Blades Network OS PN 7070-30026-01) 10GigE, SFP+, single transceiver, LR, 1310nm Dell EMC F2, F5 NL, PRO+ (see "Switch 6.3.0.18 and later 48x1GbE (RJ45), 2x1GbE SFP PowerSwitch Speeds for Avid NEXIS F-Series" ports, 2x10GbE SFP+ ports N3048, N3048E below) 1 slot for 2-port 10GbE SFP+ or E2, E4, E5 NL, PRO 10GBASE-T module Avid-supplied switch includes 2-port 10GbE SFP+ module Supported options:
10GigE, SFP+, single transceiver, LR, 1310nm SFP 1000Base-Sx 850nm. 1GbE optical transceiver (Avid PN 7070-30584-00) SFP+ (LR) 1300 nm (Avid PN 7070-30583-00) SFP+ (SR) 850 nm Dell EMC S4100- All F-series, SDA+, PRO+ (see 10.4.3.4 or later Available as 12-port half-width ON Series "Switch Speeds for Avid NEXIS switches, and 28-port and 48- F-Series" below) port versions with SFP+ or 10G- BaseT.
See also "40GbE Switch Dell EMC S5200- All F-series, SDA+, PRO+ (see 10.4.3.6.244 or Available as 12-port, 24-port, ON Series "Switch Speeds for Avid NEXIS later and 48-port switches. See F-Series" below) Dell.com for more details.
See also "40GbE Switch Ruckus PRO+, F2 10.0.10c_cd3T253 24x1Gb RJ-45 ICX-8200-24 4 x 10/25 Gb SFP+/SFP28 enginesaresupportedat either10Gbor25Gb Switch Speeds for Avid NEXIS F-Series Avid NEXIS F-Series Engines can run at the following speeds:
2 Qualified and Approved Switches for Avid NEXIS Model Speeds Avid NEXIS | F5 NL 10GbE only Avid NEXIS | SDA+, Avid NEXIS | PRO+, Avid NEXIS | F2, Avid NEXIS | F2X 10 or 25GbE Avid NEXIS | F5 40 or 50GbE Avid NEXIS | F2 SSD 100GbE You might need to map switch ports to accommodate 10, 25, 40, or 50GbE operation. See your switch vendor documentation for details where applicable.
Approved Switches and Options In addition to the approved switches listed here, you can also use any switch considered architecturally capable, meaning they have been stress tested by the switch vendor in coordination with Avid and subject to an Avid specific test plan (see Avid NEXIS Switch Infrastructure for details).
> **Note:** Laterfirmware/operatingsystemversionsshouldbeacceptablebutarenottestedbyAvid.
Approved Switches and Options Vendor and Avid NEXIS Models Minimum Description and Model Firmware or Approved Network OS Blades Arista F2, F5, F5 NL (at 10GbE only), PRO+ (see "Switch 48-port SFP+ Networks Speeds for Avid NEXIS F-Series" on the previous page) and 6-port QSFP100 7280xR, E2, E2 SSD, E4, E5, E5 NL, PRO 7500xR Cisco F2, F5, F5 NL (at 10GbE only), PRO+ (see "Switch IOSXE 16.12.1 Catalyst Speeds for Avid NEXIS F-Series" on the previous page) E2, E4, E5 NL, PRO Juniper F2, F5, F5 NL (at 10GbE only), PRO+ (see "Switch 20.2R3.9 Networks Speeds for Avid NEXIS F-Series" on the previous page QFX5120 E2, E2 SSD, E4, E5, E5 NL, PRO Juniper F2, F5, F5 NL (at 10GbE only), PRO+ (see "Switch 21.2R1.6 Networks Speeds for Avid NEXIS F-Series" on the previous page EX4400 E2, E4, E5 NL, PRO Legacy Switches and Options The switches listed here are either end-of-life or no longer commercially available. However, if you have one, you can still use it with the indicated Avid NEXIS models.
These switches are not actively tested with new Avid NEXIS versions. Avid will offer “best-effort” support, and cannot guarantee to fix or investigate issues as we may no longer have access to the product.
> **Note:** Laterfirmware/operatingsystemversionsthanthoselistedhereshouldbeacceptablebuthavenot
beentestedbyAvid.
g 2 Qualified and Approved Switches for Avid NEXIS Legacy Switches and Options Vendor and Model Avid NEXIS Models Minimum Firmware Description and Approved or Network OS Blades Arista Networks E2, E4, E5 NL, PRO 24-Port SFP+ 7150S-24 (10GbE only) Arista Networks E2, E4, E5 NL 52-Port SFP+ 7150S-52 (10GbE only) Arista Networks All E-series, PRO, SDA 4.14.7M or 4.16.7M 48x1/10GbE and 4x10/40GbE 7280SE-64 Arista Networks 7048 E2, E4, PRO 4.8.6 NA Cisco Catalyst E2, E4, E5 NL, PRO ROM: 15.0(1R)SG6 (and 16 or 32 dual-speed 1Gbps (SFP) or later) 10Gbps (SFP+) ports 4500-X (Layers 2 and 3), 32-port switch, 16- IOS: 03.04.02.SG (and Supported options:
port switch later)
- 8-port 10GigE module, Avid
PN 7030-65533-00 10GbE optical SFP+ 850 nm meters maximum distance.
Cisco p/n SFP-10G-SR= The minimum cable length for -LR and -SR transceivers is 2 meters.
Cisco Nexus 9372-PX F2, F5, F5 NL, PRO+ 7.0 (3) I1 (3) All 9372 switches have and PXE (SFP+ based) (see "Switch Speeds 6x40Gbps QSFP+ ports plus for Avid NEXIS F- 48x1/10Gbps ports Series" on page 11) For 40Gbps use, see "40GbE E2, E4, E5, Switch Operation" on page 18.
E2 SSD, E5 NL, PRO Cisco Nexus 9372-TX All E-series, PRO, SDA 7.0 (3) I1 (3) For 40Gbps use, see "40GbE and TXE (RJ-45 based) Switch Operation" on page 18.
Cisco Nexus 9372-PX E5, E2 SSD 7.0 (3) I1 (3) For 40Gbps use, see "40GbE and PXE, and TX and Switch Operation" on page 18.
TXE (40Gbps), with the Cisco 40GBASE-CR4 Passive Copper cable (QSFP-H40G-CU5M) Cisco Nexus All F-series, PRO+, BIOS: 05.19 Up to 32x40/50Gbps QSFP+ SDA+ (see "Switch ports, or 18x100Gbps QSFP28 93180LC-EX NXOS: 7.0(3)16(1) Speeds for Avid NEXIS ports F-Series" on page 11) For 40Gbps use, see "40GbE All E-series, PRO, SDA Switch Operation" on page 18.
Cisco Catalyst 4900M E2, E4, E5 NL, PRO Rommon 12.2(44r)SG 20x1Gbps (RJ-45), WS-X4920- (Layers 2 and 3) (and later) GB-RJ45, and/or 4x10Gbps 2 Qualified and Approved Switches for Avid NEXIS Vendor and Model Avid NEXIS Models Minimum Firmware Description and Approved or Network OS Blades IOS: 12.2 (46)SG (and (X2/SC)WS-X4904-10GE later) 8x10Gbps (X2/SC) Supported options:
20-port 1GbE copper module, p/n WS-X4920-GB-RJ45 4x10GbE port add-in module for 4900M base unit 10GBASE-SR 850nm X2 Module/Single Transceiver, Cisco p/n X2-10GB-SR 10GBASE-LR 1310nm X2 Module/Single Transceiver, Cisco p/n X2-10GB-LR SC connector X2 = Cisco X2- 10GB-SR for MMF SC connector X2 = Cisco X2- 10GB-LR for SMF Cisco Catalyst 4948E E2, E4, E5 NL, PRO Rommon: 12.2 48x1Gbps (RJ45) (Layers 2 and 3) (44r)SG8 (and later) 4x10Gbps (SFP+/LC) IOS: 12.2 (54)SG (and Supported options:
later) 10GbE optical SFP+ 850 nm laser compatible with 50 micron MMF cable; 300 meters maximum distance.
Cisco p/n SFP-10G-SR= The minimum cable length for - meters.
Cisco Catalyst 4948- E2, E4, E5 NL, PRO Rommon: 12.2(31r)SGA 48x1Gbps (RJ45) 10GE (Layers 2 and 3) (and later) 2x10Gbps (X2/SC) IOS: 12.2 (25) EWA8 (and later) Cisco Nexus 7000 series E2, E4, E5 NL, PRO BIOS 3.19.0 (and later) 48-port 10Gbps/1Gbps module (Layers 2 and 3) (optical) N7K-F248XP-25E
> **Note:** TheCiscoNexus7000series
canbeconfiguredtomeeta widevarietyofcombinations of1,10,and40GbE connections.Dependingon 2 Qualified and Approved Switches for Avid NEXIS Vendor and Model Avid NEXIS Models Minimum Firmware Description and Approved or Network OS Blades thebaseunit,therearefrom 4to18slotsthatallowfor supervisormodulesandup to16I/Omodulesofferinga varietyofports(including SFP+withXLoption).
Kickstart 4.2(4) (and 24-port 10Gbps module (optical) later) N7K-M224XP-23L System 4.2(4) (and 48-port 1Gbps copper N25- later) C2248TP-E-1GE CMP BIOS 02.01.05 48x1Gbps module (copper) N7K- (and later) M148GT-11 CMP Image 4.2(1) (and 32x10Gbps module (optical) supported running over-subscription) N7K-M108x2 Dell EMC PowerSwitch F2, F5 NL, PRO+ 6.3.0.18 and later 24x1GbE (RJ45) N3024, N3024E E2, E4, E5 NL, PRO 2x1GbE SFP ports 2x10GbE SFP+ ports 1 slot for 2-port 10GbE SFP+ or 10GBASE-T module Supported options:
10GigE, SFP+, single transceiver, LR, 1310nm SFP 1000Base-Sx 850nm. 1GbE optical transceiver (Avid PN 7070-30584-00) SFP+ (LR) 1300 nm (Avid PN 7070-30583-00) SFP+ (SR) 850 nm For Dell PowerSwitch 3000:
Spare SFP+ 2-port 10GbE module (spare, no optics, no cables) (Avid PN 7030-65530-00) Dell EMC PowerSwitch F2, PRO+ (see 9.8(0.0P5) 48x10GbE/1GbE/100Mb (RJ45) S4048T-ON "Switch Speeds for Avid NEXIS F-Series" on page 11) E2, E4, PRO 2 Qualified and Approved Switches for Avid NEXIS Vendor and Model Avid NEXIS Models Minimum Firmware Description and Approved or Network OS Blades Dell EMC PowerSwitch F2, F5 NL, PRO+ (see FTOS 8.3.7.0 (and 48x1Gbps SFP or 10Gbps SFP+ S4810 "Switch Speeds for later) Avid NEXIS F-Series" on page 11) E2, E4, E5 NL, PRO F5 (see "Switch 4x40GbE Speeds for Avid NEXIS F-Series" on page 11) E5, E2 SSD, Dell EMC PowerSwitch E2, E4, E5 NL, PRO 48x100Mbps/1Gbps/10Gbps S4820T (RJ45) E5, E2 SSD 4x40GbE Dell EMC PowerSwitch E2, E4, E5 NL, PRO 24x10GbE RJ45 auto-sensing N4032 (10GbE/1GbE/100Mb) fixed ports 1 hot swap expansion module bay Dell EMC PowerSwitch E2, E4, E5 NL, PRO 24x10GbE SFP+ (10GbE/1GbE) N4032F fixed ports 1x hot swap expansion module bay Dell EMC PowerSwitch E2, E4, E5 NL, SDA, FTOS 8.3.3.4 (and 48x1GbE (RJ-45) S60 PRO later) Two slots for 10GbE SFP+ or 24GbE stacking modules Two 10GbE SFP+ ports per module (SFP+/LC) Dell EMC PowerSwitch All F-series, PRO+, 9.8 or later 48 dual-speed 1/10GbE (SFP+) S4048-ON SDA+ (see "Switch ports and six 40GbE (QSFP+) Speeds for Avid NEXIS uplinks (totaling 72 10GbE ports F-Series" on page 11) with breakout cables) with OS support.
All E-series, PRO, SDA Supported options for S4048:
GP-SFP2-1T single 1GigE RJ45 Copper transceiver (407-BBTS) Supported options for S4048- ON:
GP-SFP2-1T single 1GigE RJ45 Copper transceiver (407-BBTS), Avid PN 7070-35076-00 10GigE, SFP+, single, transceiver, SR, 850nm, Avid PN 7070- 30026-01 2 Qualified and Approved Switches for Avid NEXIS Vendor and Model Avid NEXIS Models Minimum Firmware Description and Approved or Network OS Blades 10GigE, SFP+, single transceiver, LR, 1310nm QSFP+ SR Optic, 40GbE (100- 150m) (Avid PN 7070-35041-00) The Dell EMC PowerSwitch S4048 switch supports a mix of 10GbE SFP+ (optical) and 10GBASE-T (copper) connection types. However there are minimum firmware requirements and restrictions on how many 10GBASE-T devices are supported, and in which locations. Consult your Dell documentation for more information.
NETGEAR XS712T PRO 6.1.0.34 or later 12x1/10GbE RJ45 (Copper), or 2x10GbE SFP+ plus 10x1/10GbE RJ45 (ports 11 and 12 are dual- purpose; can be used either as SFP+ or RJ45) Supported options (for both X712T and X716T):
AXM761-10000S: 10GBase-SR short-range SFP+ LC transceiver module AXC761-10000S: 10GSFP+ Cu (passive) cable with SFP+ connectors on both ends, 1m (3.3 ft) AXC763-10000S: 10GSFP+ Cu (passive) cable with SFP+ connectors on both ends, 3m (9.8 ft) Gigabit SFP+ Dual Port Network Connections and Avid Adaptive Load Balancing (AALB) Dual 1-GbE, 10-GbE, and 40-GbE Ethernet connections allow you to use a dual-attached client for redundancy and performance enhancements. Each port is configured separately. The NICs in dual connected clients must be the same speed and on the same subnet for redundancy.
> **Note:** LinuxdoesnotsupportmultipleNICsonthesamesubnet.
2 Qualified and Approved Switches for Avid NEXIS Avid NEXIS uses Avid Adaptive Load Balancing (AALB) for optimizing client performance when using dual NICs configured in Avid NEXIS Client Manager.
When using a dual port configuration, make sure both ports are enabled in the Client Manager Network Interface Settings and the network properties (see the AvidNEXISClientGuidefor more information). Avid Adaptive Load Balancing is automatically configured when both ports are enabled. No additional actions are required.
Flow Control Required in Avid Production Networks Avid requires configuring Rx Flow Control (LFC) Enabled on the switch that connects to Avid NEXIS Engines and clients. The client or Engine sends 'pause frame' requests to throttle the send rate to avoid overwhelming the IP stack on the client or Engine, which results in buffering at the switch during these short pauses.
Many network switches have Rx Flow Control enabled by default. Consult your switch documentation to verify your switch’s settings.
Long-Range Optics LR-4 optics are supported for connecting the Avid NEXIS models that support 40GbE operation using long range, 1310 nm optics, to a switch. Use the Mellanox MC2210511-LR4 Optical Module, with a minimum firmware version of 2.42.5000, in the Engine’s Mellanox 40GbE NIC. Some Avid NEXIS | E5 Engines ship with this version.
To convert an existing engine to LR-4 optics, confirm it has the minimum firmware revision, as follows:
1. Connect to the Engine Agent (https://<engine name or IP>:5015).
2. Click the Advanced tab.
3. In the Issue Shell Command field, enter the following: ethtool -i gt0
If the response says firmware-version: 2.42.5000 or higher, you can use LR-4. If the version is lower than that, contact Avid Customer Care if you want to use LR-4.
Connecting the Engine to a Switch See the AvidNEXISSetupandMaintenanceGuidefor your model for information on connecting to a switch, with and without LACP.
To connect the Avid NEXIS to a switch, you will need one or two transceivers or direct attach (Twinax) cables per Controller (if using redundant Controllers), depending on whether you are using link aggregation (LACP).
40GbE Switch Operation Cisco Switches For Avid NEXIS Engines that connect to Cisco 9372 (legacy) and 93180 (legacy) series switches at 40GbE (Avid NEXIS | E5 and Avid NEXIS | E2 SSD), you might need to force 40GbE operation using the following port level commands:
speed 40000 no negotiate auto Dell S4100 Switches For Avid NEXIS Engines that connect to Dell S4100 series switches at 40GbE, enter the following commands:
interface breakout node/slot/port map 40g-1x 2 Qualified and Approved Switches for Avid NEXIS
> **Note:** For40GbEuplinktoanintermediaryswitch(forexample,toaDellS4048-ON),youmayneedtoturn
offnegotiationontheuplinkporttoenabletheswitchestolink.
Dell S4100 series switches might use a Port Profile that prevents configuring the switch for 40GbE operation. You can change the Port Profile using the following command, where #is the profile number (Profiles 2 - 6 support 40GbE operation):
switch-port-profile node/unit profile-# Run the write memory command to save the change, then run reload for the change to take effect. For more information, see Dell EMC Networking Documentation: Port Profiles.
Dell S5200 Switches The 25/10/1GbE based ports are grouped in fours and the default configuration is 25GbE, which in the switch settings is called “mode Eth 25g-4x.” To run those ports at 10 or 1GbE, change the port group to “mode Eth 10g-4.” To change the 100GbE ports to 40GbE, change the setting from “mode Eth 100g-1x” to “mode Eth 40g1x.” Configuring Switches for LACP Avid NEXIS v7.0 and higher supports enabling LACP on the Ethernet ports on the Controllers. See the Avid NEXIS Administration Guide for more information.
Before enabling LACP, make sure both Ethernet ports on the Controllers are connected to one or more switches that support, and are configured to accept, using link aggregation groups (LAGs).
Switch vendors refer to this feature using different terminology:
Vendor Terminology Arista, Dell EMC PowerSwitch N-Series, Juniper Networks Multi-chassis link aggregation (MLAG) Dell EMC PowerSwitch S-Series Virtual Link Trunking (VLT) Cisco Nexus Virtual PortChannel (vPC) Cisco Catalyst Virtual Switching System (VSS) NETGEAR Notsupported Consult your switch vendor documentation for steps on how to enable or configure link aggregation on your switches.
Two High Performance Media Packs in a paired Avid NEXIS | F2 and Avid NEXIS | F2X configuration use more aggregate bandwidth than a 1 x 10GbE connection can support. You must use 25GbE for single Controllers, or dual 10 or 25GbE connections (with LACP) for single or dual Controllers.
To maximize the bandwidth required for High Performance Media Packs, connect them to a switch as follows:
- 2 x 10GbE with LACP enabled on the single or dual Controllers in the Avid NEXIS | F2
- 1 x 25GbE with no LACP configured, or 2 x 25GbE with LACP configured on the single or dual
Controllers in the Avid NEXIS | F2 3 Supported Network Components and Cables 3 Supported Network Components and Cables The cables and components described in this section pertain to Avid Engines and switches used in the Avid workgroup environments. Use these guidelines when connecting your clients and workstations to the workgroup.
Supported Network Interface Cards Avid sells or supports the following network interface cards (NICs) for use in client systems that will connect to an Avid NEXIS system.
For NICs suitable for Avid products in a VM deployment, see the virtualization guide for that product.
g SeetheAvidNEXISReadMeforthecurrentlysupportedAvidNEXISandclientoperatingsystem versions,availableintheAvidNEXISDocumentationKnowledgeBase.
Notes:
1. Any vendor-branded NIC using the same chipset as that listed here is considered a suitable
substitute.
For all ATTO NIC driver installations, select “Use optimized network settings.” Make sure you are 2.
running the latest firmware version. Get the latest driver from ATTO (atto.com).
Apple/Aquantia and Sonnet NICs are not supported with Avid ISIS.
3.
Vendor/Model Operating Interface Bus Type Notes System (See Note 1) Apple/Aquantia macOS 15 1x10GbE 10GBaseT Default on-board 10/1GbE NIC in iMac Pro See Note 3.
1,1 and mac mini 8,1 and Mac Pro 7,1 for 1 or 10GbE connections to Avid NEXIS for use with Media Composer.
For more detailed information, see theMac CurrentCPU Specificationsdocument on the Avid Qualified Systems and IO Hardware Knowledge Base ATTO Windows and 1 or 2x40GbE PCI x16 Supports up to 100GbE Windows QSFP+ using QSFP28, but is not FFRM-N311/N312 Server performance optimized.
macOS 15 Use the 40Gb resolution setting in the Avid NEXIS Client Manager for 40GbE or higher.
3 Supported Network Components and Cables Vendor/Model Operating Interface Bus Type Notes System (See Note 1) See Note 2.
ATTO Windows and 2x10GbE SFP+ PCI x8 Supports 25GbE Windows operation using SFP28.
FFRM-N322 Server See Note 2.
CentOS ATTO Windows and 1 or 2x40GbE PCI x8 Supports up to 50GbE Windows QSFP+ operation using QSFP+.
FFRM-N351/N352 Server See Note 2.
Use the 40Gb resolution setting in the Avid NEXIS Client Manager for 40GbE or higher.
ATTO Windows and 1 or 2x40GbE PCIe x8 See Note 2.
Windows QSFP+ FFRM-NQ41 CentOS: Use the latest Server “in-box” drivers available FFRM-NQ42 CentOS within the kernel.
ATTO Windows and 1 or 2x10GbE SFP+ PCIe x8 See Note 2.
Windows Server CentOS ATTO Windows 1 or 2x10GbE PCIe x8 See Note 2.
10GBaseT FFRM-NT 11 CentOS ATTO Windows 11 40/50/100GbE PCIe 4.0 See Note 2. Load Avid Profile via ATTO 360.
FFRM-N412 ATTO macOS 40/50/100GbE PCIe 4.0 See Note 2. Load Avid 13, 14, 15 Profile via ATTO 360.
FFRM-N412 ATTO Windows 11 10/25GbE PCIe 3.0 See Note 2. Load Avid Profile via ATTO 360.
FFRM-N422 ATTO macOS 1 or 2x10GbE SFP+ Thunderbolt 3 See Note 2.
TLN3-3102 ATTO macOS 2x40GbE QSFP+ Thunderbolt 3 Bandwidth limited by TB3 bus.
TLNQ-3402 See Note 2.
ATTO macOS 1 or 2x10GbE SFP+ Thunderbolt 3 See Note 2.
TLNS-3102 3 Supported Network Components and Cables Vendor/Model Operating Interface Bus Type Notes System (See Note 1) ATTO macOS 15 SFP+ with all Thunderbolt 3 See Note 2.
supported Avid TLNS-3252 NEXIS Client connection types ATTO macOS 1 or 2x10GbE Thunderbolt 2 See Note 2.
10GBaseT TLNT-2102 Avid P/N: 7030-72024- Intel Converged Windows 2x1GbE RJ-45, PCIe x8 Use OS-specific driver for Ethernet X540-T2 2x10GbE RJ-45 Windows.
CentOS Intel Converged Windows 2x10GBase-T PCIe x8 (Gen 3) Use OS-specific driver for Ethernet X550 Windows.
Intel Converged Windows and 2x10GbE SFP+ PCIe x8 Use OS-specific driver for Ethernet X710 Windows Windows or CentOS.
Server CentOS Intel Converged Windows and 2x10GbE SFP+ PCIe x8 Driver available from HP Ethernet X710DA2 Windows website in support under Server Z840 & Z8 G4 platforms.
Intel E810-XXVDA2 Windows 10, 11 25/10GbE: SFP+ PCIe 4.0 x8 (10Gb) or SFP28 (10 or 25Gb) Intel i350, v1 and v2 Windows and 1, 2, or 4x1GbE RJ- PCIe x4 Use OS-specific driver for Windows 45 or SFP Windows or CentOS.
Server CentOS Intel QUAD PORT For ISIS 5500 direct Ethernet i340 attach clients Supported for Avid ISIS systems running version 4.7.x.
Avid P/N: 7030-30346-01 Intel X722 Windows and 1 or 2x1Gb, 1 or PCIe x8 Driver available from HP Windows 2x10GbE add-in website in support under Server option for HP Z6 Z8 G4 platforms. Add-in and Z8 G4 card only available for HP Z6 & Z8 platforms Nvidia/Mellanox Windows 10, 11 10/25GbE PCIe 4.0 Use in-box driver.
ConnectX-6 Dx Sonnet 10G Solo Windows and 1x10GbE 10GBaseT Thunderbolt 3 See Note 3.
3 Supported Network Components and Cables Vendor/Model Operating Interface Bus Type Notes System (See Note 1) (with Thunderbolt 3) Windows Download driver from Server www.sonnettech.com and latest Thunderbolt software for Windows from Intel.
SFP+ Windows When using Sonnet Server Twin10G SFP+ on macOS 15 clients, do not load the latest kext driver package.
SFP+ Windows Use the built-in Server (with Thunderbolt 3) Apple dext driver macOS 15 instead.
Windows 10GBaseT (with Thunderbolt 3) Server macOS Transceivers and Cables Avid sells the following transceivers, cables, and adapters.
10GbE SFP+ Optical Transceivers Avid Part Number Description 9900-65632-00 Optical 10Gbps transceiver. 10GbE Ethernet SFP+ LC 300m range, SR 850nm wavelength (Default for 10G optical short range) 9900-65652-00 Optical 10Gbps transceiver. 10GbE Ethernet SFP+ LC 10km range, LR 1310nm wavelength 9635-70654-00 ATTO.FF.NS12.LC.SFP+ ATTO FastFrame NS12 LC SFP+ SR Optical Interface - Dual Port 10GbE PCIe 2.0 Network Adapter (includes SFPs) 9635-70654-00 ATTO.FF.N352-DA0 ATTO FastFrame N352 QFP28 Optical Interface - Dual Port 10/25/40/50GbE PCIe 3.0 Network Adapter 10GbE SFP+ Direct Attach Cables (Twinax) Avid Part Number Description 7070-30615-01 Dell Direct Attach 10G Cable. Copper 10GbE SFP+ twinax cable, 1 meter 7070-30615-03 Dell Direct Attach 10G Cable. Copper 10GbE SFP+ twinax cable, 3 meter 3 Supported Network Components and Cables Avid Part Number Description 7070-30358-01 Cisco 10G SFP+ direct attach cable (twinax) 1 meter 7070-30358-03 Cisco 10G SFP+ direct attach cable (twinax) 3 meter 7070-30358-05 Cisco 10G SFP+ direct attach cable (twinax) 5 meter 7070-35252-00 Optical Transceiver SFP+ for 10GBASE-SR (Mellanox MFM1T02A-SR) For use with Avid NEXIS F-Series, SDA+, PRO+ 7070-35253-00 Optical Transceiver 25GbE SFP28 LC-LC SR (Nvidia/Mellanox MMA2P00-AS) For use with Avid NEXIS F-Series, SDA+, PRO+ 7070-35254-00 Optical Transceiver 25GbE SFP28 LC-LC LR (Mellanox MMA2L20-AR) For use with Avid NEXIS F-Series, SDA+, PRO+ 7070-35255-00 Optical Transceiver 100GbE QSFP28 MPO SR4 (Mellanox MMA1B00-C100D) For use with Avid NEXIS F-Series, SDA+, PRO+ 7070-35256-00 DAC Splitter Cable Ethernet 100GbE to 2x50GbE (Mellanox MCP7H00-G003R26N) For use with Avid NEXIS F-Series, SDA+, PRO+ 7070-35257-00 AOC Splitter Cable Ethernet 100GbE to 2x50GbE (Mellanox MFA7A20-C010) For use with Avid NEXIS F-Series, SDA+. PRO+ 7070-35258-00 DAC Splitter Cable Ethernet 100GbE to 4x25GbE (Mellanox MCP7F00-A003R26N) For use with Avid NEXIS F-Series, SDA+. PRO+ 7070-35259-00 DAC Cable Ethernet 25GbE SFP28 (Mellanox MCP2M00-A003E26N) For use with Avid NEXIS F-Series, SDA+. PRO+ 7070-35260-00 DAC Cable Ethernet 10GbE SFP+ (Mellanox MC3309130-003) For use with Avid NEXIS F-Series, SDA+. PRO+ 40GbE SFP+ Direct Attach Cables (Twinax) Avid Part Number Description 7070-35070-00 40GbE QSFP MPO connector Optic SR (300m, Short Range) for E5 & E2 SSD controller (Mellanox MC2210411-SR4E) 7070-35071-03 Avid NEXIS 40GbE QSFP passive copper cable, 3m (Mellanox MC2210128-003) 7070-35071-05 Avid NEXIS 40GbE QSFP passive copper cable, 5m (Mellanox MC2210126-005) 100GbE Cables and Transceivers Avid Part Number Description (For use with Avid NEXIS | F2 SSD) N/A Nvidia MMA1B00-C100D Optical Transceiver 100GbE QSFP28 MPO SR4 7070-35281-00 Nvidia MCP1600-C003E26N DAC Cable Ethernet 100GbE QSFP28 3m 7070-35282-00 Nvidia MFA1A00-C010 AOC Cable Ethernet 100GbE QSFP 10m 3 Supported Network Components and Cables Miscellaneous Avid Part Number Description 9900-65653-00 Spare QSFP to SFP+ adapter (QSA) for Avid NEXIS | PRO and E5 NL controller 10 Gigabit Ethernet interface 7070-35192-00 SAS cable for connecting F2 and F2X (two cables are included with each F2X) Patch Cables When planning your cable routes, make sure your cables cannot be damaged by traffic or moving objects.
The network interface ports in Avid NEXIS systems work with any cable supported by the vendor for their switches.
> **Note:** CallAvidCustomerSupportforsupportedcableandaccessoryinformation.Forcableconnections,
seetheAvidNEXISSetupandMaintenanceGuideforyourproduct.