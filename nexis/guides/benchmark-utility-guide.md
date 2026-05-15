---
product: nexis
product-area: shared-storage
version: "current"
release-date: 01/01/current
doc-type: admin-guide
source: pdf
confidentiality: public
date-added: 15/05/2026
status: current
---

The following disclaimer is required by Videomedia, Inc.:
“Videomedia, Inc. makes no warranties whatsoever, either express or implied, regarding this product, including warranties with respect to its merchantability or its fitness for any particular purpose.” “This software contains V-LAN ver. 3.0 Command Protocols which communicate with V-LAN ver. 3.0 products developed by Videomedia, Inc. and V- LAN ver. 3.0 compatible products developed by third parties under license from Videomedia, Inc. Use of this software will allow “frame accurate” editing control of applicable videotape recorder decks, videodisc recorders/players and the like.” The following disclaimer is required by Altura Software, Inc. for the use of its Mac2Win software and Sample Source Code:
The following disclaimer is required by Interplay Entertainment Corp.:
The “Interplay” name is used with the permission of Interplay Entertainment Corp., which bears no responsibility for Avid products.
This product includes portions of the Alloy Look & Feel software from Incors GmbH.
This product includes software developed by the Apache Software Foundation (http://www.apache.org/).
This product may include the JCifs library, for which the following notice applies:
JCifs © Copyright 2004, The JCIFS Project,is licensed under LGPL (http://jcifs.samba.org/). See the LGPL.txt file in the Third Party Software directory on the installation CD.
Avid Interplay contains components licensed from LavanTech. These components may only be used as part of and in connection with Avid Interplay.
Avid, the Avid Logo, Avid Everywhere, Avid DNXHD, Avid DNXHR, Avid NEXIS, Avid NEXIS | Cloudspaces, AirSpeed, Eleven, EUCON, Interplay, iNEWS, ISIS, Mbox, MediaCentral, Media Composer, NewsCutter, Pro Tools, ProSet and RealSet, Maestro, PlayMaker, Sibelius, Symphony, and all related product names and logos, are registered or unregistered trademarks of Avid Technology, Inc. in the United States and/or other countries. The Interplay name is used with the permission of the Interplay Entertainment Corp. which bears no responsibility for Avid products. All other trademarks are the property of their respective owners. For a full list of Avid trademarks, see: http://www.avid.com/US/about-avid/legal-notices/trademarks.
Avid NEXIS Benchmark Utility User’s Guide • Revised February 2022 • This document is distributed by Avid in online (electronic) form only, and is not available for purchase in printed form.
Using This Guide The Avid NEXIS shared storage network provides a high-performance distributed file system that contains high-capacity shared media storage for workgroups of connected devices. Unless noted otherwise, the material in this document applies to the Windows® operating systems.
> **Note:** The documentation describes the features and hardware of all models. Therefore, your system might
not contain certain features and hardware that are covered in the documentation.
Who Should Use This Guide This guide is intended for system administrators responsible for the setup and day-to-day management of an Avid NEXIS shared storage network, as well as for users who need to access Workspaces on the network. You should have a basic understanding of how to use and manage the Windows® operating system and you should be familiar with basic workgroup and network concepts.
Symbols and Conventions Avid documentation uses the following symbols and conventions:
Symbol or Convention Meaning or Action
> **Note:** A note provides important related information, reminders, recommendations,
and strong suggestions.
A caution means that a specific action you take could cause harm to your computer or cause you to lose data.
A warning describes an action that could cause you physical harm. Follow w the guidelines in this document or on the unit itself when handling electrical equipment.
> This symbol indicates menu commands (and subcommands) in the order you select them. For example, File > Import means to open the File menu and then select the Import command.
This symbol indicates a single-step procedure. Multiple arrows in a list indicate that you perform one of the actions listed.
(Windows), (Windows only), This text indicates that the information applies only to the specified operating (Macintosh), or (Macintosh system, either Windows or Macintosh OS X.
only) Bold font Bold font is primarily used in task instructions to identify user interface items and keyboard sequences.
Italic font Italic font is used to emphasize certain words and to indicate variables.
Courier Bold font identifies text that you type.
Courier Bold font Ctrl+key or mouse action Press and hold the first key while you press the last key or perform the mouse action. For example, Command+Option+C or Ctrl+drag.
If You Need Help Symbol or Convention Meaning or Action | (pipe character) The pipe character is used in some Avid product names, such as Interplay | Production. In this document, the pipe is used in product names when they are in headings or at their first use in text.
If You Need Help If you are having trouble using your Avid product:
1. Retry the action, carefully following the instructions given for that task in this guide. It is
especially important to check each step of your workflow.
2. Check the latest information that might have become available after the documentation was
published.
New information is in the ReadMe document, available online.
Always check online for the most up-to-date release notes or ReadMe because the online version is updated whenever new information becomes available. To view the online versions, visit the Knowledge Base at www.avid.com/US/support.
3. Check the documentation that came with your Avid application or your hardware for
maintenance or hardware-related issues.
hours per day, 7 days per week. Search this online Knowledge Base to find answers, to view error messages, to access troubleshooting tips, to download updates, and to read or join online message-board discussions.
Accessing the Online Documentation The Avid online documentation contains all the product documentation in PDF format. You can access the documentation from the Avid support site: www.avid.com/US/support.
Avid Training Services Avid makes lifelong learning, career advancement, and personal development easy and convenient.
Avid understands that the knowledge you need to differentiate yourself is always changing, and Avid continually updates course content and offers new training delivery methods that accommodate your pressured and competitive work environment.
For information on courses/schedules, training centers, certifications, courseware, and books, please visit www.avid.com/support and follow the Training links, or call Avid Sales at 800-949-AVID (800-949-2843).
1 Configuring the Avid Benchmark Utility The Avid Benchmark Utility checks the connection between Avid NEXIS clients and the Avid shared storage network.
The Benchmark utility has two components:
• The Benchmark Utility is installed automatically only on Windows clients when you install the Avid NEXIS client software. The Utility (described in this guide) controls the Agents running on other Avid NEXIS client systems, and is the interface through which you configure actions (tests) and view the results reported by the clients.
• The Benchmark Agent is installed automatically on all clients (Windows, macOS, and Linux) when you install the Avid NEXIS client software. The Agent runs in the background and communicates with the Utility to receive test instructions and report its results.
Terminology Used in the Benchmark Utility The Benchmark Utility and this guide use the following terms:
• Action—The test being run on a client • Destination—The Avid shared storage system, or local storage, to which a client is connected • Host—A client running the Benchmark Agent in the background Qualified Operating Systems See the current Avid NEXIS ReadMe on the Knowledge Base for a list of the supported operating systems for Avid NEXIS clients.
Running the Benchmark Utility Running the Benchmark Utility By default, the Benchmark Agent is automatically installed on any system where the Avid Client software is installed. The agent is used for reporting the results of the test selected in the utility. If you customized your Client installation and did not automatically install the Benchmark Agent, you must install it. See the Avid NEXIS Client Guide for more information.
To run the Benchmark Utility:
1. On a Windows client system, click Start, Avid, Benchmark Utility.
2. If the Windows Security Alert dialog window appears, accept the default settings in the
Windows Firewall window to allow the Benchmark Utility to run.
> **Note:** You can access the Windows Firewall settings through the Windows Control Panel and delete or
change the setting.
Setting Benchmark Preferences You can set the following preferences for how the Benchmark Utility behaves.
• Auto Hosts discovery — If checked, the utility automatically discovers the available Benchmark Agents every time the utility starts.
> **Note:** Auto Hosts Discovery locates agents on the same subnet that this utility is running on and on
different subnets, if multiple network interfaces with different subnets are configured on the computer. To locate agents on a different subnet, use the Add Hosts feature; see “Configuring Benchmark Agent Discovery” on page 7.
• Check hosts on load — Scans the host status when you open a saved benchmark.
• Pre-create I/O sizes (MB) — Sets the I/O size used for pre-creating the file for read tests to 8, 16, 32, 64, or 128 MB.
• Hosts discovery using — Choose between Hostname or IP range. Sets the default discovery type that is presented when you click the Add Hosts button.
• Results Output — Saves the results of the test run in the utility to the location specified in the Path text box.
- Path: Specify the location on the local system where you want to save the results. The default location for Windows systems is C:\Users\UserName\AppData\Local\Avid\BenchmarkUtility\Report - Auto Zip: If checked, the utility automatically saves and compresses the results in a zipped file to the specified path.
Configuring Benchmark Agent Discovery • Network — Allows you to specify the system ports used for the network connections and how long to wait for a connection before timing out.
- Server port: Specify the port to be used on the server; the default is 5017 - Time out (seconds): Specify the amount of time allowed to make a connection with the server before the utility times out and fails the connection • Host — Specify the port for communicating over the network:
- TCP port: Specify the TCP port to be used on the client; the default is 5013 - UPD port: Specify the UDP port to be used on the client; the default is 5014 To set the Benchmark Preferences:
1. Open the Benchmark Utility.
2. Click the Display Benchmark Preferences button in the Benchmark Utility window.
The Benchmark Preferences dialog box opens.
3. Select your preferences.
4. Click the green check mark to apply the settings or the red X to close the dialog box without any
changes.
Configuring Benchmark Agent Discovery The Benchmark Hosts Discovery dialog box searches the network for clients running a Benchmark Agent.
> **Note:** If you want to run the Benchmark Utility against an Avid NEXIS system in a different subnet, add the
Avid NEXIS IP address or name to the list of Remote Hosts in the Client Manager. See the Avid Client Guide for more information.
Configuring Benchmark Agent Discovery To discover Benchmark Agents on the network:
1. Open the Benchmark Utility.
2. Click the Add Hosts button in the Toolbar.
The Benchmark Hosts Discovery dialog box opens.
3. Select the discovery method for finding the Agents from the “Discovered by” pull-down menu.
> **Note:** The Benchmark Utility reports only on clients that have the Benchmark Agent software installed
(included with the Avid NEXIS client software).
- Hostname — Enter the name of a host computer running the Avid NEXIS Client.
Type “Localhost” to discover the system you are using or enter a single IP address into the host name field.
- IP Range — Enter the starting and ending IP address range for the Benchmark Agents on the network.
4. Click “Start Discover.”
The Benchmark Utility searches the network for Benchmark Agents based on the Discovered by selection. The Host names and IP addresses are displayed in the Discovered Hosts list.
> **Note:** While discovering the clients by IP Range, you can press ESC to stop discovering. Wait a few
seconds until a clean-up is done before you continue.
5. Click the green check mark to add the hosts to the Configure Hosts panel, or click the red X to
close the dialog box without adding any host.
To clear the Discovered Hosts list:
- Click Clear.
To remove a Host from the Discovered Hosts list:
- Select a Hostname and click Delete.
Configuring Benchmark Agent Destinations Configuring Benchmark Agent Destinations Benchmark Agent Destinations are the Avid NEXIS shared storage systems to which clients are connected, or the local or external attached storage a client uses to store media files. You can create new agent destinations, delete existing agent destinations, and duplicate existing agent destinations.
To create agent destinations:
1. Open the Benchmark Utility.
2. Click the Display Destinations button in the Toolbar.
The Benchmark Destinations dialog box opens.
3. Click Add.
4. Select the Type of destination in the Details panel of the Benchmark Destinations dialog box.
- Local — Selects the local directory on the Benchmark Agent system. You can change this path by deselecting the predefined path option and specifying a new directory for the Benchmark Agent to run on the local system. Type a description for this destination in the Name text box.
- Avid NEXIS — Sets a destination to an Avid NEXIS system and requires you to enter client user information and a workspace to which the provided user account has read and write access.
5. Depending on the destination type selected, various user fields are displayed. Select your test
preferences in the Details pane.
- Name — Type a name for the destination that describes the connection - Path (Local type if “predefined” is unchecked) — Type a directory path where to run the specified action on the local system Configuring Benchmark Agent Destinations - Server (Avid NEXIS type) — Type the hostname of the Avid NEXIS System Director to which you are connecting - User (Avid NEXIS type) — Enter your Avid NEXIS client user name - Password (Avid NEXIS type) — Enter your Avid NEXIS client user password - Workspace (Avid NEXIS type) — Click the Retrieve Workspaces button and select a Workspace or enter the name of the workspace to which you want to connect. Your user account must have access privileges to that workspace.
> **Note:** Make sure that your local Avid NEXIS Client can access the Workspaces with the user account.
- Use UNC mapping (Avid NEXIS type – Windows only) —Select this option to use UNC paths to map workspaces instead of drive letters (for example, \\myMachine\ myShareFolder\subfolder).
6. Click the green check mark to apply the settings or the red X to close the dialog box without any
changes.
To duplicate an existing destination:
- Select the destination and click Duplicate.
To remove a destination:
- Select the destination and click Delete.
2 Configuring and Running Tests To test clients, you configure and run Benchmark Actions. The Benchmark Actions dialog box allows you to create new actions, delete existing actions, and duplicate existing actions.
Suggested Tests Avid suggests the following tests for different client connection speeds.
Parameter Value for Client Speed:
1 Gb, 2x1 Gb, 1 Gb, 2x1 Gb, Parameter 10 Gb, 2x10 Gb 40GbE 10 Gb, 2x10 Gb 40GbE I/O type Read Read Write Write I/O method Sequential Sequential Sequential Sequential File size (MB 1024 1024 5120 5120 Transfer size (KB) 32768 65536 32768 65536 Transfer rate (KB/s) Unlimited Unlimited Unlimited Unlimited Keep file after test Yes Yes No No Creating Tests You can create custom tests, and modify the predefined tests.
To create or edit or tests (actions):
1. Open the Benchmark Utility.
2. Click the Display Actions button in the Toolbar.
The Benchmark Actions dialog box opens. The Unlimited Read and Unlimited Write actions are predefined for you.
Creating Tests
3. Click Add.
4. Select your test preferences in the Details pane.
> **Note:** The Transfer size should never be higher than the Transfer rate.
- Name — Type a name that describes the action.
- I/O type — Read, Write, Read/Write, or Combine - Outstanding I/Os — Enter the number simultaneous I/Os that are sent from a host at one time (1 to 20) - Combine actions (displayed only if I/O Type is Combine) — Select a predefined combination test (Unlimited Read or Unlimited Write) or create your own.
- I/O method — Random or Sequential MB - Transfer rate (KB/s) — 1 Mb/s, 1 MB/s, 3MB/s, 4 MB/s, 8 MB/s, or Unlimited - I/O Read percentage (displayed only if I/O Type is Read/Write) — Enter a value from 0 to 100 (default is 50)
5. Click the green check mark to apply the settings or the red X to close the dialog box without any
changes.
To duplicate an existing text:
- Select the test (action) and click Duplicate.
Configuring the Clients to Test To remove a test:
- Select the test (action) and click Delete.
Configuring the Clients to Test You must specify the client or clients you want to test, and which tests to run on those clients.
To configure a client:
1. Open the Benchmark Utility.
2. Add hosts manually (if not already discovered or if auto discovery is disabled in the preferences,
see “Setting Benchmark Preferences” on page 6).
3. Select the agents to be configured from the Configure Hosts panel.
4. Click Configure Selected Hosts in the Configure Hosts panel.
The Benchmark Configuration dialog box opens.
5. In the Destination pane, select a destination you want to test. To add destinations, see
“Configuring Benchmark Agent Destinations” on page 9.
To edit the a Destination name, click the Display Destinations button next to the Name drop- down menu to open and edit the Destinations.
6. In the Action pane, select the type of test you want to run. To add Actions, see “Creating Tests”
on page 11.
To edit an Action name, click the Display Actions button next to the Name drop-down menu to open and edit the Action.
7. Click the green check mark to apply the settings or the red X to close the dialog box without any
changes.
Running Tests Running Tests The following procedure describes how to run tests.
To start a test:
1. Open the Benchmark Utility.
2. Selected one or more hosts from the Configure Hosts panel.
Click the “Select all hosts” button to select all the Hostnames.
3. Enable selected hosts from the Configure Hosts panel.
4. Select how long the tests will run (1, 2, 5, 10, 30, or 60 minutes).
5. (Option) Click the Loop check box to repeat the test indefinitely. When you select this option,
the test proceeds until you press the Stop button.
6. Click Run.
If no hosts are enabled, this button is disabled.
The test runs for the specified duration and then stops automatically. The elapsed time a test has been running and the remaining time are displayed in the Control area. If you selected the Loop option, the test runs indefinitely.
To stop a test:
- Click Stop.
If no actions are running, this button is disabled.
3 Viewing Test Results You can display the results for a specific host (client) or select All to see the aggregate of the hosts.
The Hosts drop-down menu controls which set of data to display on the graph. The graph of results over time can help obtain information about system performance. This section provides information to help you interpret test results displayed in the Results panel.
The following display is a normal unlimited read/write profile for an Avid NEXIS client.
Look for the following:
• Trends: Does the system perform at a consistent rate over time? Is there an upward or downward trend in performance measured over time? If you notice a trend, it might be helpful to perform testing over a longer period of time to determine if the trend continues over longer durations or if a recurring pattern emerges.
It is normal for the maximum read bandwidth to be greater than maximum write bandwidth.
• Patterns: Is there a momentary drop in performance that occurs at consistent or varied intervals?
Patterns can emerge as a result of implementation details and the configuration of a particular system (for example, caching strategies or physical memory), or they might indicate a load on a system that is occurring periodically.
• Changes in performance as load varies: What occurs when a subsystem is placed under a load by other users (or Benchmark Utility is running on another client)? It might be easier to observe these interactions by inspecting the plot of performance results over time.
Average Rate Calculation The average data rate is calculated over the duration of the test. This calculation includes the time the utility requires to open and to close the test files, so the test file size (which you can configure for custom tests) can affect the overall measured throughput.
Approximate Bandwidths Also, if the throughput is slow as the test is starting, this might be reflected in the average rate. For example, if the target bandwidth is 4.0 MB/s, the actual average rate calculated at the conclusion of the test might be 3.98 or 3.99 MB/s.
Measurement Strategy Throughput measurements are plotted periodically (every n seconds) and represent a snapshot of performance at the time of the plot. This is done to limit the amount of data that is plotted, which otherwise could include a very large number of data points. As a result, the performance graph could miss a momentary drop or increase or a peak in performance that occurs between plot points. The average rate calculation reflects the impact of such a dip or spike, even if the actual size of a momentary variation does not appear in the graph.
Test Result Interpretation If your results fall below optimal performance, check whether your bandwidth is limited. You can use the Management Console to check your user bandwidth and device bandwidth (see the Avid NEXIS Administration Guide). If your bandwidth requirements are greater than the reservations set in the Management Console, your Avid administrator can adjust the limits.
These results represent guidelines for Avid-qualified systems; performance on your system might vary.
Approximate Bandwidths The following table lists the approximate bandwidths for client connections to a single Avid NEXIS Engine.
Bandwidth (MBytes/sec) Workload Network Windows 10 macOS Linux 2x1GbE 220 220 Not supported 2x10GbE 2012 2024 Not supported 1x40GbE 4475 4486a 3127 2x1GbE 212 215 Not supported 2x10GbE 2000 2230 Not supported 1x40GbE 4470 2755 3322 a. macOS client with Thunderbolt 3 adapter Viewing Results in a Browser or Graph Viewing Results in a Browser or Graph The Results panel provides the following buttons for displaying the results, explaining the graph lines, and linking you to the saved results files.
To view the test results in a browser window:
- Click the Display results summary button.
A browser opens to display the summary report, as shown below.
To open the Benchmark Results folder:
- Click the Display results folder button.
To view a legend for the graphs:
- Click the Show/Hide the graph legend button.
The graph legend is displayed.
Changing the Colors in the Results Panel Changing the Colors in the Results Panel You can customize the color, style, and thickness (width) of the lines in the results graphs, and what test results are displayed.
Not all results are visible by default and different tests have different result categories. For example, the read tests do not have results in the write category. When the Hide check box is checked, the results are not displayed in the graph. The default line style is a solid line and the width is set to 3.
The following table lists all the possible results and whether they are displayed by default.
Test Name Visible by Default Test Name Visible by Default Current Read Rate Yes Minimum Read Time No Current Write Rate Yes Maximum Read Time Yes Average Read Rate Yes Average Read Time No Average Write Rate Yes Minimum Write Time No Errors Count No Maximum Write Time Yes Current IO Count Per Sec No Average Write Time No To change the Graphic Properties:
1. Do one of the following:
- To change the properties for the whole graph, right-click in the Results panel and select
Properties (Ctrl-Alt-P) to open the Graph Properties dialog box.
- To change the properties for a specific line in the graph, double-click it to open a dialog box
for the selected line.
The Graph Properties dialog box opens.
Displaying Test Logs
2. Select your preferences in the Graph Properties dialog box:
- Double-click the color block to open the color panel.
- Select a line style.
- Select the line width from 1 to 10.
- Click the Hide check box to hide the line in the graph.
> **Note:** When the Hide check box is checked, you cannot change the line color, line style and line width.
- Click the revert arrow to revert the setting back to the defaults.
3. Click the green check mark to apply the settings or the red X to close the dialog box without any
changes.
Displaying Test Logs The Benchmark Utility displays the test logs in the bottom panel. The Logs are recorded any time a test is run and includes information, errors, and other mechanical messaging.
You can view the current log in the Log View section of the Benchmark Utility window. The log file is automatically deleted and a new one is started every time you open the Benchmark Utility. You can save a copy of the log or the log for the current work session.
All logs are cleared when you exit the Benchmark Utility, but Results are saved to the path specified in preferences.
By default, the logs are saved in C:\Users\UserName\AppData\Local\Avid\BenchmarkUtility\logs.
To view data in the logs:
1. Open the Benchmark Utility.
If the Log View area is not displayed, click the Show/Hide Log View button to display the panel.
The Log View area is the bottom section of the Benchmark Utility window. You can sort the list in the window by clicking the headings at the top of the Log View panel. Click the blue arrow to sort the fields in ascending or descending order.
Displaying Test Logs To save a copy of the Benchmark Utility log:
1. Click the Save all log messages to a file button.
2. Navigate to the folder where you want to save the log.
3. Type a name for file and save it.
To clear the log data in the Log View panel:
- Click the Clear all log messages button.