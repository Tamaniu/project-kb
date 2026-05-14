---
product: mediacentral-cloud-ux
product-area: newsroom-platform
version: "2025.10"
release-date: 01/10/2025
doc-type: process-modeler-guide
source: pdf
confidentiality: public
date-added: 14/05/2026
status: current
---

MediaCentral | Cloud UX™ Process Modeler User's Guide Version 2025.10 Permissionhasbeengrantedtocopy,distributeandmodifygdinanycontextwithoutfee,includingacommercialapplication,providedthatthisnoticeispresent inuser-accessiblesupportingdocumentation.
Thisdoesnotaffectyourownershipofthederivedworkitself,andtheintentistoassurepropercreditfortheauthorsofgd,nottointerferewithyourproductive useofgd.Ifyouhavequestions,ask."Derivedworks"includesallprogramsthatutilizethelibrary.Creditmustbegiveninuser-accessibledocumentation.
Thissoftwareisprovided"ASIS."Thecopyrightholdersdisclaimallwarranties,eitherexpressorimplied,includingbutnotlimitedtoimpliedwarrantiesof merchantabilityandfitnessforaparticularpurpose,withrespecttothiscodeandaccompanyingdocumentation.
Althoughtheircodedoesnotappearingd,theauthorswishtothankDavidKoblas,DavidRowley,andHutchisonAvenueSoftwareCorporationfortheirprior contributions.
ThisproductincludessoftwaredevelopedbytheOpenSSLProjectforuseintheOpenSSLToolkit(http://www.openssl.org/) MediaCentralmayuseOpenLDAP.Copyright1999-2003TheOpenLDAPFoundation,RedwoodCity,California,USA.AllRightsReserved. OpenLDAPisa registeredtrademarkoftheOpenLDAPFoundation.
U.S.GOVERNMENTRESTRICTEDRIGHTS.ThisSoftwareanditsdocumentationare“commercialcomputersoftware”or“commercialcomputersoftware documentation.”IntheeventthatsuchSoftwareordocumentationisacquiredbyoronbehalfofaunitoragencyoftheU.S.Government,allrightswithrespect tothisSoftwareanddocumentationaresubjecttothetermsoftheLicenseAgreement,pursuanttoFAR§12.212(a)and/orDFARS§227.7202-1(a),asapplicable.
Avid,theAvidLogo,AvidEverywhere,AvidDNXHD,AvidDNXHR,AvidNEXIS,AvidNEXIS|Cloudspaces,AirSpeed,Eleven,EUCON,Interplay,iNEWS,ISIS,Mbox, MediaCentral,MediaComposer,NewsCutter,ProTools,ProSetandRealSet,Maestro,PlayMaker,Sibelius,Symphony,andallrelatedproductnamesandlogos, areregisteredorunregisteredtrademarksofAvidTechnology,Inc.intheUnitedStatesand/orothercountries.TheInterplaynameisusedwiththepermissionof theInterplayEntertainmentCorp.whichbearsnoresponsibilityforAvidproducts.Allothertrademarksarethepropertyoftheirrespectiveowners.Forafulllistof Avidtrademarks,see:https://www.avid.com/legal/trademarks-and-other-notices.
AdobeandPhotoshopareeitherregisteredtrademarksortrademarksofAdobeSystemsIncorporatedintheUnitedStatesand/orothercountries.Appleand MacintosharetrademarksofAppleComputer,Inc.,registeredintheU.S.andothercountries.WindowsiseitheraregisteredtrademarkortrademarkofMicrosoft CorporationintheUnitedStatesand/orothercountries.Allothertrademarkscontainedhereinarethepropertyoftheirrespectiveowners.
Footage IceFestival,LondonZoo,FengShui-CourtesyofReuters.
availableforpurchaseinprintedform.
Using This Guide Using This Guide This documentation describes how to use the Avid MediaCentral | Cloud UX Process Modeler, the central tool for administrators to graphically design process models that can be used by the Asset Management Process Engine. This guide is intended for all users charged with maintaining MediaCentral Asset Management, specifically those who need to design, create and maintain the processes used by the Asset Management Process Engine. The guide contains all the task-oriented instructions and conceptual information you need to work with the Process Modeler.
> **Note:** All tasks described in this guide can only be performed by users with administrative privileges.
Important: See the following link on the Avid Knowledge Base for the latest updates to this guide and all related documentation:
https://kb.avid.com/articles/en_US/user_guide/MediaCentral-CloudUX-Documentation Revision History Date Revised Changes Made December 8, 2025 Updated "Defining Allowed Classes for Process Attachments" on page 41 and "Filters for Attachments" on page 41.
November 14, 2025 Initial release.
Symbols and Conventions Avid documentation uses the following symbols and conventions:
Symbol or Convention Meaning or Action
> **Note:** A note provides important related information, reminders, recommendations, and
strong suggestions.
A caution means that a specific action you take could cause harm to your computer or cause you to lose data.
This symbol indicates menu commands (and subcommands) in the order you select > them. For example, File > Import means to open the File menu and then select the Import command.
- This symbol indicates a single-step procedure. Multiple arrows in a list indicate that
you perform one of the actions listed.
Bold font Bold font is primarily used in task instructions to identify user interface items and keyboard sequences.
Italic font Italic font is used to emphasize certain words and to indicate variables. Variables are often enclosed in angled brackets: < >.
Courier Bold font Courier Bold font identifies text that you type.
Ctrl+key or mouse Press and hold the first key while you press the last key or perform the mouse action.
action For example, Command+Option+C or Ctrl+drag.
Using This Guide If You Need Help 1.
Retry the action, carefully following the instructions given for that task in this guide. It is especially important to check each step of your workflow.
2. Check the latest information that might have become available after the documentation was
published. You should always check online for the most up-to-date release notes or ReadMe because the online version is updated whenever new information becomes available. To view these online versions, select ReadMe from the Help menu, or visit the Knowledge Base at https://kb.avid.com/articles/en_US/user_guide/MediaCentral-CloudUX-Documentation.
3. Check the documentation that came with your Avid application or your hardware for maintenance or
hardware-related issues.
4. Visit the online Avid Knowledge Base. Online services are available 24 hours per day, 7 days per week.
Search this online Knowledge Base to find answers, to view error messages, to access troubleshooting tips, to download updates, and to read or join online message-board discussions.
Avid Training Services Avid makes lifelong learning, career advancement, and personal development easy and convenient. Avid understands that the knowledge you need to differentiate yourself is always changing, and Avid continually updates course content and offers new training delivery methods that accommodate your pressured and competitive work environment.
For information on courses/schedules, training centers, certifications, courseware, and books, please visit https://www.avid.com/learn-and-support and follow the Training links, or call Avid Sales at 800-949-AVID (800-949-2843).
1 Getting Started 1 Getting Started The following topics provide basic information to help you get started using Avid MediaCentral Cloud UX Process Modeler:
"MediaCentral | Cloud UX Process Modeler Overview" below
- MediaCentral | Cloud UX Process Modeler Overview
MediaCentral Asset Management supports business processes with Business Process Model and Notation (BPMN), a standardized way to graphically visualize and model business processes. Process definitions written in the BPMN language and saved as BPMN or XML Process Definition Language file (XPDL) can be parsed and read by the Asset Management Process Engine, an Asset Management backend component that executes the business processes so complex concepts of user activities and automated workflows can be applied with Asset Management.
Included in MediaCentral Cloud UX v2021.11 and later, the Process Modeler is the tool used for the graphical modeling of Asset Management processes. The Process Modeler app utilizes technology of bpmn.io. For more information on bpmn.io, see https://bpmn.io The following actions are required before a business process model can be used with Asset Management:
- Use Asset Management Datamodel Administrator to create the required process classes.
- Use Asset Management SWoDL Editor to create scripts.
- Use Asset Management Orchestration Monitor to upload the scripts to Asset Management.
- Use MediaCentral Cloud UX Process Modeler to create a process model in BPMN and save it as BPMN
or XPDL file.
- Use MediaCentral Cloud UX Process Modeler or Asset Management Orchestration Monitor to upload
the process model to the Asset Management Process Engine.
You can access the Process Modeler through the MediaCentral Cloud UX Administrator app.
Prerequisites for Using Process Modeler Each MediaCentral Cloud UX Administrator can access the Process Modeler in the MediaCentral Cloud UX Administrator app. But to use (load, activate) process models in the Process Modeler, you must be a member of an Asset Management administrator group that has one of the following group rights:
Administration/Platform_Administration or
- Administration/ProcessModelAdministration
- As an administrator you can review and assign these group rights in Asset Management User Manager. For
additional information, see the “MediaCentral | Asset Management User Manager User’s Guide” that is shipped with the software.
Process Modeler Features The Process Modeler provides the following features:
1 Getting Started Creates and saves new process models
- Opens and modifies existing process models
- Supports modelling using a BPMN 2 subset (Business Process Modelling Notation)
- Stores processes as BPMN or XPDL files
- Supports loading, editing, saving and uploading of processes with Asset Management
- Supports all BPMN features available in Asset Management
- Provides easy editing of Asset Management extensions
  - User and Script Task States
  - Metadata to/from Variable Mapping for Script Tasks
  - Localizable State and Action Labels
  - User Task Display
Note that you have the option to overwrite individual process or task properties of the process model by configuration without having to change the process model itself. For more information on how to change process properties by configuration in Asset Management Control Center’s Configuration Profiles view, see the MediaCentral | Asset Management Process Reference that is shipped with the software.
Basic Terms When working with Process Modeler you should be aware of the following basic terms:
Element Description Process Defined set of automated workflows and manual activities to achieve a specific goal.
A process defines the states, tasks, and the control flow that are used to achieve the goal.
Each process has exactly one start point and one end point.
Task Elementary step within a process that is carried out either automatically (based on a script) or by a user action.
The most important task types you will deal with are the following:
- User Task: A task that requires a user action and is completed by a user action.
- State Task: A point in the process where a new state or progress can be explicitly set
within the process model, and which is immediately completed by the Asset Management Process Engine. Cancel and Error tasks are specific State tasks.
- Script Task: A task that starts a script in the Asset Management Script Engine for
synchronous execution.
Event Trigger element for processes and tasks that are created by the Asset Management Process Engine.
Events are either generated by metadata changes to the process object, or by the Process Engine as part of driving the process. You will use three types of events: process start, process end and delay (event that waits for a specified amount of time or point in time).
Transition Connector element specifying the next element of the flow. There are three types of flows:
- Sequence Flow: May be applied when the flow condition is unambiguous.
- Conditional Sequence Flow: Connects elements specifying a condition. Conditional
flows can only emerge from Decisions and specify conditions for example based on a task state.
- Default Sequence Flow: Elements having conditional flows must have exactly one
default flow.
1 Getting Started Basic Workflow for Creating a Process Model When you design a process model in Process Modeler, the following tasks have to be performed:
To design a process model:
1. Create a new, empty process model.
2. Define the properties of the process.
3. Add process elements and arrange them.
4. Define the properties of events.
5. Define the properties of decisions.
6. Define the properties of transitions.
7. Define the properties of tasks.
8. (Option) Design and configure sub-processes.
9. Save and activate the process model.
The Process Modeler gives you complete freedom in the sequence in which you design your process model.
Steps 3 though 8 can be performed in any order.
Accessing the Process Modeler You can access the Process Modeler through the MediaCentral Cloud UX Administrator app.
To sign into MediaCentral Cloud UX and access the Process Modeler app:
1. (if applicable) Import a trusted certificate into your local workstation.
- If you are using a self-signed certificate or a certificate issued by an Internal CA, refer to the
process for “Importing TLS Certificates” in the Avid MediaCentral Cloud UX Installation Guide to import a trusted certificate.
- If you are using a certificate provided by a public CA, you can bypass this process and
proceed to the next step.
If you attempt to access MediaCentral Cloud UX without importing a certificate, you might see a security warning indicating that the connection is not private.
This warning relates to your Secure Sockets Layer (SSL) certificate and it is usually encountered if you are using a self-signed certificate or a certificate provided by an internal certificate authority.
With the introduction of Google Chrome v80, you must install a valid signed certificate to access the user interface for all versions of MediaCentral Cloud UX. Any attempt to bypass this security warning without a valid signed certificate is unsupported and could result in negative impacts to the user experience.
2. Launch a supported web browser on a Windows or macOS client.
For more information on supported browsers, see https://kb.avid.com/articles/en_ US/compatibility/Avid-Video-Compatibility-Charts.
3. As an administrator, you must access the MediaCentral Cloud UX Administrator apps to use the
Process Modeler app. Do one of the following:
- Enter the following URL in the browser’s address bar and press Enter.
https://<hostname> Then, click the Avid logo on the MediaCentral Cloud UX welcome screen.
1 Getting Started
- Enter the following URL in the browser’s address bar and press Enter:
https://<hostname>/admin Whenever connecting to MediaCentral Cloud UX, you must use the server’s FQDN.
The MediaCentral Cloud UX Administrator app welcome screen opens.
4. Enter your user name and password to access the MediaCentral Cloud UX user interface.
5. The first time any user signs in, the Avid Software License Agreement is presented.
Click the Accept License Agreement button to proceed.
6. Click the Process Modeler button on the Fast Bar.
The Process Modeler app opens.
Process Modeler Layout The Process Modeler’s User Interface consists of different panes and controls. The following illustration and table provide information about the main panes.
1 Getting Started Pane Description 1 Header Provides controls for selecting an Asset Management system; opening a model; creating a new model; closing the Process Modeler app.
For additional information, see "Creating a Process Model" on page 17 and "Opening Process Models" on page 21.
2 Shapes The Shapes pane is the toolbox for creating the process model, and contains all elements required to design a process graphically. You can show and hide the Shapes pane by using the pane’s Expand/Collapse toggle button.
For additional information, see "Using Shapes" on page 23.
3 Drawing The drawing board on which you graphically design your process model. The Drawing pane can show several tabs to display more than one process as well as the related sub-processes of a process.
For additional information, see "Working with the Drawing Pane" on page 26.
4 Properties Displays information about the process or the element selected in the Drawing pane. Here you can enter or modify the properties of the individual process elements. You can show and hide the Properties pane by using the pane’s Expand/Collapse toggle button. The Properties pane header shows the type of the selected element (for example, “Properties - User Task” or “Properties - Process”).
For additional information, see "Defining the Process Properties" on page 35, "Defining Event Properties" on page 50, "Defining Gateway and Transition Properties" on page 55, "Defining Task Properties" on page 63, and "Using Sub- Processes and Sub-Process Properties" on page 77.
5 Validation Once a process model is open in Process Modeler, it is validated and the results are shown in the Validation panel. Any change you make to the process model is validated. As long as there are no design rules violated, the Validation panel 1 Getting Started Pane Description shows a green icon and a corresponding message. Once validation issues are detected, the Validation panel shows a warning icon and the number of detected issues. For each validation issue, a separate message is displayed.
You can show and hide the Validation pane by using the pane’s Expand/Collapse toggle button.
For additional information, see "Process Model Validation" on page 18.
6 Buttons Let you save the process model locally or activate the process model on the server. For additional information, see "Saving Locally" on page 33 and "Saving and Activating on the Server" on page 34.
Closing the Process Modeler When you are finished using Process Modeler, close the application or sign out of the MediaCentral Cloud UX Administrator app.
When you close Process Modeler and reopen it during your current MediaCentral Cloud UX session, the last used process model is open in Process Modeler.
To close Process Modeler:
- Click the X in the Process Modeler header.
Process Modeler is closed but the MediaCentral Cloud UX Administrator app remains open.
To sign out of MediaCentral Cloud UX:
1.
Click the User Profile button on the right side of the Fast Bar.
2.
Select Sign Out.
If the process model open in the Process Modeler has unsaved changes, a message opens.
Click in an empty area of the Process Modeler to close the message, then save or discard the process model changes before you sign out.
When you close the browser or click the browser’s “Reload this page” button and the open process model has unsaved changes, a default “Leave site” browser prompt opens.
Click Cancel and save the changes in the process model. If you click Leave, the unsaved changes get lost.
> **Note:** Unsaved changes in the process model also get lost when you are automatically signed-out by
MediaCentral Cloud UX, for example, because the session expired in the background.
2 Modelling Processes 2 Modelling Processes The following topics provide information about the basic options for working with the graphical modelling features, such as the graphical modelling elements that are available, and how they and the different panes can be used while designing your model:
"Creating a Process Model" below
- "Process Model Validation" on the next page
- Creating a Process Model
The Process Modeler provides all options you need for graphical process modelling.
To create a process model:
1. Select an Asset Management system from the Asset Management System list.
2. Click the Create New Model button.
An empty process model is opened in the Drawing pane. A Start Event shape is already added.
3. Define the properties of the process. See "Defining the Process Properties" on page 35.
4. Add, position, and connect shapes and configure their properties.
a. Add shapes and arrange them. See "Using Shapes" on page 23.
b. Define the properties of events. See "Defining Event Properties" on page 50.
c. Define the properties of decisions. See "Defining Gateway and Transition Properties" on page 55.
d. Define the properties of transitions. See "Defining Gateway and Transition Properties" on page 55.
e. Define the properties of tasks. See "Defining Task Properties" on page 63.
f. (optional) Design and configure sub-processes. See "Using Sub-Processes and Sub-Process Properties" on page 77.
5.
Localize the labels of the process shapes. See "Using Localization Features" on page 43.
6.
Do one of the following:
- Save the process model locally. You later need to activate the process model on the server. See
"Saving Locally" on page 33 .
- Activate the process model on the server. See "Saving and Activating on the Server" on
page 34.
2 Modelling Processes Process Model Validation Each process model is validated if it applies to certain design rules. The following list shows some validation examples:
- If the format of the process name is correct
- If no duplicate activity name exist
- If the process and each sub-process contains exactly one start and one end event
- If each activity has incoming and outgoing connections
- If there are no unconnected shapes
- If each decision has a default connection and the other connections have a defined condition
Process Modeler shows the validation results in different places.
Permanently in the Validation panel
- Following specific actions in a Validation Results window
- Validation Panel
Once a process model is open in Process Modeler, it is validated and the results are shown in the Validation panel. Any change you make to the process model is validated. As long as there are no design rules violated, the Validation panel shows a green icon and a corresponding message.
Once validation issues are detected, the Validation panel shows a warning icon and the number of detected issues. For each validation issue, a separate message is displayed.
The messages in the Validation panel are linked. When you click on a message, the erroneous shape is selected in the Drawing pane and the properties of the shape are shown in the Properties pane.
- If the error is in a shape of a sub-process, the sub-process is opened and the shape selected inside.
- In case a validation error is listed for the process or sub-process itself (for example, the End event is
missing), clicking the link navigates to the process/sub-process tab and shows the properties for the process/sub-process.
If shapes share the same issue (such as the same name) you can iterate through the list by clicking on
- the message several times.
For a better orientation especially in a large process model, you can afterwards click the Center selected element button on the Drawing pane.
2 Modelling Processes Validation Results Window If a validation error is detected, a Validation Results window is shown during one of the following activities:
Open from file
- Save locally
- Activate on server
- The Validation Results window provides details about the violated design rules, as shown in the following
example. The messages are identical to the ones shown in the Validation panel but are not linked. You cannot click on a message to navigate to the erroneous shape in the Validation Results window.
You might nevertheless save or activate the process model. The final validation is performed by the Process Engine when the process model is activated on the server and activating might fail there.
Check on Invalid or Missing Script File Extensions When creating or editing a process model, you assign scripts to Script tasks and eventually to the Start event. Process Modeler checks if the provided script name is missing the file extension or has an invalid file extension and shows information about erroneous script file extensions in different places.
Permanently in the Validation panel
- When manually entering a script name without or invalid extension in the Script Name field
- When opening or saving a process model
- Direct Feedback: Message after Entering Script Name
When editing the properties of a Script task and (optionally) of the Start event, you provide a script name. If you do not select the script from the predefined list but type the script name manually and do not provide a file extension, you directly are informed about the issue by the following message:
2 Modelling Processes Click on an empty element in the Process Modeler UI to close the message and then add or correct the file extension. For more information, see "Defining the Behavior of Start Events" on page 51 and "Assigning a Script Name" on page 71.
Permanent Feedback: Validation Panel In context of the process model validation, Process Modeler writes messages on erroneous script file extensions to the Validation panel.
Click on a message to select the Script Task or Start Event shape in the Drawing pane and open its properties in the Properties pane where you can fix the file extension issue. Once you corrected the script file extension, the message will be removed from the Validation panel.
Global Fixing Option: File Extensions Dialog Box If at least one script name with missing file extension is detected, a File Extensions dialog box is shown during one of the following activities:
- Open from file
- Save locally
- Activate on server
The File Extensions dialog box provides an option to fix the script file extension issue for all affected script tasks together.
2 Modelling Processes If you click OK, the file extension *.wf will be added to all script names missing an extension because scripts without extension are interpreted as SWoDL scripts by default.
> **Note:** Do not use this option if your process model contains script tasks referencing Python scripts.
Click Cancel to not auto-append the *.wf file extension. The Validation panel continues to report the file extension issues.
Opening Process Models The Process Modeler offers two different levels of opening process models: locally or directly from the server. For both modes, you first have to select an Asset Management system before you can open the model.
You can only connect to one Asset Management system to create and edit process models at the same time.
As soon as you open or create a model, the control to select an Asset Management system is disabled. To the right side of the control, a “Reload system information” button is shown that lets you reload information from the connected Asset Management system. To connect to another Asset Management system, you first have to close all open process models.
If the Process Modeler receives an invalid BPMN from the backend, it shows a “Could not load Process Model” error message and does not open the broken model.
Opening a Locally Saved Process Model Opening a locally saved process model (BPMN or XPDL file) is a standard File Open action: you can open the process model from a local or a network folder, but it is not possible to download and open the process model directly from the Process Engine or an Asset Management system.While opening, the process model is validated; a Validation Results message informs you when an error is detected.
To open a locally saved process model:
1.
Select an Asset Management system from the Asset Management System list.
Note that only Asset Management systems v2021.7 or higher are shown in the list.
2.
Hover the mouse-pointer over the folder icon in the Process Modeler header and select Open from File.
The Open dialog opens.
3. Select the Process model (*.bpmn or *.xpdl file) in the Open dialog and click Open.
If a validation error is detected in the process model, a Validation Results message opens. Click Proceed to open the model and fix the reported issues. See "Process Model Validation" on page 18.
If at least one script name with missing file extension is detected, a File Extensions dialog box is shown. Click OK to auto-append all missing file extensions or click Cancel to fix the file extension issues manually. See "Check on Invalid or Missing Script File Extensions" on page 19.
The process model is opened in a new tab in the Drawing pane. The tab shows the process model name in uppercase letters. Each tab shows a colored marker.
Opening Process Model From Server The “Open from Server” function allows you to directly download and open a process model from the Process Engine.
2 Modelling Processes To open a process model from the server:
1.
Select an Asset Management system from the Asset Management System list.
Note that only Asset Management systems v2021.7 or higher are shown in the list.
2.
Hover the mouse-pointer over the folder icon in the Process Modeler header and select Open from Server.
The Open Process Model dialog box opens.
It might take a short period of time until all process models are retrieved from the Asset Management system and the Process model list becomes active. During this time, a Loading indicator is shown.
3. Select the process model type from the Process model list.
- Click on the list, scroll down and select the process model to open using the mouse.
- Click on the list, navigate the list using the Up and Down arrow keys and press Enter.
- Click on the list, and start typing to filter the entries in the list. While you type, a “contains”
search is applied to the list entries. Then press Enter to open the selected process model.
To remove the filter and show all list entries again, click the X (Clear) button at the right-hand side of the list.
The process model with all its revisions in the Process Engine is shown. The latest revision is preselected.
2 Modelling Processes
4. Do one of the following:
- Press Enter or click Open to open the latest revision.
- Select another revision, and press Enter or click Open. You can use the Up and Down arrow
keys to navigate the revisions list.
The process model is opened in a new tab in the Drawing pane. The tab shows the process model name in uppercase letters. Each tab shows a colored marker.
If at least one script name with missing file extension is detected, a File Extensions dialog box is shown. Click OK to auto-append all missing file extensions or click Cancel to fix the file extension issues manually. See "Check on Invalid or Missing Script File Extensions" on page 19.
Using Shapes Shapes are the elements needed for modeling processes graphically. You can access the Shapes toolbox in the following UI areas:
- The Shapes pane, which is shown by default when you create or open a process model
- The context menu of each shape added to the Drawing pane
The Shapes toolbox contains the following elements:
Shapes Pane Context Menu Description - Process Start Event:
Indicates the start point of the process.
Process End Event:
Indicates the end point of the process.
Delay Event:
An event that waits for a specified amount of time or point in time.
2 Modelling Processes Shapes Pane Context Menu Description Indicates a transition that connects model elements and represents the sequence flow.
In the process model a transition can represent the normal sequence flow, conditional sequence flow or default sequence flow.
Indicates a decision — an operation that switches the control flow.
Each decision has at least two outgoing transitions.
In the process model this is a exclusive gateway.
Indicates a fork or a join operation:
- Fork: This is a point in the process where a non-exclusive
conditional decision is made in order to split the control flow in several parallel threads. Each fork has at least two outgoing transitions.
- Join: This is a point in the process where threads of execution
are synchronized. A “join” operation acts as a closing bracket to a “fork” operation.
In the process model Fork and Join are a parallel gateway.
State Task, Cancel Task, and Error Task:
A point in the process where a new state or progress can be explicitly set within the process model, and is immediately executed by the Asset Management Process Engine.
User Task:
A task that requires a user action and is completed by a user action.
Script Task:
A task that starts a script in the Asset Management Script Engine for synchronous execution.
Sub-Process:
A “placeholder” for a more complex structural element of the process. A sub-process has no process instance of its own, and therefore has no “local variables.” 2 Modelling Processes Shapes Pane Context Menu Description Sequential sub-process:
A sub-process that is executed in a loop. It can be used to repeat parts of a process. The iterations are performed successively, one at a time.
Parallel sub-process:
A sub-process that is executed in a loop. It can be used to repeat parts of a process. All iterations are performed in parallel. Each iteration runs in its own thread context. The Parallel Sub-process is only finished when all threads are finished.
You can hide the Shapes pane to increase space for the Drawing pane and then use the Shapes toolbox in the context menu of the shapes added to the Drawing pane.
To show and hide the Shapes pane:
- To hide the Shapes pane, click the Collapse button.
- To show the Shapes pane again, click the Expand button.
To access the Shapes context menu:
- In the Drawing pane, select a shape.
The context menu opens. Depending on the selected shape, the contents of the context menu might vary. For all shapes, a Remove shape button (top-left in the illustration) is available. Only for a selected sub-process shape, the Open in new Tab button is available (top-right in the illustration).
2 Modelling Processes Working with the Drawing Pane The Drawing pane is the drawing board on which you graphically design your process model. It can show several tabs to display more than one process, as well as the related sub-processes of a process. Before you can work with the Drawing pane you have to create a new process model or open a saved model in the Drawing area.
The following topics provide more information about using the Drawing pane:
- "Adding Shapes to the Drawing Pane" below
- "Layout of Shapes in the Drawing Pane" on the next page
- "Zooming the Drawing Pane" on the next page
Adding Shapes to the Drawing Pane The method to add shapes is always the same, whether the Drawing pane is empty or already filled with shapes. Although different methods are supported, the recommended and most convenient way is to use adding shapes from the context-menu.
To add shapes to the Drawing pane:
- (Recommended) Click a shape in the Drawing pane and in the Shapes context-menu that opens
select the shape you want to add.
The shape is added to the Drawing pane and both shapes are connected by a transition.
- Select the shape in the Shapes pane and then click on the desired position on the Drawing pane.
- Drag the shape from the Shapes pane to the desired position on the Drawing pane.
While dragging the shape, a virtual blue grid line is shown: vertically, horizontally, or both — depending on the current position of the moved shape. The grid line helps you aligning the shape on a grid.
The shape is added to the Drawing pane; it is not connected to any other shape on the Drawing pane.
> **Note:** If you drag the shape on a transition between two shapes on the Drawing pane, the shape is included
in the transition.
2 Modelling Processes Zooming the Drawing Pane When you open a process model, all its elements are visible on the Drawing pane (“fit to view”). Large process models therefore might be initially zoomed out. You can use zooming controls to view the elements on the Drawing pane in a display range from 10% through 200%. This allows you to get an overview of large process models and to work in closer detail on the Drawing pane.
During your current session, the selected zoom factor is saved — together with the shapes position and selection on the Drawing pane — and retained when you switch to another process model tab and back.
To zoom the process model elements on the Drawing pane:
- Click the Fit to View button to display the entire process model in the pane. If you moved the entire
process model on the pane before, all shapes are moved back to the initial position.
- Click the Reset Zoom button to zoom back out to the initial process model size.
- Click the Zoom In button to magnify the process model elements in the pane.
- Click the Zoom Out button to reduce the magnification of the process model.
- Press Ctrl+scroll the mouse wheel up or down to zoom in or out.
The display of the shapes is adapted accordingly on the Drawing pane.
Layout of Shapes in the Drawing Pane When you work with shapes their layout may change. Different editing states are indicated.
Display States of Task and Sub-Process Shapes All task and sub-process shapes display the following layouts in the Drawing pane:
Display Description Selected shape.
You can move the shape and change its properties.
Shape in edit mode.
You can resize the shape or select another shape from the context menu. You can also move the shape and change its properties.
Display States of Event and Gateway Shapes For event and gateway shapes, hovered and selected states are not distinguished, for both states the same layout is shown in the Drawing pane:
Display Description Hovered element.
Selected element. You can move the shape and change its properties.
Display States of Transitions Transitions can display the following layouts in the Drawing pane:
2 Modelling Processes Display Description Standard mode.
Displayed after the transition is edited or added from the Shapes pane.
Transition in edit mode.
You can move the start and end points to create the transition between elements, and move the angle points to change the form of the transition. You can also change its properties. For additional information, see "Connecting Shapes on the Drawing Pane" below.
Default transition.
Only displayed if the IsDefault flag is set in the Transition’s Properties. For additional information, see "The Properties Pane for a Transition" on page 56.
Conditional transition with missing information.
Displayed if for a transition of a Decision the IsDefault flag is not set and no condition is defined. For additional information, see "Defining the Behavior for Transitions of a Decision" on page 57.
Connecting Shapes on the Drawing Pane To design your process model, the individual shapes on the Drawing pane must be connected with transitions.
- If you drag a shape from the Shapes pane to the background of the Drawing pane, the shape is not
connected to any other shape on the Drawing pane. Connect the shape with other shapes.
If you drag a shape from the Shapes pane on a transition between two shapes in the Drawing pane,
- the shape is included in the transition. Edit the transition as needed.
If you add a shape using the Shapes context menu, both shapes are automatically connected by a
- transition. Edit the transition as needed.
> **Note:** When you use a decision or a fork shape as source, you must create at least two outgoing transitions
to other shapes.
To connect using the Shapes pane:
1. In the Shapes pane, click the Activate the global connect tool button.
2. In the Drawing pane click the shape that is to be set as the source of the transition.
3. Hover the mouse pointer over the shape that is to be set as the target of the transition.
A black preliminary transition is shown between the shapes.
4. Click the shape.
2 Modelling Processes The transition is established.
To connect using the Shapes context menu:
1. In the Drawing pane click the shape that is to be set as the source of the transition.
2. In the Shapes context menu that opens, click the “Connect to other element” button.
3. Hover the mouse pointer over the shape that is to be set as the target of the transition.
A black preliminary transition is shown between the shapes.
4. Click the shape.
The transition is established.
To edit a transition:
1. Position the cursor over a transition.
Depending on the position, a different drag handle is shown.
  - Horizontal/vertical handle: Allows to change the transition on the x- or y-axis. The transition
might snap to a new source or target point.
  - Vertex drag handle: Allows for free-hand change of the transition form. The transition might
snap to a new source or target point.
2. Press the mouse key and drag the drag handle to a new position.
  - Horizontal/vertical handle: The transition stays white while dragging.
  - Vertex drag handle: The transition turns black while dragging.
3. Release the mouse key.
2 Modelling Processes Moving Shapes on the Drawing Pane You can move shapes on the Drawing pane at any time. When moving a shape a virtual blue grid line is shown: vertically, horizontally, or both — depending on the current position of the moved shape. The grid line helps you aligning all shapes on a grid.
When moving a shape with transitions, the alignment of the transitions will change.
To move one shape, do the following:
- Click the shape and drag it to the desired position on the Drawing pane.
To move all shapes at the same time, do one of the following:
- Click in the Drawing pane background, hold the mouse-key pressed down and drag it in any
direction.
- Click in the Drawing pane background and scroll the mouse wheel up or down to move all shapes up
or down.
- Click in the Drawing pane background, press Shift+scroll the mouse wheel up or down to move all
shapes to the left or right.
To move all shapes by centering one shape, do the following:
- Select a shape and click the Center selected element button on the Drawing pane.
All shapes are moved with the selected shape centered on the Drawing pane.
Resizing Shapes on the Drawing Pane You can resize shapes on the Drawing pane by a simple drag operation. Note that resizing is supported for Task shapes (and transitions) but not available for Sub-Process, Event and Decision shapes.
To resize shapes:
1. Select a shape in the Drawing pane.
2. Click on it a second time to set it to edit mode.
3. Click one of the drag points of the shape, hold the mouse-key pressed down and drag it in any
direction.
Renaming Shapes in the Drawing Pane You can directly rename each shape after adding it to the Drawing pane. Alternatively, you can change its name at any time in the shape’s Properties pane. For additional information, see "Assigning Identifier" on page 51.
2 Modelling Processes To rename a shape in the Drawing pane:
1.
Double-click the shape in the Drawing pane.
The name becomes an input box. The cursor is position at the end of the current name.
2.
Highlight the old name and type the new name.
3.
Do one of the following to apply the new name:
- Press Enter.
- Click outside the input box.
Adding a Sub-Process to the Drawing Pane The Process Modeler provides options to model sub-processes. “Inline editing” (modelling the sub-process within the same tab of the Drawing pane as the main process) is not supported: For each sub-process a separate tab is used in the Drawing pane. Each tab on the Drawing pane shows a colored marker; the main process and its sub-processes share the same color.
For more information, see "Using Sub-Processes and Sub-Process Properties" on page 77.
To add a sub-process:
1.
Drag the desired sub-process shape from the Shapes pane to the Drawing pane.
2.
Select the added sub-process shape.
3.
Add a name for the sub-process and, optional, a description in the Properties pane.
4.
In the Drawing pane, open the context menu of the sub-process shape and click the Open in new Tab icon.
A new, empty tab for the sub-process is opened in the Drawing pane. In the new tab, the sub-process properties (Name and Description) are read-only.
5. Add shapes and arrange them in the usual way. Do not forget to add a Start and an End event to the
sub-process.
6. Edit the properties of the shapes you add to the sub-process.
7. Close the sub-process tab.
All changes are saved without prompt.
Removing Shapes from the Drawing Pane You can remove any shape from the Drawing pane at any time.
To remove shapes:
1. Select the shape.
2. In the Shapes context-menu that opens, select the Remove button.
The shape and all connected transitions are removed from the Drawing pane. If you delete a sub- process shape while the corresponding sub-process is open in its own tab in the Drawing pane, the tab is closed.
2 Modelling Processes Closing Tabs on the Drawing Pane Each process and sub-process is shown in a separate tab on the Drawing pane. The tab shows the process name; if the process has unsaved changes, an asterisk is shown after the process name on the tab. You can close each tab on the Drawing pane at any time. Note the following behavior:
Closing the tab of a process that has open sub-processes, also closes all sub-process tabs.
- Closing the tab of a sub-process that has unsaved changes does not prompt you to save the
- changes. The changes will be saved in context of the main process.
- Closing the tab of a process that has unsaved changes — in the process itself or in one of its sub-
processes open in the Drawing pane — prompts you to save the changes.
- After closing the tab of a sub-process the tab of the parent process is selected.
To close a tab, do the following:
- Click X button of the tab.
If the process or one of its sub-processes has unsaved changes, the Save Changes prompt opens.
Click Save to save the process locally. See "Saving Locally" on the next page.
Undoing and Redoing Changes You can use the Undo and Redo buttons on the Drawing pane to step through the process history and correct your last actions.
You can undo and redo up to 10 actions in each process model and sub-process open in the Drawing
- pane.
- All changes made in an Input/Out window (script variables) and in the Localization window are
handled as one action.
- When you close a process or sub-process, its history is discarded.
- Performing an Undo/Redo action, closes all open sub-processes.
Note that the Undo/Redo feature is not only applied to actions on the Drawing pane but also to actions in the Properties pane and Localization window. Therefore, you might not directly see the effect of an Undo or Redo activity because it might be applied to an action done before in a now hidden UI element.
To undo or redo an action, do the following:
- To undo an activity, click the Undo button on the Drawing pane.
- To restore an undone activity, click the Redo button on the Drawing pane.
Reloading System Information Process Modeler retrieves some information directly from the connected Asset Management system to facilitate your work. This includes:
2 Modelling Processes Asset and sequence classes defined in the data model
- Workflow scripts uploaded to the Script Engine
- Users and groups of the Platform User Management
- This information is provided in selection lists for defining some of the process and shape properties, such as
in the Contributors list, Asset/Sequence Classes list, and Script Name list. You can reload this information from the Asset Management system and update the contents of the selection lists, if there are new entries.
To reload system information:
- Click the “Reload system information” button to the right side of the Asset Management System list.
Information is reloaded from the connected Asset Management system. A message informs you when the procedure is finished.
Due to potential caching of involved backend services the lists might not be updated immediately.
Switch to another shape and back or — if several tabs are open in the Drawing pane — to another tab and back to accelerate the update.
Saving Process Models The Process Modeler offers two different levels of saving process models: locally or directly on the server.
Both modes require that you have an open connection to an Asset Management system.
Exception: If you loose the connection to the Asset Management system, you can still save the process locally in BPMN format.
Saving Locally Saving the process model initiates a file download to the default directory of your browser. It is not possible to save the process model directly to the Process Engine or an Asset Management system. But you have an option to choose the format in which the process model is to be saved. If enabled in the “Downloads” settings of your Chrome browser, you can select another download location and change the file name during the download procedure.
To save the process model locally, do one of the following:
- Click the Save button to save the process model in the current format.
- Click the arrow beside the Save button and select Save as BMPM or Save as XPDL.
- Close the tab of a process that has unsaved changes and in the Save Changes security prompt that
opens, click Save.
A new version of the process model is downloaded to the default download directory of your browser.
If a same-named file with the same file extension already exists in the directory, “(1)” will be added to the file name. Depending on the “Downloads” settings of your Chrome browser you might be able to select another save location and change the file name.
If at least one script name with missing file extension is detected, a File Extensions dialog box is shown before the process model is downloaded. Click OK to auto-append all missing file extensions or click Cancel to fix the file extension issues manually. See "Check on Invalid or Missing Script File Extensions" on page 19.
If a validation error is detected in the process model, a Validation Results message opens before the process model is downloaded. Click Cancel to fix the reported issues. See "Process Model Validation" on page 18.
2 Modelling Processes Saving and Activating on the Server The “Activate on Server” function allows you to directly upload and activate your process model to the Process Engine, making it available in your Asset Management installation. While activating, you initiate a validation of the process model.
To save and activate the process model on the server:
1.
Click the Activate on Server button.
The process model is validated.
  - If your process model is correctly designed, the Activate Process Model dialog box opens.
  - If at least one script name with missing file extension is detected, a File Extensions dialog box is
shown before the process model is activated. Click OK to auto-append all missing file extensions or click Cancel to fix the file extension issues manually. See "Check on Invalid or Missing Script File Extensions" on page 19.
  - If your process model violates a design rule, the Validation Results message opens.
Click Cancel and fix the reported issues. If you click Proceed, the Activate Process Model opens and you can upload the process model to the Process Engine but activation might fail there.
See "Process Model Validation" on page 18.
2. (optional) In the Activate Process Model dialog box, enter a description of the changes you made to
the process model in the Description field.
3. Click Activate.
The process model is uploaded and activated. When the upload is finished a message is displayed.
3 Defining the Process Properties 3 Defining the Process Properties Although the Process Modeler does not require a particular sequence in which you design your process model, Avid recommends starting with the Process Properties.
The following topics provide information about the basic actions that can be performed on the process level:
- "The Properties Pane for a Process" below
The Properties Pane for a Process The Properties pane displays information about the element selected in the Drawing pane. Here you can enter or modify the properties of the individual process elements. The information and control elements are arranged into the following groups on the Properties pane:
Identification
- Miscellaneous (collapsed by default)
- Behavior
- The following illustration and table provide information about the controls and fields that are displayed in
the Properties pane.
3 Defining the Process Properties Item Description 1 Localization Defines the languages that are to be used for localizing the labels of your process model. Click the Localization button to open the Localization dialog box that lets you defines language and localize all labels of the process model. For additional information, see "Using Localization Features" on page 43.
2 Identification Provides the name for your process model that will be read by the Process Engine, and a description that is only used for documentary purposes within the Process Modeler. For additional information, see "Assigning Identifier to a Process" on the next page.
3 Contributors Defines the contributors that can be assigned to user tasks and used for delegation. For additional information, see "Defining Contributors" on page 38.
3 Defining the Process Properties Item Description 4 Languages Shows the languages that are defined for localizing the labels of your process model. For additional information, see "Defining Languages for Localization" on page 46.
5 License Features Shows the license feature of the process. If the field is empty, the process does not require a license. If a license feature is shown for the process (for example, ENT_AM_OPT_ORCHESTRATION), the process type is license-protected. A corresponding license must be available in your installation otherwise the process cannot be created and executed.
6 Supports Defines if the process supports the cancellation feature. For additional Cancellation information, see "Exporting Labels" on page 47.
7 Attachments: Configures the initialization actions allowed for the process.
initialization For additional information, see "Defining Allowed Initialization Actions" on actions page 40.
8 Attachments: Configures the number of attachments allowed for the process.
number For more information, see "Defining the Number of Attachments" on page 40.
9 Attachments: Configures the asset and sequence classes that are allowed for process asset and attachments.
sequence classes For additional information, see "Defining Allowed Classes for Process Attachments" on page 41.
To display the properties for a process:
- Click in the background of the Drawing pane.
The Properties pane shows the process properties.
Assigning Identifier to a Process Use the Identification group of the Properties pane to assign a name to the process. To avoid that a wrong name causes errors in the Process Engine, the Process Modeler checks if the name of the process model has the correct format.
Additionally, you can enter a description of the process model. This is not required; the description is only used for documentation purposes within the Process Modeler.
> **Note:** The name entered is read by the Process Engine and must match the name of a process class defined
in the data model. Make sure that the corresponding process class is defined in the data model.
To assign a name:
1. Enter the name in the Name field of the Identification group.
The name may only include:
  - Uppercase letters
  - Digits
  - Underscores (“_”)
Do not use:
3 Defining the Process Properties
  - Lowercase letters
  - Blank spaces
  - Special characters (besides the underscores)
2. Click outside the Name field.
The name is assigned.
If only capitalization is not correct, lower case letters are converted to upper case letters when leaving the Name field.
If the name is not valid, a red exclamation mark appears to the right side of the Name field.
Additionally, a message indicates that the name is not valid. Enter a correct name and click outside the Name field again.
To assign a description:
1. Enter a description in the Description field. You can enter a multi-line text, but line breaks are not
supported.
2. Click outside the Description field.
The description is assigned.
Defining Contributors If you want to use performers, assignees, delegators, and delegates in user tasks, you first have to define the contributors — users or groups or both — in the process properties. See also "Defining Assignees and Assigned Groups" on page 66, "Defining Delegation" on page 67, and "Assigning Performers" on page 68.
The Contributors (user and group) lists that are provided in the Miscellaneous group retrieve all available users and groups from the MediaCentral Cloud UX Platform User Management. The lists are not restricted to users and groups that have process creation and execution privileges.
To define contributors:
1. In the Properties pane, expand the Miscellaneous group.
2. To provide a user, do one of the following:
- In the Contributors (user) row, click on the “Add further users” field and select the user name
from the list that opens.
You can filter the entries in the list by typing: While you type, a “contains” search is applied to the list entries.
3 Defining the Process Properties
- (Not recommended) In the Contributors (user) row, click in the “Add further users” field, type
the user name (ID) and click outside the field.
If you use a mismatching name or name of a user that is not set in the User Management, the process will fail when the affected user task is reached during process execution
- To change an already set contributor name, click on the name. The name is removed. Then
select another contributor name from the list.
The contributor name is displayed as a tag and a new “Add further users” field is displayed.
3. To provide a group, do one of the following:
- In the Contributors (group) row, click on the “Add further groups” field and select the group
name from the list.
You can filter the entries in the list by typing: While you type, a “contains” search is applied to the list entries.
- In the Contributors (group) row, click on the “Add further groups” field and select the asterisk
(*). This allows any group — and therefore also any user — to contribute to the user task.
- (Not recommended) In the Contributors (group) row, click in the “Add further groups” field,
type the group name (ID) and outside the field.
If you use a mismatching name or name of a group that is not set in the User Management, the process will fail when the affected user task is reached during process execution
- To change an already set contributor group, click on the name. The name is removed. Then
select another contributor group from the list.
The contributor group is displayed as a tag and a new “Add further groups” row is displayed.
4.
Create all contributors and contributor groups as described in steps 2 and 3.
You can now assign contributors as performers, delegators, or delegates of user tasks.
To delete a contributor:
- To delete a user, click on the tag in the Contributors (user) row.
- To delete a group, click on the tag in the Contributors (group) row.
The contributor is removed without additional prompt. There is no undo function.
> **Note:** If you delete a contributor that is still assigned to user tasks, the process will fail when the affected
user task is reached during process execution.
Enabling Process Cancellation Asset Management provides features that allow you modeling processes that can be canceled in the MediaCentral Cloud UX Process app. Top-level processes for which the Supports Cancellation flag is set in the process model, show a Cancel button.
To enable the cancellation feature:
- Enable the Supports Cancellation toggle in the Properties pane.
When Process Engine starts the process, the flag is read from the process definition and the P_PROCESS_ SUPPORTS_CANCEL attribute is set accordingly.
To make process cancellation functional, you additionally need to do the following:
3 Defining the Process Properties Add a Cancel Task to your process model. See "Defining the Behavior of State, Cancel State, and
- Error State Tasks" on page 63.
- Include new variables for process cancellation in the script that is executed by a process that allows
cancellation. For more information, see the MediaCentral | Asset Management Process Reference.
Defining Allowed Initialization Actions You can define which actions a user can take when the process is initiated. When you create a new process all actions are allowed by default.
To define the allowed initialization actions:
1.
In the Properties pane go to the Allowed Initialization Actions field.
2.
Click the button of the action you want to allow for the process.
  - Add: Assets or sequences can be added to the process.
  - Remove: Assets or sequences can be removed from the process.
  - Upload File: Files can be uploaded to the process.
  - Download File: Files can be downloaded from the process.
An applied option is marked with a blue button, while an option that is not applied is displayed with a gray button.
Defining the Number of Attachments You can define the allowed number of attachments for different levels.
> **Note:** For all values the valid input is an integer between 0 and 1000.
If you enter an invalid value, a message indicates the allowed value range.
To define the number of attachments:
1. Do one of the following:
- Type or select the maximum number of sequences to be attached in the Sequences Max field.
- Type or select the minimum number of sequences to be attached in the Sequences Min field.
- Type or select the maximum number of assets to be attached in the Assets Max field.
- Type or select the minimum number of assets to be attached in the Assets Min field.
- Type or select the maximum number of total attachments in the Total Max field.
- Type or select the minimum number of total attachments in the Total Min field.
> **Note:** Since the Sequences and Assets Min and Max fields are only relevant for Asset Management
attachments, leave these fields empty for non-Asset Management attachments.
2.
Click outside the input box to apply a changed value.
3 Defining the Process Properties Defining Allowed Classes for Process Attachments You can define which asset and sequence classes are used in attachments. Process Modeler allows you to define the following as process attachments:
- Assets from local Asset Management systems
- Assets from other Asset Management systems (“non-local” Asset Management systems)
- Assets from other systems, such as Avid Production Management, MediaCentral Production
Management and Newsroom Management (“non-Asset Management systems”)
> **Note:** Adding non-local and non-Asset Management assets to a process is possible in MediaCentral Cloud
UX, but not in Asset Management Desktop.
Use the Asset/Sequence Classes control to define the allowed classes. The Asset/Sequence Classes control provides the following options:
Select or type the name of the asset or sequence class used in the data model (here labeled: object
- class and EDL class) of the connected Asset Management system.
> **Note:** If you specify an asset or sequence class that is not in the Asset/Sequence Classes list, make
sure the corresponding class is defined and check how it is spelled using the Asset Management Datamodel Administrator. If the class is missing, create it in the data model. If you use mismatching names, the affected class cannot be used as an attachment when the process is executed.
- Select or type the asterisk (*) if you want to allow all asset and sequence classes as process
attachments.
- Create a filter or select a predefined filter for local Asset Management attachments, or non-local or
non-Asset Management attachments.
Filters for Attachments If you want to use a filter for attachments from a local Asset Management system, specify a filter for Asset/Sequence Classes in the following format:
system-type:system-id:asset-type To use attachments from non-local or non-Asset Management systems, specify a filter for Asset/Sequence Classes in the following format:
[system-type:system-id]:asset-type["[" [from "-"] to "]" ] Input Meaning system-type Type of system (Asset Management, Avid Production Management, MediaCentral Production Management, Newsroom Management). Currently, the following system types are supported: "interplay-mam," "avid-pmplus," "interplay-pam," and "inews." system-id ID of the system. You can use the following:
- *: Wildcard for any system
- {local}: Placeholder for the ID of the local system
- {group}: Placeholder for any system that is defined in the Asset Management
configuration (profile Global > section Orchestration/Group > keys inews, interplay) Id: The ID of a specific system 3 Defining the Process Properties Input Meaning asset-type Asset types that are to be allowed as attachments for the specified system type. The asset type is case-insensitive.
- For Asset Management object classes, use asset.<Object class name>
- For Asset Management EDL classes, use sequence.<EDL class name>
- For Avid Production Management, MediaCentral Production Management and
Newsroom Management assets, use the asset name.
Examples:
- *: Wildcard for any asset type
- asset.VIDEO (Asset Management Video class)
- asset.* (all Asset Management object classes)
- sequence.EDL (Asset Management EDL class)
- sequence.* (all Asset Management EDL classes)
- sequence (MediaCentral Production Management or Avid Production
Management Sequence) masterclip (MediaCentral Production Management or Avid Production
- Management Video)
["[" [from "-"] to "]" ] Number and range of objects that can be attached (optional). You can use the following:
* or <empty>: no limitation
- [n]: Up to the specified number (including 0)
- [0-0]: None
- [n-n]: Exactly the specified number
- [n-m]: From - to
- The following table shows examples for filters that can be applied to Allowed Object Classes:
Input Meaning avid-pmplus:*:masterclip Allows any Avid Production Management master clip interplay-pam:*:sequence Allows any MediaCentral Production Management sequence interplay-pam:WG3:sequence[1-2] Allows one or two sequences from a MediaCentral Production Management system with the ID “WG3” interplay-pam:{group}:sequence[1] Allows a maximum of one sequence that comes from the assigned MediaCentral Production Management system (one of the systems defined in the Asset Management configuration) interplay-pam::[1-1] Accepts any MediaCentral Production Management asset type - but exactly one Assigning Allowed Classes Use the Asset/Sequence Classes control to define the classes that are allowed as attachments. The control allows you to type and create new entries but also select from a list of predefined entries. The Asset/Sequence Classes list is structured as follows:
3 Defining the Process Properties
1. Predefined filters.
2. Asset classes retrieved from the data model of the connected Asset Management system.
3. Sequence classes retrieved from the data model of the connected Asset Management system.
Within each group, the entries are sorted alphabetically.
You can filter the entries in the Asset/Sequence Classes list: Click in the field and start typing. While you type, a “contains” search is applied to the list entries.
After an entry is selected from the list or a new entry is created, the class is shown as a colored tag in the Asset/Sequence Classes area:
- Pink dark: filter
- Gray: object class
- Blue: sequence class
- <no color>: user-defined class or filter
Within the Asset/Sequence Classes group, the class tags are arranged in alphabetical order.
To assign allowed classes:
1. In the Properties pane’s Behavior group, go to Asset/Sequence Classes.
2. Click in the “Add or select further classes” field and do one of the following:
- Select the asterisk (*) if you want to allow all asset and sequence classes as process
attachments.
- Select the name of an asset or sequence class retrieved from the data model.
- Start typing to filter the entries in the list. Then select the name of an asset or sequence class
from the filtered list.
If you start typing and select Add <name>, you might add the name of a class that is not part of the data model and therefore cannot be used as an attachment when the process is executed.
- Select a predefined filter from the list.
- To create a new filter, type a filter in the following format, and then select Add <new filter>.
  - For a local Asset Management system: system-type:system-id:asset-type
  - For a non-local or non-Asset Management system:
system-type:system-id]:asset-type["[" [from "-"] to "]" ] The class or filter is displayed as a new tag in the Asset/Sequence Classes group.
To delete an allowed class:
1. In the Properties pane’s Behavior group, go to Asset/Sequence Classes.
2. Click the X icon of the class or filter you want to delete.
The class or filter is removed from the Asset/Sequence Classes group.
> **Note:** As soon as you save your process model, all information about the class or filter will be removed from
the process model. There is no undo function.
Using Localization Features Process Modeler provides you the option to create and localize the labels of your process model shapes. As an alternative to localizing labels manually you can also export labels and import localized labels. See the following topics:
3 Defining the Process Properties "The Localization Dialog Box" below
- The Localization Dialog Box
The Localization dialog box provides all features that you need to localize your process model. The dialog box:
Is accessible from the Properties pane of any shape — except for a sub-process opened in a tab
- Combines all localizable shapes of the process and its sub-processes in one place and thus supports
- consistency
- Lets you define the languages needed for localization
- Lets you show and hide the labels of individual languages
- Lets you export and import localized labels
- Provides an overview on already localized labels and missing localization
- Highlights the shape that was selected in the process model when you opened the Localization dialog
box and sets the cursor in the “en” label field
- Lets you filter the displayed elements by Element Name
The following illustration and table provide information about the controls and fields that are available in the Localization dialog box.
Item Description 1 Languages Shows the languages that are defined for localizing the labels of your process model as tags; lets you show and hide the labels of the individual languages; and lets you delete languages.
2 Add language English is created by default for a new process model. You have the following 3 Defining the Process Properties Item Description options to add new languages.
The + (Add a language) button lets you add individual languages.
- The Add all system languages button adds all languages that are
- defined in the Asset Management data model. Currently these are: ar,
de, en, es, fr, it, ja, ko, pl, pt, ru, tr, and zh.
For additional information, see "Defining Languages for Localization" on the next page.
3 Filter field You can filter the entries in the Localization dialog box: Click in the Filter field and start typing. While you type, a “contains” search is applied to the entries in the Element Name column. The filter is case-insensitive. Remove the text from the Filter field to show all elements again.
If you have applied a filter and import localization, the filter is removed and all elements are shown again.
4 Import/Export Open dialog boxes that let you import or export the label localization. For localization buttons additional information, see "Importing Labels" on page 48 and "Exporting Labels" on page 47.
5 Close and save Closes the Localization dialog box and saves the changes you made to the button localization.
Pressing the Esc key closes the Localization dialog box but discards your changes.
6 Shape type icons Identifies the shape type. The shapes are arranged in the following order (top- bottom): Start, End, State Task, Error Task, Cancel Task, Script Task, User Task, Decision, Fork/Join, Delay, Subprocesses.
Under each Script Task its States are arranged, if created; under each User Task its States and Buttons are arranged, if created.
7 Element Name Shows the name of the shape as defined in the shape’s properties.
8 Language- For each defined language, a column is displayed; the column provides a field dependent label for each localizable shape. The English label column is created by default and columns cannot be deleted.
You can show and hide columns by using the check box of each language tag.
Your selection is saved and persists from one session to another. For additional information, see "Adding and Localizing Labels " on page 47.
3 Defining the Process Properties To access the localization features:
- In the Properties pane header of the process or a shape, click the Localization button.
The Localization dialog box opens.
Defining Languages for Localization By default, English is available for each new process model. Define additional languages you want to use for the labels. Except English, you can also delete languages.
> **Note:** If you delete a language, all localized labels for the deleted language will be removed. There is no undo
function.
To create languages:
1. Open the Localization dialog box.
2. To add an individual language, do the following:
a. Click the + (Add language) button.
A text box opens on the right side.
b. Type the language’s name corresponding to ISO 639 convention.
> **Note:** The language you enter must match the language defined in the data model. Make sure
the corresponding language is defined in the data model. If not, create the corresponding language using the Asset Management Datamodel Administrator. Creating a language in Process Modeler does not create the corresponding language in the data model.
c. Click outside the text box.
The language is displayed as a tag in the dialog box header and a column is added to the dialog box.
3. To add all languages supported by Asset Management, click the Add all system languages button.
For each supported language, a tag is displayed in the dialog box header and a column is added to the dialog box.
4.
Click the X (Close and save) button.
The Languages dialog box is closed and the new languages are saved with the process model.
To delete a language:
1. Open the Localization dialog box.
2. Go to the tag of the language you want to delete and click its “Remove” button.
A security prompt opens.
3. Click Yes.
The language is removed from the Localization dialog box.
3 Defining the Process Properties
4. Do one of the following:
- Click the Esc key if you want to keep the language.
The Localization dialog box is closed but the language is not deleted.
- Click the X (Close and save) button.
The Localization dialog box is closed and the language is finally deleted.
Adding and Localizing Labels Use the Localization dialog box to add labels in any language for the process model shapes. Provide at least the English labels for the process model shapes.
To localize labels:
1.
Open the Localization dialog box.
If you open the Localization dialog box while a shape is selected in the Drawing pane, the corresponding element is selected in the dialog box and the cursor is set into the element’s “en” field.
If English is hidden, the cursor is set into corresponding field of the first (left-most) language.
If no shape was selected, the dialog box opens without focusing a specific field.
2. (optional) Show and hide columns by selecting or deselecting the check box of the corresponding
language tag in the Localization dialog box header.
3. Click into a field and type or paste a label.
4. Click outside the field or press the Tab key to move the cursor to the next field to the right.
5. Repeat steps 3 and 4 for any element and language.
6. Do one of the following:
- Click the X (Close and save) button.
The Localization dialog box is closed and the labels are saved.
- Click the Esc key if you want to discard your changes.
The Localization dialog box is closed but the added or changed labels are not saved.
Exporting Labels You can export process model labels to localize them outside Process Modeler and then later re-import the localized labels to the process model.
To export labels:
1.
Open the Localization dialog box.
2.
Click the Export localization button.
The Export Localization dialog box opens.
3 Defining the Process Properties 3.
Select the language of the labels from the Localization language selection list.
4.
(optional) Select the Export only elements with missing label toggle if you only want to export elements that are missing the label.
5. Click Export.
Depending on your selection, all labels or only labels without localization are downloaded to the default download directory of your browser in an XML file. The default file name is <process model name>_<language>.xml. If a same-named file with the same file extension already exists in the directory, “(1)” will be added to the file name. Depending on the “Downloads” settings of your Chrome browser you might be able to select another save location and change the file name.
Importing Labels As an alternative to localizing labels manually you can also import localized labels. Prerequisite: The import labels file must have the correct file format (*.xml) and internal structure. This is the case when you import labels that have been previously exported from an Asset Management process model using the export localizations feature.
To import labels:
1.
Open the Localization dialog box.
2.
Click the Import localization button.
The Import Localization dialog box opens.
3 Defining the Process Properties
3. Click the + (“Add localization from file(s)”) button, select the label files to be imported and click OK in
the File Open dialog.
The selected label files are displayed in the Filename column.
4.
(Option) To remove a label file from import, click its Trash bin (Remove from list) button.
5.
Define the effects of the label import:
- Enable the “Overwrite existing labels” toggle if existing non-empty labels are to be overwritten
by non-empty import labels.
- Leave the “Overwrite existing labels” toggle disabled if only new labels are to be added.
6. Click Import.
A message opens informing you of a successful import or listing the reason for an unsuccessful import.
7. Click outside to close the message.
Languages that are referenced in the import file but do not exist in the opened process model are created automatically in the process model by the import.
8.
Do one of the following:
- Click the X (Close and save) button.
The Localization dialog box is closed and the imported labels are saved with the process model.
- Click the Esc key if you want to discard the label import.
The Localization dialog box is closed but the the imported labels are not saved with the process model.
4 Defining Event Properties 4 Defining Event Properties There are three events that you can configure in your process model: start, end, and delay.
The following topics provide information about the basic actions you can perform on the event level:
"The Properties Pane for an Event" below
- "Assigning Identifier" on the next page
- "Defining the Behavior of Start Events" on the next page
- The Properties Pane for an Event
The Properties pane displays information about the element selected in the Drawing pane. Here you can enter or modify the properties of the individual process elements. For events, the information and control elements are arranged into the following groups:
- Identification
- Behavior (only for Start and Delay events)
The following illustration and table provide information about the fields that are displayed in the Properties pane for a Delay event.
Item Description 1 Identification Provides a name for the selected element that will be read by the Process Engine, and a description that is only used within the Process Modeler. For additional information, see "Assigning Identifier" on the next page.
2 Behavior Available for Start and Delay events.
For a Start event, it defines a workflow and output mapping before the
- process is created in the Process Engine. For additional information, see
"Defining the Behavior of Start Events" on the next page.
- Defines the reaction of the delay event. For additional information, see
"Defining the Behavior of Delay Events" on page 52.
4 Defining Event Properties To display the properties for an event:
- Select the event in the Drawing pane.
The Properties pane shows the event properties.
Assigning Identifier Use the Identification group of the Properties pane to assign a name and (optionally) description. The procedures to assign a name and description are the same for all shapes.
To assign a name:
1. Enter the name in the Name field of the Identification group. The name must be unique for each
shape. Blanks are not allowed.
2.
Click outside the Name field.
The name is assigned.
To assign a description:
1. Enter a description in the Description field. You can enter a multi-line text, but line breaks are not
supported.
2. Click outside the Description field.
The description is assigned.
Defining the Behavior of Start Events You can configure Start events to perform activities before the process is created in the Process Engine. The script defined in the Behavior section of the Start event is triggered by the UI and not by the Process Engine.
The following illustration and table provide information about the available controls.
Item Description 1 Script Name Defines the name of the script that is called. You can select the script from a list that provides all available scripts uploaded to the Script Engine.
2 Outputs Determines which values are returned from the script. The target property and the source script variable have to be specified in the Outputs dialog box that you open by using the Configure button at the right hand side of the field. For a Start event, input mapping of attributes is not required. The Outputs field shows the number of defined outputs.
4 Defining Event Properties To define the Start event behavior:
1.
To provide a script name, click on the “Add or select a script name” field in the Script Name row, and do one of the following:
- Select the script name from the list.
- Start typing to filter the entries in the list. While you type, a “contains” search is applied to the
list entries. Then select the script name.
- Click on the “Add or select a script name” field, type the script name including the file
extension and then select Add <script name>.
> **Note:** The script name you type must match the name of the corresponding script that is
uploaded to the Asset Management Script Engine. Make sure the corresponding script is available in the Script Engine and check how it is spelled using the Orchestration Monitor.
If you use a mismatching name, the script will not be started, and the process will fail at this point.
- To change an already set script name, click on the name. The name is removed. Then select
another script name.
2. To define outputs, do the following:
a. Go to the Outputs field and click the Configure button.
The Outputs dialog box opens.
b. Type the name of the target property in the Process Attribute field or click in the field and select the attribute from the list that opens.
c. Type the name of the script variable in the Script Variable field or click in the field and select the variable from the list that opens.
d.
(Optional) To add an additional output, click the + (Add row) button and repeat steps b and c.
e.
(Optional) To remove an output, click the trash bin (Remove row) button.
f.
Click the X (Save and close) button.
The Outputs dialog box is closed and the output definition is assigned. The Output field shows the number of defined outputs.
Defining the Behavior of Delay Events You can configure the behavior of Delay events. The following illustration and table provide information about the available controls.
4 Defining Event Properties Item Description 1 Attribute mapping Determines which data model attribute provides the initial value.
2 Timer type selection Defines if the timer waits for a specified duration (Cycle) or point in time (Date).
3 Timer Defines the amount of time or specified point in time for the delay event. The controls displayed (Span or Date) depends on the Timer type selection.
> **Note:** When using Attribute mapping regard the following: The attribute name must match the
corresponding attribute name defined in the data model. The referenced attribute must include:
Datetime if you want to use the “time date,” or Integer if you want to use “time cycle.” Make sure the corresponding attribute is defined in the data model. If not, create it using Asset Management Datamodel Administrator. If you use mismatching names the process will fail at the point when the delay event should be executed.
To define the Delay event behavior:
1. Enter the name of the attribute that provides the initial value in the Attribute mapping field and click
outside the text field.
2. Define the timer type:
- Select the Cycle option button if you want to define the duration.
- Select the Date option button if you want to define the point in time.
Your choice determines which input control is shown.
For Date the Timer Date controls are displayed.
For Cycle the Timer Span controls are displayed.
3. To define the timer date, click in the Date control and type the date and time. You can use the Up and
Down Arrow keys to increase and decrease the selected unit.
You can use the Tab or Right Arrow key to continue to the next unit.
4.
To define the timer cycle:
a.
Enter or select the value in the Span spin box. The maximal value is 1000.
The input is validated. Any negative value will be set to 0, any value exceeding 1000 will be set 4 Defining Event Properties to 1000.
b. Select the unit from the selection list: Second(s), Minute(s), Hour(s), Day(s), Month(s), or Year (s).
5 Defining Gateway and Transition Properties 5 Defining Gateway and Transition Properties While transitions connect model elements and represent the sequence flow, decisions are elements to switch the control flow. A decision connects transitions to other elements of the process model (“activities”).
At runtime, the concrete control flow (“concrete decision”) is based on the conditions defined in the individual transitions. You have to use special syntactical constructs to define the conditions (“expressions”).
Since decisions (“Exclusive gateways”) and Fork and Join elements are very similar elements that switch the control flow (“parallel gateways”), they are often summarized as “Gateway” elements. This section also uses the umbrella term “gateway”.
The following topics provide information about the basic actions performed on the decision and transition level:
"The Properties Pane for a Gateway Element" below
- "The Properties Pane for a Transition" on the next page
- The Properties Pane for a Gateway Element
The Properties pane displays information about the element selected in the Drawing pane. Here you can enter or modify the properties of the individual process elements. For gateway elements the information and control elements are arranged into the following group:
- Identification
The following illustration and table provide information about the fields that are displayed in the Properties pane for a Fork element.
Item Description 1 Name Provides a name for the selected element that will be read by the Process Engine. For additional information, see "Assigning Identifier" on page 51.
2 Description Provides a description that is only used within the Process Modeler.
3 Parallel Gateway Type For Fork and Join elements an additional selection list is displayed: Parallel Gateway Type. For additional information, see "Defining the Parallel Gateway Type" on the next page.
To display the properties for a gateway element:
- Select the gateway shape in the Drawing pane.
The Properties pane shows the gateway properties.
5 Defining Gateway and Transition Properties Defining the Parallel Gateway Type The process model distinguishes two parallel gateway types:
- Fork: This is a point in the process where a non-exclusive conditional decision is made in order to split
the control flow in several parallel threads. Each fork has at least two outgoing transitions.
- Join: This is a point in the process where threads of execution are synchronized. A “join” operation
acts as a closing bracket to a “fork” operation.
When you add a gateway shape to the Drawing pane, “Fork” is set as the Parallel Gateway Type by default.
To change the gateway type:
- Select the type from the Parallel Gateway Type list.
The Properties Pane for a Transition The Properties pane displays information about the element selected in the Drawing pane. Here you can enter or modify the properties of the individual process elements. For transitions the information and control elements are arranged into the following groups:
Identification
- Behavior (transitions of a Decision only)
- The following illustration and table provide information about the fields that are displayed in the Properties
pane for a transition.
5 Defining Gateway and Transition Properties Item Description 1 Name Provides a name for the selected element that will be read by the Process Engine.
For additional information, see "Assigning Identifier" on page 51.
2 Description Provides a description that is only used within the Process Modeler.
3 Transition Is only shown for an outgoing transition of a decision. Formulates expressions for Behavior conditions and defines the default condition. Includes the following controls:
An Is default toggle button (disabled by default)
- A Condition text box to provide the condition
- Condition Formulation controls, which are only shown as long as the Is
- default toggle is disabled. If Is default is enabled, the Condition
Formulation controls are hidden.
For additional information, see "Defining the Behavior for Transitions of a Decision" below.
To display the properties for a transition:
- Select the transition in the Drawing pane.
The Properties pane shows the transition properties.
Defining the Behavior for Transitions of a Decision When editing the behavior of a transition you can define the following:
- Decide if it is a default transition.
- Formulate conditions for the transition.
> **Note:** Normally you do not define the behavior of transitions, except in the following case: When you create
outgoing transitions for a decision you always have to define one default transition as well as the conditions for all other transitions.
> **Note:** If you define non-exclusive conditions, the order in which they will be evaluated during process
execution is not defined.
To edit the behavior of a transition for decisions:
1. Define if the transition is a default transition or not:
- To define the transition as default, enable the Is default toggle.
The Condition text box is disabled for input and the Condition Formulation Controls are hidden.
The default transition is marked in the Drawing pane.
- To define the transition as non-default, leave the Is default toggle deactivated.
5 Defining Gateway and Transition Properties The Condition text box is highlighted with a red border to indicate that input is required.
The Condition Formulation Controls are shown below the Condition text box.
2.
To define a condition for a non-default transition, provide the condition in the following form in the Condition text box: <expression> <operator> <value> (example: Export.Lifecycle==FINISHED).
You can also use a configuration key as <expression>. To do so, type the URI to the configuration key in the syntax MAMConfig://Profile/Section/Subsection/Key (example: MAMConfig://MAM_ Export/CommonSettings/DoPostTranscode).
For additional information, see "Supported Expressions" on the next page.
While formulating the condition, use the following Condition Formulation controls to insert the selected element in the Conditions text box at the current cursor position (or at the end if the cursor is positioned outside):
  - Click one of the Operators buttons.
  - Select a predefined value or process attribute from the Process Attributes list (only available if
the process model was opened from the server).
  - Select a task lifecycle of a user or script task available in the process model from the Task
