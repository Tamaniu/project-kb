---
product: avid-content-core
product-area: cloud-platform
version: "0.0.3"
doc-type: user-guide
source: avid-official
source-url: https://docs.avid.com/acc/Content/ACC_Help/RaA_Using.htm
confidentiality: public
date-added: 01/05/2026
last-updated: 01/05/2026
status: current
feature-tags: [content-core, review-and-approval, tasks, approval-workflow, comments, stages, journalist, editor, approver, notifications, sequences, master-clips]
---

# Avid Content Core — Review and Approval

**Sources:** docs.avid.com ACC Help — Using the Review and Approval App, Using Review and Approval Tasks  
**Extracted:** 01/05/2026 | Docs version: 0.0.3

---

## Overview

The Review and Approval (R&A) app enables content creators to have their work reviewed by team members with the Approver role. Reviewers can either approve content for publishing or provide feedback for further refinement. The process can be repeated as many times as necessary.

> Review comments are stored **within ACC only** (associated with proxy media). They are **not pushed back** to any on-prem system. If an asset is deleted, its review comments are also deleted.

---

## App Layout

| # | Area | Description |
|---|---|---|
| 1 | App Header | Asset name, Stage Menu (current task status), Dock button, Context Menu (Edit sequence in Web Editor; Switch to Tasks app), Close button. When docked, layout goes vertical (player top, comments below); a Maximise button hides the player to maximise comment space. |
| 2 | Media Viewer | Displays the asset loaded into the app. |
| 3 | Position Indicator Panel | Blue position indicator bar; left timecode = current position; right timecode = asset length; In/Out marks shown when set. |
| 4 | Playback and Edit Controls | Play, scrub, and Mark In/Out. JKL keys work here as in the Player. |
| 5 | Comments Filter | Filter comments by typed text in real time. |
| 6 | Comment / Threads List | Comments sorted by timecode (`HH:MM:SS.mmm`). Each shows username and relative timestamp (hover for exact date/time). Reply button enables threaded discussions. Click any comment to jump the position indicator to that timecode. |
| 7 | Scroll Bar | Navigate through comments. |
| 8 | Use Span | When In/Out marks are set, adds a comment to a time span rather than a single frame. |
| 9 | Comment Field | Text input for comments. |
| 10 | Send | Submits a comment (also: Ctrl+Enter / Cmd+Enter). |

---

## Workflows

### Sequence Review Workflow

1. Editor creates a sequence in the Web Editor.
2. Editor submits the sequence for approval via the **Search app** (right-click → Request a Review).
3. Reviewer opens the task in the Tasks app and R&A app, then either:
   - **Approves**: task is complete.
   - **Rejects**: task is automatically reassigned to the creator.
4. If rejected: editor uses the comments to revise the sequence and resets the task to **Requested**.
5. Task returns to the reviewer. Process repeats as needed.

> If the same sequence is submitted in two separate tasks, comments from the first review are **not carried forward** to the second task.

### Master Clip Review Workflow

For master clips (which cannot be edited), the R&A process allows reviewers to add comments highlighting segments to use or avoid. No edit cycle is required.

---

## Comment Rules

- Standard text in any language supported by the workstation.
- Press Enter/Return for a new paragraph.
- Emojis are supported.
- Hyperlinks are **not** converted to clickable hotlinks.
- Images or other digital assets **cannot** be attached to comments.
- Comments are associated with the proxy timecode; they are **not** Production Management markers.

---

## Comment Status Icons

| Icon | Meaning |
|---|---|
| Information | The sequence has been changed since this comment was made. |
| Warning | The sequence has been changed and it has been **24 hours or more** since that change. |
| Error | The sequence has been changed and this comment no longer applies — it points to a timecode that no longer exists. Example: a comment at `00:04:30` becomes an error if the last minute of a 5-minute sequence is deleted. |

Hover over the icon for a tooltip. To eliminate invalid comments, create a new task for a fresh review.

---

## Submitting an Asset for Review

1. In the Search app, **right-click** an asset (sequence or master clip) → **Request a Review**.
2. Complete all required fields in the task creation window. Click **Add** to save.

---

## Reviewing an Asset

1. Open a task using any of:
   - **Tasks app** → double-click the task.
   - **Tasks app** → right-click the task → **Open in Review and Approval app**.
   - Click an **R&A notification**.
2. Play or scrub through the asset.
3. To add a comment:
   - Move the position indicator to a specific frame, or
   - Set Mark In/Out points for a time span.
4. Type in the comment field.
5. If In/Out points are set, tick **Use Span** to apply the comment to the spanned region.
6. Click **Send** or press **Ctrl+Enter** (Win) / **Cmd+Enter** (Mac).
7. Use the **Stage menu** to update the review status (see Stage Reference below).

---

## Stage and State Reference

| Stage | Transitions Available | Task State |
|---|---|---|
| Requested | Approve, Reject, Cancel | Not started / In progress |
| Rejected | Request, Cancel | In progress |
| Approved | *(none — terminal)* | Completed |
| Cancelled | *(none — terminal)* | Completed |

- Tasks that allow stage changes show a **drop-down arrow** next to the stage icon.
- Tasks where the stage cannot be changed show only the **coloured stage icon**.
- If a task is **Rejected**, it is automatically reassigned to the user who created it.

### Stage Permissions by Role

| Role | Request | Approve | Reject | Cancel |
|---|---|---|---|---|
| Viewer | Create task only | ✗ | ✗ | ✗ |
| Editor / Journalist | ✓ | ✗ | ✗ | ✓ |
| Approver | ✓ | ✓ | ✓ | ✓ |

---

## Using Review and Approval Tasks (Tasks App)

The **Tasks app** Details view can also be used to run the Approval step directly.

### To change the stage in the Tasks app

1. Open the Details panel of the task.
2. Click the stage icon or drop-down arrow.
3. Select the desired stage.

### To create a Review and Approval task

1. Right-click a sequence or master clip in the Search app → **Request a Review**.
2. The task creation window opens with defaults:
   - State: Not started (cannot be changed before saving)
   - Name: "Review for \<asset name\>"
   - No Assignee, Start Date, or Due Date
   - Priority: Medium
   - Stage: Requested (cannot be changed before saving)
3. Click the **Assignee** control and assign to one user. Only one assignee per task.
4. Fill out any other fields. Click **Add** to save.
5. A notification is sent to the Assignee.

### To open a task in the R&A app (from the Tasks app)

- Double-click the task in the Tasks list, or
- Right-click → **Open in Review and Approval app**, or
- Click an R&A notification.

If the task has no attached asset: *"The task has no asset attached, so review and approval is not possible"*.

### To switch from R&A app to Tasks app

- In the R&A app header, click the **App Menu** → **Switch to Tasks app**. The Tasks app opens with the task selected and details shown.
