---
product: mediacentral-cloud-ux
product-area: newsroom-platform
version: "2022.12"
release-date: 01/12/2022
doc-type: new-features
source: avid-official
confidentiality: public
date-added: 16/04/2026
status: superseded
---

# New Features in MediaCentral Cloud UX 2022.12.0 to 2022.12.2



# New Features in MediaCentral Cloud UX 2022.12.0

## Asset Editor


## Associations App


## Browse App


## Cloud Integrations


## Collaborate App


## Collaborate Mobile App



## Installation and Configuration


## Layouts


## MediaCentral Acquire


## MediaCentral Panel for Panel for 3rd Party Creative Tools


## MediaCentral Sync App


## Send to Playback


## Router Control


## Rundown App


## System


## Tasks App


## User Management

## 

# New Features in MediaCentral Cloud UX 2022.12.1

## Temporary File Cleanup Script

When executing a local Send to Playback job using LongGOP media, local systems are responsible for removing any temporary files that might be generated during the STP process. However when performing a Remote STP job, those remote systems cannot perform that same cleanup on your local Avid NEXIS storage. You can find more information about “STP Encode Workflow: Background Processing and Transferring of Long GOP Media” in the Avid MediaCentral | Production Management Best Practices Guide. Temporary Op1a files are created on your local Avid NEXIS system in a /temp folder that is created at the root level of the workspace during the STP process. The process creates this folder on the workspace that has the most amount of free space on it. Since this selection is automated, you might have multiple workspaces with temp folders (as the amount of free space might change over time). This release includes a new script that allows you to configure and automate the cleanup of these temp files on your local Avid NEXIS system. The cleanup is limited to the path that you specify in the following script. As long as you specify the correct path, other folder paths, such as the Avid MediaFiles folder, are unaffected and untouched by this process. To configure the auto-cleanup script: 1. Sign into your single server or primary master node as the root user. 2. Copy the example configuration file to its active location (/etc/avid/config/): cp /opt/avid/examples/config/nexis-cleanup.yaml /etc/avid/config/nexiscleanup.yaml 3. Use the Linux vi editor to open the configuration file for editing: vi /etc/avid/config/nexis-cleanup.yaml 4. (optional) Uncomment (delete the # symbol) and edit the default configuration values. For example, you could uncomment the line that refers to the age of the files and alter the default value of 24 hours if you wanted to retain the temp files for a longer period of time. 5. Configure the Avid NEXIS workspaces that will be involved in the STP workflow. a. Delete the brackets [] on the pathList: line, and delete the # symbol to uncomment the default Avid NEXIS workspace value. For example: # All paths must be relative to global.media_mount pathList: - '/nexis-1/workspace/files' b. Customize the default value with your Avid NEXIS System Name, workspace name, and path. For example: - '/wavd-nexis/ingest/temp' Updating the MediaCentral Cloud UX System 4 c. As noted above, temp files might be created on one or more workspaces — depending on the amount of free space available at the time of the STP job. If necessary, you can create one or more new lines in the file — each with a different workspace name. For example: # All pathes must be relative to global.media_mount pathList: - '/wavd-nexis/ingest/temp' - '/wavd-nexis/news/temp' - '/wavd-lab/testing/temp' 6. Save and exit the vi session. Press and type: :wq 7. Finally, you must redeploy the system to enable this configuration file. avidctl platform redeploy For details, see “Altering the Configuration” in the Avid MediaCentral | Cloud UX Installation Guide.



# New Features in MediaCentral Cloud UX 2022.12.2


## Avid Maestro Preview Frame
Originally introduced in MediaCentral Cloud UX 2021.11.3, the Avid Maestro Preview Frame feature can now be controlled through a toggle in the Configuration Settings app. This setting determines how the preview is rendered. n If you do not see this option, verify that the MaestroMOSService.exe is Running in the Maestro Monitor app. To reconfigure the Preview setting: 1. Sign into the MediaCentral Cloud UX Administrator page and select the Configuration Settings app. 2. Select Integrations > Graphics Management from the app’s sidebar. 3. Enable or disable the Full Preview on Page Open check box. You can refer to the following table for information on how this toggle effects the preview. For more information on these settings, see the Avid MediaCentral | MOS Panel for Graphics documentation. 4. Click the Save button in the Configuration Settings app to save your changes. Setting Operation Result Full Preview Enabled Open Asset Trigger Full Preview Change Asset Data Animated preview Animated preview Single image preview Full Preview Disabled Open Asset Trigger Full Preview Change Asset Data Single image preview Animated preview Single image preview New Features in MediaCentral Cloud UX 2022.12.1 3 5. If you update this setting, you must do the following: - Sign out of MediaCentral Cloud UX. - Restart the Maestro | News Services to enable the configuration change. - Ensure that MaestroMOSService.exe is Running in the Maestro Monitor app.