Lifecycle list.
  - Select the value of a task lifecycle from the Task Lifecycle list.
  - Select a task state condition from the Task State Condition list.
  - Select the condition elements in the Conditions text box that are to be included in a function
and click one of the Functions buttons.
3.
Click outside the Condition field.
4.
Repeat steps 2 and 3 for all remaining transitions of the decision.
If you do not define the behavior of a transition, the transition and the Decision shape in the Drawing pane are highlighted in red. The Condition text box of the affected transition in the Properties pane is highlighted with a red border.
5 Defining Gateway and Transition Properties Supported Expressions You have to use special syntactical constructs to formulate expressions when you define conditions. The following sections describe which syntactical elements can be used.
Basic expression elements You can use the following basic expression elements:
Value or Expression Description <taskName>.State Reads the state of the task <taskName>.
<taskName>.Lifecycle Reads the lifecycle of the task <taskName> (one of ERROR, TIMEOUT, FINISHED, PENDING, RUNNING).
EXISTS(<taskName>) Evaluates to true if the task <taskName> exists in the task list or task history.
<MAMConfig://Profile/Section/Key> Reads the value of the referenced configuration key.
Multi-Instance Evaluation The following expressions can be defined for multi-instance evaluation:
Value or Expression Description COUNT(<taskName>.State == Evaluates to true if the specified <number> of task-instances of <taskName> <value>) == <number> have the state <value>.
The only allowed operator in the COUNT() expression (for example Or comparing <taskName>.State and <value>) is "==".
(The task lifecycle can be evaluated as well.) COUNT(<taskName>.State == <value>) != <number> ALL(<taskName>.State == <value>) Evaluates to true if all task-instances of <taskName> have the state <value>.
The only allowed operator in the ALL() expression (for example comparing <taskName>.State and <value>) is "==".
(The task lifecycle can be evaluated as well.) ANY(<taskName>.State == <value>) Evaluates equivalent to COUNT(<taskName>.State == <value>) > 0.
The only allowed operator in the ANY() expression (for example comparing <taskName>.State and <value>) is "==".
(The task lifecycle can be evaluated as well.) NONE(<taskName>.State == Evaluates equivalent to COUNT(<taskName>.State == <value>) == 0.
<value>) The only allowed operator in the NONE() expression (for example comparing <taskName>.State and <value>) is "==".
(The task lifecycle can be evaluated as well.) NumberOfObjects A constant that represents the number of objects being referred to within the 5 Defining Gateway and Transition Properties Value or Expression Description process instance (for example, the contents of the metadata attribute “P_ OBJECT_LIST”.) NumberOfEdls A constant that represents the number of EDLs being referred to within the process instance (for example, the contents of the metadata attribute “P_ EDL_LIST”.) NumberOfFiles Evaluates to the number of entries in the File list of the process; that is, the attribute P_FILE_LIST.
NumberOfAttachments Evaluates to the number of entries in the Attachments list of the process; that is, the attribute P_ATTACHMENTS_LIST.
NumberOfAttachments("filter") Evaluates to the number of entries in the Attachments list of the process which fits to the passed filter. For additional information, see "Using a Filter in NumberOfAttachments" on the next page.
Loops The following expressions can be defined for loops:
Value or Expression Description LoopCounter A value that represents the number of the current iteration. Iteration count (deprecated, use LoopIndex begins at 1 for sequential loops, and at 0 for parallel loops.
instead) LoopIndex A value that represents the number of the current iteration. Iteration count begins at 0 for all loop types.
Predefined values You can use the following predefined values to formulate expressions:
Value or Expression Description ProcessHasError Reads the “HasError” flag of the running process instance as a boolean value.
ProcessState Reads the current state of the running process instance as a ThesaurusId.
ProcessProgress Reads the progress of the running process instance as a percentage value.
ProcessLifecycle Reads the lifecycle of the running process instance as a legal list value (one of ERROR, TIMEOUT, FINISHED, PENDING, RUNNING).
Process.<ToUpper Reads any (other) meta attributes of the running process instance, whereby the (<attributeName>)> <attributeName> is the name as given in the data model configuration (for example P_PROCESS_PRIORITY, MODIFICATION_DATETIME, etc., so they would result in expressions to be used like “Process.P_PROCESS_PRIORITY” and “Process.MODIFICATION_DATETIME”).
Supported Operators You can use the following operators to formulate expressions:
Operator Semantics == equal to 5 Defining Gateway and Transition Properties Operator Semantics <, <= less than, less than or equal to >,>= greater than, greater than or equal to != not equal && Boolean and || Boolean or ( expression ) precedence ! unary not
> **Note:** Comparison operators such as “greater than (or equal to)” and “less than (or equal to)” will not be
supported to compare task states, as these do not have an order.
Using a Filter in NumberOfAttachments You can use a filter with the NumberOfAttachments variable. It allows you to select a number of attachments based on their type and source. The filter has a specific format.
For local Asset Management systems.
- For non-local and non-Asset Management systems.
- For more information, see "Filters for Attachments" on page 41.
Access to Process Attributes All attributes of the process class can be accessed by using the “.” operator on the 'Process' scope. The result of the expression is always of type String:
Process.P_PROCESS_ERRORMESSAGE Alternatively, you can access attributes of the process class by using curly brackets ( {} ), as shown in the following example:
{P_PROCESS_ERRORMESSAGE} There is an option to use sub-attributes of type Compound, as shown in the following example:
Process.P_OBJECT_LIST[2].MAINTITLE You can use variables of other tasks (such as loopIndex) with expressions as index of an MVC attribute:
Process.P_OBJECT_LIST[loopIndex + 1].MAINTITLE You can use an MVC sub-attribute as index for another sub-attribute, as shown in the following example:
Process.P_OBJECT_LIST[Process.P_OBJECT_LIST[0].Attribute_Of_Type_ Integer].MAINTITLE Using Configuration Values You can use a configuration key as a value for a condition. The following is required:
The value must be a URI to the configuration key. The URI syntax is:
MAMConfig://Profile/Section/Subsection/Key Example: You want to reference a key "DoPosttranscode" in the CommonSettings section of the MAM_ Export profile.
5 Defining Gateway and Transition Properties In this case, the URI for the condition would be:
MAMConfig://MAM_Export/CommonSettings/DoPosttranscode All settings are treated as strings by default. However, boolean configuration settings are converted to the Boolean literals true/false; integer and float settings are converted to their integer/float literal.
If the URI is not correct or the associated configuration key does not contain a value, an “empty string” is used as the value.
Examples:
MAMConfig://NonexistingProfile/Section/Key == "dummy" // "" == "dummy" MAMConfig://MAM_Export/CommonSettings/DoPosttranscode // true !MAMConfig://MAM_Export/CommonSettings/DoPosttranscode // false MAMConfig://MAM_Foundation/ImportVideo/HiresOnlineCarrier == "HIRES" // "HIRES" == "HIRES" 6 Defining Task Properties 6 Defining Task Properties Tasks are elementary steps within the process that are carried out automatically (based on a script) or by a user action. The following topics provide information about the basic task-level actions you can perform:
"State, Cancel State, and Error State Tasks" below
- "User Tasks" on the next page
- State, Cancel State, and Error State Tasks
A State task is a point in the process where a new state or progress can be explicitly set within the process model, and which is immediately executed by the Asset Management Process Engine. The following section provides information about the properties you can set for State, Cancel, and Error State tasks.
The Properties Pane for State, Cancel State, and Error State Tasks The Properties pane displays information about the element selected in the Drawing pane. Here you can enter or modify the properties of the individual process elements. For State, Cancel State, and Error State tasks the information and control elements are arranged into the following groups:
Group Description Identification Provides a name for the selected element that will be read by the Process Engine, and a description that is only used within the Process Modeler. For additional information, see "Assigning Identifier" on page 51.
Behavior Suggests the users or groups to perform the next task, and defines a progress value. For additional information, see "Defining the Behavior of State, Cancel State, and Error State Tasks" below.
To display the properties for a state, cancel state, or error state task:
- Select the task in the Drawing pane.
The Properties pane shows the task properties.
Defining the Behavior of State, Cancel State, and Error State Tasks State, Cancel State, and Error State tasks show the same properties in the Behavior group.
Item Description 1 Progress Specifies the progress of the process when the state is reached. If the toggle is enabled, you can set an integer value. If the toggle is disabled, the Percentage is set to 0 but internally this is treated as “not defined.” 6 Defining Task Properties Item Description If Progress is disabled, the Process Engine will do the following during process execution:
- A State and Cancel task with undefined progress sets the existing progress to
positive
- An Error task with undefined progress sets the existing progress to negative
2 Next Group Suggests the group to perform the next task. Only a contributor group of the process can be the next group.
3 Next User Suggests the user to perform the next task. Only a contributor to the process can be the next user.
To define the progress:
1. Configure the Define process progress toggle:
- If disabled (gray, default), the Percentage field is deactivated and any previous input is reset
to 0. Internally, the value is treated as “not defined.”
- If enabled (blue), the Percentage field is activated for input.
2. In the Percentage field, do one of the following:
- Use the spin box control to define the percentage.
- Enter an integer value from 0 through 100 and click outside the field.
If you enter an invalid value, a message informs you about the allowed input.
To define the next user or group:
1.
To define the next group, go to the Next group row, click on the “Select a group” field and select the group that can perform the next task from the list.
2. To define the next user, go to the Next user row, click on the “Select a user” field and select the user
that can perform the next task from the list.
Both lists provide supported placeholders and the name of groups or users that have been defined as contributors. For more information, see "Defining Contributors" on page 38 and "Supported Placeholders" on page 66.
User Tasks User tasks require user interaction. The following section provides information about the properties you can set for User tasks.
The Properties Pane for User Tasks The Properties pane displays information about the element selected in the Drawing pane. Here you can enter or modify the properties of the individual process elements. For User tasks the information and control elements are arranged into the following groups:
Group Description Identification Provides a name for the selected element that will be read by the Process Engine, and a description that is only used within the Process Modeler. For additional information, see "Assigning Identifier" on page 51.
Behavior Defines allowed actions and delegation rules, and assigns templates, performers, states, and a timeout to the user task. For additional information, see "Options for Defining the 6 Defining Task Properties Group Description Behavior of a User Task" on the next page.
To display the properties for a user task:
- Select the task in the Drawing pane.
The Properties pane shows the task properties.
Options for Defining the Behavior of a User Task The following illustration and table explain the options for defining the behavior of a user task.
Item Description 1 Allowed Actions Defines which user actions are allowed when the user task is reached during process execution. See "Defining Allowed Actions" on the next page.
2 Assignment Places a user in charge of performing the task. See "Defining Assignees and Assigned Groups" on the next page.
3 Groups Places a group in charge of performing the task. See "Defining Assignees and Assigned Groups" on the next page.
4 Delegation Defines the delegation (the delegators for and delegates of user tasks). Use the Delegation dialog box that you open by using the Configure button at the right hand side of the Delegation field. The field shows the number of defined delegation rules. See "Defining Delegation" on page 67.
5 Form Defines an input form template for the user task. See "Assigning Templates" on 6 Defining Task Properties Item Description page 69.
6 Performers Assigns performers to the user task (user or groups that are allowed to process the task). See "Assigning Performers" on page 68.
7 Timeout Defines a timeout for the user task. See "Defining Timeout" on page 69.
8 States Defines the states that the user task can reach when the user performs the task.
See "Defining States" on page 69.
Supported Placeholders You can use placeholders when defining the behavior of a task in the following fields:
- User task field: Assignee, Assignee default, Group, and Group default
- State, Cancel, and Error task field: Next user and Next group
You can use the following placeholders:
Placeholder Description %creator% The user or system service that created the process.
%previousUser% The user completing the previous task.
%previousGroup% The group completing the previous task.
%User_Task% Name of a any user task defined in the process model, for example %Approval%.
Process Engine expands the placeholders to real values.
Defining Allowed Actions You can define which actions a user can take when a user task is reached during process execution. When you add a new user task all actions are allowed by default.
To define the allowed actions:
1. In the Properties pane go to the Allowed Actions row.
2. Click the button of the action you want to allow for user task.
  - Add: Assets or sequences can be added to the task.
  - Remove: Assets or sequences can be removed from the task.
  - Upload File: Files can be uploaded to the task.
  - Download File: Files can be downloaded from the task.
