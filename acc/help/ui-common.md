---
product: avid-content-core
product-area: cloud-platform
version: "0.0.3"
doc-type: user-guide
source: avid-official
source-url: https://docs.avid.com/acc/Content/ACC_Help/Common_Docking.htm
confidentiality: public
date-added: 01/05/2026
last-updated: 01/05/2026
status: current
feature-tags: [content-core, ui, docking, open-in, notifications, fast-bar, context-menu, default-app]
---

# Avid Content Core — Common UI Behaviours

**Sources:** docs.avid.com ACC Help — Docking Apps, Choosing the App for Opening Assets, Viewing Notifications  
**Extracted:** 01/05/2026 | Docs version: 0.0.3

---

## Docking Apps

The area to the right of the Fast Bar is the **dockable app space**. Docking an app reduces it in size, placing it to the left of the UI so a second app can be open simultaneously in the main area to the right.

### Docking Rules

- Only **one app** can be docked at a time. Docking a second app replaces the first.
- If one app is docked and another is open in the main area, the app in the main area remains.
- Undocking an app fills both the dock and main areas; any app previously in the main area is automatically closed.
- Width of a docked app can be adjusted by dragging the separator bar. This does not affect the Player area width.
- Some apps, including the **Web Editor**, **do not support docking**.

### To Dock an App

- Click the app's **Dock** button (if available), or
- Click, drag, and drop an app from the Fast Bar to the **left side** of the UI. The drop zone highlights with a blue frame.

### To Undock an App

- Click the **Undock** button (if available), or
- Drag and drop the docked app to the main area of the UI.

---

## Choosing the App for Opening Assets (Open In)

ACC allows assets to be opened in multiple apps. The **Open In** context menu lists all apps that support the selected asset type. The current default app is identified by "(Default)".

### Behaviour When Using Open In

- The originating app is **docked** (if applicable) and the asset opens in the selected app in the main area.
- The asset is also loaded into the **Player** (if applicable); the Player expands automatically.
- Only **one asset** can be opened at a time — multi-selection is not supported with Open In.

### Default App Preferences

- Stored in the **local browser cache** — preferences do not follow you across workstations.
- Clearing the browser cache resets all default app preferences.
- If the Web Editor is set as the default for master clips, ACC opens the Web Editor and prompts you to select or create a project/sequence.

### To Open an Asset Using Open In

1. Right-click an asset.
2. Select the desired app from the **Open In** context menu.

### To Define the Default App

1. Right-click an asset and select **Manage Default App** from the Open In context menu, or double-click an asset with no default defined.
2. In the dialog, click the button to the left of the app icon to select it as default.
3. Click **Open** or **Save**.

---

## Viewing Notifications

Notifications alert you to system events relating to your ACC account — primarily Review and Approval task updates.

### Notification Appearance

- A **message banner** appears in the upper-right corner when a new notification arrives, showing title, message detail, and timestamp.
- For R&A notifications, the message includes task due date and stage.
- Multiple simultaneous notifications stack vertically (most recent at top).
- Each banner stays on screen for a few seconds then disappears automatically.

### Notification Types

| Icon | Trigger |
|---|---|
| Review and Approval | Task created and assigned; stage changed (Requested / Rejected / Approved / Cancelled); user assigned or unassigned from a task |

### Interacting with Banners

- **Click the banner** to open the relevant app with the asset loaded.
- **Click X** on the banner to dismiss it.
- **Esc** closes the notification and returns focus to the previously active element.
- If focus is elsewhere, it shifts automatically back when the banner disappears.

### Missed Notifications

A number badge appears on the Notifications Fast Bar button showing the count of unread messages (including those generated while signed out). The counter clears after accessing the notification. The app retains the **last 50 notifications**.

### Accessing the Notifications App

- Click the **Notifications** button in the Fast Bar. The Notifications app appears as an overlay from the right side. Most recent messages appear at the top; a scroll bar navigates older items.

### To Use a Notification

- Click a Review and Approval notification to open the R&A app with the associated asset loaded into the player.

### To Close the Notifications App

- Click the **X** (upper-right of the overlay), or
- Click anywhere outside the Notifications app, or
- Click on a notification in the app.
