# New Features in MediaCentral | Newsroom Management 2024.10.4

## Newsroom Management Server

### Notify Server

You can configure the Notify Server using environment variables to send messages about change events related to folders, queues, or stories to a Kafka topic.

Other systems can consume these messages to react to changes occurring in the Newsroom Management system.

This feature is intended for future integrations (for example, the Cloud UX Rules Engine) and **should only be enabled when an integration explicitly requires it**.

### iNEWS CTC

Newsroom Management now delivers a more comprehensive and dynamically built **CTMS data model**.

For improved performance, the model is stored in the queue defined by **Q_SYSTEM_MODEL**.

---

## iNEWS Workstation

### Clear Channel option in MOS-MAP

Previously, the `ClearChannelOnMOSDrop` environment variable controlled whether the channel field was cleared when a MOS item was dragged and dropped onto a story, regardless of MOS device.

In 2024.10.4, administrators can control this behaviour **per MOS device** by editing the `SYSTEM.MOS-MAP` story.

To enable clearing of the item-channel field for a specific MOS device:
- Add the appropriate token to the device table entry for that device in `SYSTEM.MOS-MAP`

Note:
- The `ClearChannelOnMOSDrop` environment variable **overrides all per-device settings**
- If per-device behaviour is required, this variable must be disabled via the Registry Editor on the workstation

### Improved key mapping for macros

To improve reliability when working with macros:
- The system now validates whether keys can be mapped to virtual keys before playing or saving a macro
- If a mapping issue is detected, the user is notified via a confirmation message