An applied option is marked with a blue button, while an option that is not applied is displayed with a gray button.
Defining Assignees and Assigned Groups You can assign user tasks to users or groups. Assignment places a user or group in charge of performing the task. Assignment does not change the access rights to the task.
6 Defining Task Properties To define assignments for the user task:
1.
In the Properties pane go to the Behavior group and do the following:
- To define the Assignee, click on the “Select an assignee” field and select the name of the user
that should perform the task from the list.
- To define the Assignee default, click on the “Select an assignee” field and select the name of
the fallback user that should perform the task from the list.
- To define the Group, click on the “Select a group” field and select the name of the group from
which a user should perform the task.
- To define the Group default, click on the “Select a group” field and select the name of the
fallback group from which a user should perform the task.
You can filter the entries in the list by typing: While you type, a “contains” search is applied to the list entries. You can also use placeholders to define the assignment. See "Supported Placeholders" on the previous page.
The selected entry is displayed as a tag in the corresponding field. A red tag indicates that the corresponding contributor or contributor group was removed from the process properties.
2. (optional) To change an already set assignee or group, click on its tag. The tag is removed. Then
select another assignee or group from the corresponding list.
Defining Delegation You can define the user or group (“delegators”) that can delegate user tasks to another user or group (“delegates”). Delegation enhances the access to a task. You can also use the asterisk group entry to allow all groups as delegators and delegates if the asterisk entry is defined as contributor.
> **Note:** The contributors for the process have to be defined before you can define the delegation. See
"Defining Contributors" on page 38.
To define the delegation for the user task:
1.
In the Properties pane go to the Delegation field and click the Configure button.
The Delegation dialog box opens. In the Delegator column all contributors are listed: groups as teal dark, users as green pills. In the Delegates column, for each delegator a “Select further delegates” field is shows that allows you to select contributors that can be assigned as delegates.
6 Defining Task Properties
2. Click on the “Select further delegates” field and select the delegate you want to assign to the
delegator from the list. The selected delegate is shown as a tag in the Delegates column and the list opens again.
3. (optional) Assign additional delegates to the delegator.
4. Go to the next delegator and assign the delegates.
5. Repeat step 2 until you have defined all delegation rules.
6. Do one of the following:
- Click Cancel if you want to discard your assignment.
The Delegation dialog box is closed and no delegation rules are assigned.
- Click OK.
The Delegation dialog box is closed and the delegation rules are assigned. The Delegation field shows the number of defined delegation rules.
Assigning Performers By default, all contributors of the process are allowed to perform user tasks. You can assign individual users or groups to the user task, specifying who is allowed to perform the task.
> **Note:** The contributors for the process have to be defined before you can assign performers. See "Defining
Contributors" on page 38. A red tag with an ID in the Performers field indicates that the corresponding contributor was removed from the process properties.
To assign performers to the user task:
1. In the Properties pane go to the Performers field, click on the “Add performer(s)” field and select the
performer name from the list.
You can filter the entries in the list by typing: While you type, a “contains” search is applied to the list entries.
The performer is displayed as a tag in the Performers field and a new “Add further performer(s)” row is displayed.
2. (optional) To change an already set performer, click on the tag. The tag is removed. Then select
another performer from the list.
3. Repeat steps 1 and 2 until you have defined all performers.
6 Defining Task Properties Assigning Templates You can assign templates to the task that are shown when the user task is reached during process execution.
> **Note:** The template name must match the name of the corresponding template defined in the data model.
Make sure that the corresponding template is defined in the data model. If not, create the template using the Asset Management Datamodel Administrator. If you use mismatching names, the template for this user task will not be shown when the process is executed. Since the user will not be able to perform the required action the process will fail at this point.
To assign a template to the user task:
1.
In the Properties pane go to the Input Form field and type the name of the template for the input area (for example: CAT_PROCESS_EXPORT_APPROVAL).
2. To apply the template, click outside the input field.
Defining Timeout You can define a timeout for the user task (a period of time during which the user action has to be performed). The timeout unit is seconds. If the user task is not processed during this period, the task terminates with a TIMEOUT lifecycle.
To define the timeout:
1. In the Properties pane go to the Timeout field.
2. Do one of the following:
- Enter an integer value from 0 through 10 000 000.
- Use the spin box control to define the timeout value.
- Enter a property reference.
If you entered an integer value, the input is validated. In case of an invalid input, a message indicates the allowed value range.
Defining States Each user must choose from a set of predefined actions when they interact with the process, and this choice determines the state of the User task. You can define the states that the User task can reach when the user performs the task.
When you create a state in a User task, automatically a “Button” element is created. The Button element is not shown in the Properties or Drawing pane; it is only shown in the Localization dialog box, where you can localize the button label. The following example shows a User task “Approval” with two states and the corresponding Button elements in the Localization dialog box.
For more information, see "The Localization Dialog Box" on page 44.
6 Defining Task Properties To define states for the user task:
1.
In the Properties pane, go to the Behavior group.
2.
In the States row, click on the “Add or select further states” field and do one of the following:
- Select the state from the list.
- Start typing to filter the entries in the list. While you type, a “contains” search is applied to the
list entries. Then select the state.
- Type the state name and then select Add <state name>.
- To change an already set state, click on the name. The name is removed. Then select another
state from the list.
The state is shown as a tag in the States field.
3. To remove a state, click on the name.
The state tag is removed.
Script Tasks Script tasks are tasks that start a script in the Asset Management Script Engine for synchronous execution.
The following section provides information about the properties you can set for Script tasks.
The Properties Pane for Script Tasks The Properties pane displays information about the element selected in the Drawing pane. Here you can enter or modify the properties of the individual process elements. For Script tasks the information and control elements are arranged into the following groups:
Group Description Identification Provides a name for the selected element that will be read by the Process Engine, and a description that is only used within the Process Modeler. For additional information, see "Assigning Identifier" on page 51.
Behavior Defines the input and output during attribute mapping, assigns the name of the script that shall be started, and defines the states that the script task can reach during execution. For additional information, see "Options for Defining the Behavior" below.
To display the properties for a script task:
- Select the task in the Drawing pane.
The Properties pane shows the task properties.
Options for Defining the Behavior The following illustration and table explain the options for defining the behavior of a script task.
6 Defining Task Properties Item Description 1 Script Name Defines the name of the script that is called. You can select the script from a list that provides all available scripts uploaded to the Script Engine. For additional information, see "Assigning a Script Name" below.
2 Inputs Determines which values are passed to the script. The target variable name and either the source property or a constant to initialize the variable have to be specified in the Inputs/Outputs dialog box that you open by using the Configure button at the right hand side of the Outputs field. The Inputs field shows the number of defined inputs.
3 Outputs Determines which values are returned from the script. The target property and the source script variable have to be specified in the Inputs/Outputs dialog box.The Outputs field shows the number of defined outputs. For additional information, see "Defining Inputs and Outputs" on the next page.
4 States Defines the states that the script task can reach when it is executed. For additional information, see "Defining States" on page 75.
Assigning a Script Name You have to define the name of the script called by the script task.
To assign a script to the script task:
1. In the Properties pane, go to the Behavior group.
2. In the Script Name row, click on the “Add or select a script name” field and do one of the following:
- Select the script name from the list.
- Start typing to filter the entries in the list. While you type, a “contains” search is applied to the
list entries. Then select the script name.
- Type the script name including the file extension and then select Add <script name>.
> **Note:** The script name you type must match the name of the corresponding script that is
uploaded to the Asset Management Script Engine. Make sure the corresponding script is available in the Script Engine and check how it is spelled using the Orchestration Monitor.
If you use a mismatching name, the script will not be started, and the process will fail at this point.
- To change an already set script name, click on the name. The name is removed. Then select
another script name from the list.
6 Defining Task Properties Defining Inputs and Outputs To use attribute mapping, you have to define inputs or outputs or both.
- Inputs: Define which values are passed to the script by specifying the target’s variable name in the
script, as well as either the source property or a constant. In effect, the specified script variables will be set to initial values by the Process Engine before the script starts the execution.
Outputs: Define which values are returned from the script by specifying the target property and the
- source script variable. In effect, the specified properties will be set to new values when the script
returns from execution.
For additional information, see "Input and Output Mapping of SWoDL Variables to Process Attributes" on page 74.
To ease the input and avoid entering invalid values, values retrieved from the backend are provided by the variable and process attribute input controls (“Add a valid value here”). Note the following requirements:
- Process Attributes are only available if the Process Model was loaded from the server.
- Script Variables (input and output) are only available if you selected a valid script that was uploaded
to the Script Engine before.
The script variables will be loaded using the ScriptEngineDispatcher.
Suggestions are not supported for Python scripts.
- You can apply a filter to the list entries: Click on the input control, and start typing to filter the entries in the
list that opens. While you type, a “contains” search is applied to the list entries. Then select the list entry.
To define inputs and ouputs:
1. In the Properties pane go to the Output field and click the Configure button.
The Inputs/Outputs dialog box opens. By default, the Inputs and Outputs groups are arranged side- by-side.
2. (optional) To arrange the Inputs and Outputs groups one below the other, click the Change layout
button.
6 Defining Task Properties Click the button again to switch back to the side-by-side layout.
3.
To define inputs, go to the Inputs group and do the following:
a.
(optional) Define if the input a constant by checking the Constant check box.
b.
Type the name of the target property in the Process Attribute or Constant field or click in the field and select the property from the list that opens.
c. You can also use a configuration key as input. To do so, type the URI to the configuration key in the syntax MAMConfig://Profile/Section/Key and mark it as a Constant.
d. You can also pass an empty value as input parameter for a Constant.
e. Type the name of the script variable in the Script Variable field or click in the field and select the variable from the list that opens.
f. (Optional) To add an additional input, click the + (Add row) button and repeat steps a through c.
g.
(Optional) To remove an input, click the trash bin (Remove row) button.
An input definition may look like the following example.
4. To define outputs, go to the Outputs group and do the following:
a. Type the name of the script variable in the Script Variable field or click in the field and select the variable from the list that opens.
b.
Type the name of the target property in the Process Attribute field or click in the field and select the property from the list that opens.
c. (Optional) To add an additional output, click the + (Add row) button and repeat steps a and b.
d. (Optional) To remove an output, click the trash bin (Remove row) button.
An output definition may look like the following example.
6 Defining Task Properties
5. Do one of the following:
- Click the X (Save and close) button.
The Inputs/Outputs dialog box is closed and the in- and output definitions are assigned. The Input field shows the number of defined inputs, the Output field shows the number of defined outputs.
- Press the Esc key.
The Inputs/Outputs dialog box is closed but your changes are discarded Input and Output Mapping of SWoDL Variables to Process Attributes SWoDL variables may be mapped to process attributes in different ways, as shown in the following examples for input mapping. Note that output mapping works the same way as input mapping.
Mapping single value attribute The variable is populated with an attribute value in string representation, as shown in the following example:
Mapping entire multi-value (MV) and multi-value compound attributes (MVC) Mapping an entire MV/MVC attribute is the same as for a single-value attribute. In this case, the variable's value is an array of structs, where every struct is a row of the MVC attribute, with fields that are mapped to MVC sub-attributes.
6 Defining Task Properties Mapping one row of an MV/MVC attribute The index of an MV/MVC attribute may be an integer value or a LoopIndex variable. Expressions in '[]' brackets are not allowed. The variable's value in this case is a struct with fields that are mapped to MVC sub-attributes.
> **Note:** The value in '[]' brackets is not an 'index' attribute of the MV/MVC attribute. It is an index of the
MV/MVC’s row. Example: There are 3 rows in an MVC attribute that have the indices 1, 23, 99 and the mapping is P_TASK_LIST[1]. In this case, the variable will be populated by an attribute with index ‘3’.
Mapping one sub-attribute of an MVC attribute into a variable You can use an integer value or a LoopIndex in ‘[]’ brackets. In this case, the variable's value is the sub- attribute’s value in string representation.
> **Note:** If an entire MV/MVC is mapped, it is overwritten by the value of the SWoDL variable. If mapping an
MV/MVC row (for example, P_TASK_LIST[1]), the entire row is overwritten by the variable's value.
Defining States You can define the states that the script task can reach when it is executed.
To define states for the script task:
1. In the Properties pane, go to the Behavior group.
2. In the States row, click on the “Add or select further states” field and do one of the following:
- Select the state from the list.
- Start typing to filter the entries in the list. While you type, a “contains” search is applied to the
list entries. Then select the state.
6 Defining Task Properties
- Type the state name and then select Add <state>.
- To change an already set state, click on the name. The name is removed. Then select another
state from the list.
The state is shown as a tag in the States field.
3.
To remove a state, click on the name.
The state tag is removed.
7 Using Sub-Processes and Sub-Process Properties 7 Using Sub-Processes and Sub-Process Properties Process Modeler allows you to define sub-processes as “placeholders” for more complex parts of the process model. A sub-process is a logical group of tasks represented as a single element in the process model. A sub-process has no process instance of its own, so it has no “local variables” within a process instance.
Unlike a process that displays Properties when you click within the Drawing pane, you will only see the Name and Description fields in the Properties pane when you click within the Drawing pane of the sub- process. To edit the properties of a sub-process select the sub-process shape in the Drawing pane of the main process, and then go to the Properties pane.
Since parallel sub-processes and sequential sub-processes can be executed with iterations, the umbrella term “loop” is used for these sub-process types.
The following topics provide information about the basic sub-process actions you can perform:
"Opening and Editing Sub-Processes" below
- "The Properties Pane for Sub-Processes" on the next page
- Opening and Editing Sub-Processes
When modeling a process with a sub-process, “inline editing” (modeling the sub-process within the same tab of the Drawing pane as the main process) is not supported: A separate tab has to be opened in the Drawing pane for each sub-process. Each tab on the Drawing pane shows a colored marker; the main process and its sub-processes share the same color.
When you hover the mouse pointer over the tab of a sub-process, a pop-up shows you the “hierarchy” of the sub-process.
To open and edit a sub-process:
1.
Open the main process in the Drawing pane.
2.
Select the sub-process shape in the Drawing pane.
3.
Open the context menu for the sub-process and select the Open in New Tab button.
A new tab for the sub-process is opened in the Drawing pane.
7 Using Sub-Processes and Sub-Process Properties
4. Add shapes, arrange them in the usual way, and define their properties. Do not forget to add Start
and End events to the sub-process.
5.
Click the X icon in the sub-process tab to close the sub-process.
The tab is closed and the sub-process changes are written to the main process. There is no separate Save dialog for a sub-process. The changes need to be saved together with the main process when it is closed.
To delete a sub-process:
1. Open the main process in the Drawing pane.
2. Select the sub-process shape in the Drawing pane.
3. Open the context menu for the sub-process shape and select the Remove button.
The sub-process shape and all connected transitions are removed from the main process in the Drawing pane. If you delete a sub-process shape while the corresponding sub-process is open in its own tab in the Drawing pane, the sub-process tab is also removed.
The Properties Pane for Sub-Processes The Properties pane displays information about the element selected in the Drawing pane. Here you can enter or modify the properties of the individual process elements.
For sub-processes the information and control elements are arranged into the following groups:
- Identification (all sub-process types)
- Behavior (only shown for parallel sub-processes and sequential sub-processes)
The following illustration and table provide information about the fields that are displayed in the Properties pane for a sequential sub-process.
7 Using Sub-Processes and Sub-Process Properties Item Description 1 Identification Provides a name for the selected element that will be read by the Process Engine, and a description that is only used within the Process Modeler. For additional information, see "Assigning Identifier" on page 51.
2 Behavior Defines the reaction of the loop. For additional information, see "Defining the Behavior of Sequential Sub-Processes" below and "Defining the Behavior of Parallel Sub-Processes" on the next page.
To display the properties for a sub-process:
- Select the sub-process shape in the Drawing pane of the main process.
The Properties pane shows the sub-process properties.
Defining the Behavior of Sequential Sub-Processes The following properties can be defined in the Behavior group for a sequential sub-process.
Item Description 1 Iterations Specifies the maximum number of loop iterations. This can be used to perform a loop count with a fixed number of iterations. Valid inputs are integer values in the range 0 through 10 000. The Iterations value can only be defined when no Condition is set. If Condition is empty and 0 is set as Iteration, the loop is skipped.
2 Condition Check Specifies if the Condition is evaluated before the sub-process is started (this means the loop is “head-controlled”) or after the sub-process has been executed (this means the loop is “foot-controlled”). The Condition Check value can only be changed when a condition is set.
7 Using Sub-Processes and Sub-Process Properties Item Description 3 Condition Specifies a conditional expression that must be met in order to “keep on looping.” In doing so, you can use the special value “LoopIndex” to refer to the number of the current iteration. If left blank, an Iteration other than 0 should be set.
4 Condition Help you specifying the conditional expression in the Condition text box.
Formulation Buttons to insert Operators
- controls
Lists to select process attributes and predefined values, task lifecycles,
- specific task lifecycle values, and task state conditions
- Buttons to surround selected elements by Functions
To define the behavior of a sequential sub-process:
1.
Select the Sequential sub-process shape in the Drawing pane of the main process.
The properties for the sub-process are shown in the Properties pane.
2.
To define the iteration maximum, do the following:
a.
Type the maximum number of loop iterations in the Iterations text box.
Valid inputs are integer values in the range 0 through 10 000.
b.
Click outside the Iterations text box.
The input is validated. If you entered an invalid value, a message indicates the allowed value range.
3.
Select when the condition is to be evaluated from the Condition Check selection list:
- After = the loop is foot-controlled.
- Before = the loop is head-controlled.
4.
To define a condition for the loop, do the following:
a.
Click in the Condition text box and type the condition in the following form (separated by blanks): <expression> <operator> <value> (example: LoopIndex < 5). For more information, see "Supported Expressions" on page 59.
While formulating the condition, use the following Condition Formulation controls to insert the selected element in the Conditions text box at the current cursor position (or at the end if the cursor is positioned outside):
  - Click one of the Operators buttons.
  - Select a predefined value or process attribute from the Process Attributes list (only
available if the process model was opened from the server).
  - Select a task lifecycle of a user or script task available in the process model from the
Task Lifecycle list.
  - Select the value of a task lifecycle from the Task Lifecycle list.
  - Select a task state condition from the Task State Condition list.
  - Select the condition elements in the Conditions text box that are to be included in a
function and click one of the Functions buttons.
b. Click outside the Condition text box.
Defining the Behavior of Parallel Sub-Processes The following properties can be defined in the Behavior group for a parallel sub-process.
7 Using Sub-Processes and Sub-Process Properties Item Description 1 Iterations Specifies an expression that defines the number of the parallel threads (the expression must be met in order to create the number of parallel threads). You can use any expression that results in an integer value. For additional information, see "Supported Expressions" on page 59.
You can also set an Integer value in the range 0 through 10 000.
To define the behavior of a parallel sub-process:
1. Select the Parallel sub-process shape in the Drawing pane of the main process.
The properties for the sub-process are shown in the Properties pane.
2. To define an iteration expression for the loop, click in the Iterations field and type an integer or
expression resulting in an integer (example: NumberOfEdls or 5).
3. Click outside the text box.
If you entered an integer value, the input is validated. In case of an invalid input a message indicates the allowed value range.