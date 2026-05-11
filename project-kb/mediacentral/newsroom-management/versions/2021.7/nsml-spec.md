---
product: mediacentral-newsroom-management
product-area: engineering-spec
version: "2021.7"
release-date: 29/07/2021
doc-type: engineering-specification
source: avid-official
source-file: NSML-Specs-v42-2021-7.pdf
confidentiality: public
date-added: 28/04/2026
status: superseded
superseded-by: "2021.7.1"
feature-tags: [nsml, nsml-v4.2, story-markup, xml, fields, production-cues, mos, display-attribute, real-name, grammar, reserved-fields]
---

# News Story Markup Language (NSML) — Engineering Specification v4.2

**Version:** 4.2  
**Document date:** 29 July 2021  
**Applies to:** MediaCentral | Newsroom Management v2021.7 and later

---

## Change from v4.1 to v4.2

The only change from NSML v4.1 to v4.2 is the addition of a `display` attribute to the `<string>` tag in the `<fields>` section.

The `display=` attribute is optional. If present, it stores the user's real name corresponding to the field data for fields CREATE-BY, ENDORSE-BY, MODIFY-BY, and WRITER, which contain the user login name.

Example:
```xml
<string id="modify-by" display="John Doe">jdoe</string>
```

This attribute supports the Real Name Display feature introduced in MCNM v2021.7. See `readme.md` for that version for the enabling procedure (`display_user_realname=YES` in `/site/system`).

---

## NSML Document Structure

An NSML document is an XML document. The root element is `<nsml>`. The document structure is:

```
nsml
  ├── head
  ├── projects
  ├── fields  (story fields — <fields> tag)
  ├── body    (story body text — <body> tag)
  ├── aeset   (anchored elements — production cues)
  └── aeset-atts  (anchored element attachments — MOS data)
```

The `version` attribute on the `<nsml>` root element indicates the NSML version (e.g. `version="4.2"`).

---

## Grammar Notation

The following notation is used in tag definitions throughout this document:

| Symbol | Meaning |
|---|---|
| `?` | Zero or one occurrence |
| `*` | Zero or more occurrences |
| `+` | One or more occurrences |
| `\|` | Or |
| `[REQUIRED]` | Attribute must be present |
| `[OPTIONAL]` | Attribute is optional |

---

## Section 6 — Document Head: the `<head>` Tag Content

The `<head>` element contains story metadata.

### `<meta>`

| | |
|---|---|
| **Function** | Defines word count and read-rate metadata |
| **Attributes** | `words` — word count; `rate` — words per minute |
| **Contains** | Nothing |
| **Used in** | `head` |

### `<formname>`

| | |
|---|---|
| **Function** | Identifies the queue form name associated with the story |
| **Contains** | `plain_text` ? |
| **Used in** | `head` |

### `<storyid>`

| | |
|---|---|
| **Function** | The iNEWS internal story identifier |
| **Contains** | `plain_text` ? |
| **Used in** | `head` |

### `<uuid>`

| | |
|---|---|
| **Function** | The globally unique identifier for this story |
| **Contains** | `plain_text` ? |
| **Used in** | `head` |

### `<uuidorig>`

| | |
|---|---|
| **Function** | The UUID of the original story (matches `<uuid>` unless the story has been copied) |
| **Contains** | `plain_text` ? |
| **Used in** | `head` |

---

## Section 7 — Story Form: the `<form>` Tag Content

The `<form>` element defines the visual layout of story fields for display in the queue panel.

### The `<row>` Tag

| | |
|---|---|
| **Function** | Defines a row of cells in the queue form |
| **Attributes** | `height` — decimal number |
| **Contains** | `cell_tag` * |
| **Used in** | `form` |

### 7.1 The `<stringcell>` Tag

| Attribute | Type | Notes |
|---|---|---|
| `idref` | id of a `<string>` tag in `<fields>` | |
| `length` | decimal number | display width |
| `style` | `"b"` \| `"i"` \| `"u"` \| `""` \| space-separated list | |
| `align` | `"left"` \| `"right"` \| `"center"` | |
| `ro` | boolean | read-only |
| `aready` | boolean | affects READY field |
| `llength` | decimal number | label display width |
| `lstyle` | `"b"` \| `"i"` \| `"u"` \| `""` | label style |
| `lalign` | `"left"` \| `"right"` \| `"center"` | label alignment |
| `lposition` | `"left"` \| `"right"` \| `"top"` \| `"bottom"` | label position |
| `limit` | boolean | |
| `wg` | decimal number | |
| `mandatory` | boolean | |

Contains: `plain_text` ?  
Used in: `row_tag`

### 7.2 The `<checkboxcell>` Tag

| Attribute | Type |
|---|---|
| `idref` | id of a `<boolean>` tag in `<fields>` |

See `<stringcell>` for description of common attributes.  
Contains: Nothing  
Used in: `row_tag`

### 7.3 The `<projects>` Tag and Related Tags

The `<projects>` section identifies the project(s) and facets the story belongs to.

#### `<project>`

| | |
|---|---|
| **Function** | Identifies a project UUID |
| **Contains** | `plain_text` ? |
| **Used in** | `projects` |

#### `<facet>`

| | |
|---|---|
| **Function** | Identifies a facet UUID within a project |
| **Contains** | `plain_text` ? |
| **Used in** | `projects` |

### 7.4 The `<comboboxcell>` Tag

| Attribute | Type |
|---|---|
| `idref` | id of a `<string>` tag in `<fields>` |

See `<stringcell>` for description of common display attributes.  
Used in: `row_tag`

#### 7.4.1 The `<label>` Tag

| | |
|---|---|
| **Function** | Defines the label text for a combobox field |
| **Attributes** | None |
| **Contains** | `plain_text` ? |
| **Used in** | `comboboxcell` |

#### 7.4.2 The `<entry>` Tag

| | |
|---|---|
| **Function** | Defines one entry of the drop-down list for a combobox field |
| **Attributes** | `bg` — decimal number (optional; background colour applied to field when this entry is selected) |
| **Contains** | `plain_text` ? |
| **Used in** | `comboboxcell` |

The `bg=` attribute is optional. It defines a background colour applied to the field when this entry is selected from the combobox list. It is a decimal number identifying a system colour. System colours are not defined in this specification. If not specified, defaults to zero (no background colour).

#### 7.4.3 The `<group>` Tag

| | |
|---|---|
| **Function** | Defines a set of user names as entries for the drop-down list of a combobox field |
| **Attributes** | `id` [REQUIRED] — user group name; `bg` — decimal number |
| **Contains** | `plain_text` ? |
| **Used in** | `comboboxcell` |

The `id=` attribute is required. This is the name of a user group.

#### 7.4.4 The `<list>` Tag

| | |
|---|---|
| **Function** | Defines a set of text strings as entries for the drop-down list of a combobox field |
| **Attributes** | `id` [REQUIRED] — system list name; `bg` — decimal number |
| **Contains** | `plain_text` ? |
| **Used in** | `comboboxcell` |

The `id=` attribute is required. This is the name of a system list that contains zero or more text strings.

---

### 7.5 The `<datecell>` Tag

| | |
|---|---|
| **Function** | Defines the presentation/appearance of a date field |
| **Attributes** | `idref`, `length`, `style`, `align`, `ro`, `aready`, `llength`, `lstyle`, `lalign`, `lposition`, `limit`, `wg`, `mandatory` |
| **Contains** | `date_value` ? |
| **Used in** | `row_tag` |

See `<stringcell>` for attribute descriptions.

---

### 7.6 The `<durationcell>` Tag

| | |
|---|---|
| **Function** | Defines the presentation/appearance of a time duration field |
| **Attributes** | `idref`, `length`, `style`, `align`, `ro`, `aready`, `llength`, `lstyle`, `lalign`, `lposition`, `limit`, `wg`, `mandatory` |
| **Contains** | `duration_value` ? |
| **Used in** | `row_tag` |

See `<stringcell>` for attribute descriptions.

---

## Section 8 — Story Fields: the `<fields>` Tag Content

### 8.1 The `<string>` Tag — Defining a Field

| Attribute | Type | Notes |
|---|---|---|
| `id` | [REQUIRED] string | Uniquely identifies the field in the story |
| `urgency` | decimal 1–9 | Optional; clue to applications that field data has exceptional meaning |
| `aready` | boolean | Optional; field content affects the READY field |
| `uec` | boolean | Optional; user has entered content to override system-supplied content |
| `ro` | boolean | Optional; field is read-only |
| `bg` | decimal number | Optional; background colour when entry selected from combobox |
| `display` | string | **New in v4.2.** Optional; stores user's real name for CREATE-BY, ENDORSE-BY, MODIFY-BY, WRITER fields |

Contains: `plain_text` ?  
Used in: `fields_tag`

The `id=` attribute uniquely identifies the field in the story so that it may be referenced and used. The `id` is referenced by the `idref=` attribute of a `<stringcell>` or `<comboboxcell>` within the `<form>` element. Each story will have only one field with a specific `id`.

The `uec=` attribute is only significant for fields that may contain system-supplied content. A true value indicates a user has entered content to override the system-supplied content.

The `ro=` attribute: a true value indicates that the field is read-only. Applications should only allow modifications to this `<string>` when the `ro` attributes of both the `<stringcell>` and the `<string>` are both false.

The `display=` attribute is optional. If present, it stores the user's real name corresponding to the field data for fields CREATE-BY, ENDORSE-BY, MODIFY-BY, and WRITER, which contain the user login name. (**New in v4.2.**)

#### Reserved Field Identifiers

Fields with the following `id` values have specific meaning. In some cases, they contain system-supplied content.

| Field ID | Type | Description |
|---|---|---|
| AIR-DATE | decimal digits | Seconds since Jan 1, 1970 00:00:00 GMT; the time that a story is aired using the show-timing function |
| AIR-END | decimal digits | Seconds since Jan 1, 1970 00:00:00 GMT; a story's end time on air for show-timing stories |
| AIR-DURATION | decimal digits | Story AIR duration with show-timing function |
| ASSIGNMENT | character string | URL link to the assignment created in Media Central | UX; readonly |
| AUDIO-TIME | decimal digits | Audio read time of story in seconds. Normally based on read-rate and word-count but can be user entered |
| BACK-TIME | special | Hard in-time of the story in seconds |
| CA-CAPTURED | character string | Connect session information — number of characters captured |
| CA-DIRECTION | character string | Connect session information — direction of connection (in or out) |
| CA-ELAPSED | character string | Connect session information — duration as HH:MM:SS |
| CA-IDENT | character string | Connect session information — session identifier |
| CA-ORIGIN | character string | Connect session information — originating computer name |
| CA-RECEIVED | character string | Connect session information — number of characters received |
| CA-REMOTE | character string | Connect session information — remote computer name |
| CA-SENT | character string | Connect session information — number of characters sent |
| CG-ADDR | character string | MCS / BCS — CG device address |
| CG-TEMPLATE | character string | MCS / BCS — CG template address |
| CG-TEXT | character string | MCS / BCS — CG text |
| CHANNEL | character string | MCS / BCS — generic event channel |
| CREATE-BY | character string | User name of creator of first version of the story. Users' real names — instead of user login IDs — are displayed in this field if the "display_user_realname" parameter is enabled in the `/site/system` directory |
| CREATE-DATE | decimal digits | Seconds since Jan 1, 1970 00:00:00 GMT |
| CUME-TIME | special | Hard out-time of the story in seconds |
| DEVICE-MGR | character string | MCS / BCS — device manager name |
| DURATION | character string | MCS / BCS — generic event duration |
| EFFECT | character string | MCS / BCS — event effect |
| ENDORSE-BY | character string | Name of user who endorsed the story. Users' real names — instead of user login IDs — are displayed in this field if the "display_user_realname" parameter is enabled in the `/site/system` directory |
| EVENT-STATUS | character string | MCS / BCS — (video) event status |
| ITEM-CHANNEL | character string | MCS / BCS — playout channel for a primary event |
| MAIL-CC | character string | Mail information — cc addressee list |
| MAIL-TO | character string | Mail information — to addressee list |
| MODIFY-BY | character string | User name of the last modifier of the story. Users' real names — instead of user login IDs — are displayed in this field if the "display_user_realname" parameter is enabled in the `/site/system` directory |
| MODIFY-DATE | decimal digits | Seconds since Jan 1, 1970 00:00:00 GMT |
| MODIFY-DEV | character string | Device name on which story was last modified |
| MOS-ACTIVE | character string | MOS — event identifier |
| MOS-DURATION | decimal digits | MOS — event duration |
| MOS-SUBEVENT | character string | MOS — event details |
| MOS-TITLE | character string | MOS — event description |
| MOS-OBJID | character string | MOS — object ID |
| MOS-DEVICE | character string | MOS device — AMCP name of MOSobj in the form |
| PAGE-NUMBER | character string | User entered story identifier |
| PRESENTER | character string | The name of the person who will read the story on-air |
| READY | character string | State of the story. Either READY or ? |
| RESULT-INDEX | character string | Search result information — story sequence number |
| RESULT-LOC | character string | Search result information — story location (queue name) |
| RUNS-TIME | decimal digits | Sum of runs times specified in production cues |
| SEARCH-ID | character string | Search result information — search request identifier |
| STATUS | character string | Status of some element of the story |
| STILL-ID | character string | MCS / BCS — still store event identifier |
| STILL-PRESET | character string | MCS / BCS — still store event preset |
| STYLE | character string | MCS / BCS — event style |
| TAPE-TIME | decimal digits | The run time in seconds of a tape to be played with the story |
| TITLE | character string | User entered story title |
| TOTAL-TIME | decimal digits | Total story time in seconds; sum of audio-time and tape-time |
| VIDEO-ID | character string | VIDEO — (tape / clip) identifier |
| VID-DURATION | decimal digits | VIDEO — duration from MediaCentral Command |
| WRITER | character string | User name of the writer taking credit for the story. Users' real names — instead of user login IDs — are displayed in this field if the "display_user_realname" parameter is enabled in the `/site/system` directory |

**Notes on special field types:**

The **back-time** and **cume-time** field content has a special encoding. Hard in/out times are expressed in seconds as either a relative time or an absolute time (a.k.a. time of day). The time is assumed to be relative unless the first character of the field is a `@` character. For example, a back-time content of 600 specifies a hard in-time of 10 minutes relative to the start of the show. A back-time content of `@600` specifies a hard in-time of 12:10:00 am (10 minutes past midnight).

---

### 8.2 The `<boolean>` Tag

| Attribute | Type |
|---|---|
| `id` | [REQUIRED] string |
| `urgency` | decimal number 1–9 |
| `aready` | boolean |
| `uec` | boolean |
| `ro` | boolean |
| `bg` | decimal number |

Contains: `boolean_value` ?  
Used in: `fields_tag`

Defines a boolean (checkbox) field for a 0 or 1 value. The `id` is referenced by the `idref=` attribute of a `<checkboxcell>` within the `<form>` element.

---

### 8.3 The `<date>` Tag

| Attribute | Type |
|---|---|
| `id` | [REQUIRED] string |
| `urgency` | decimal number 1–9 |
| `aready` | boolean |
| `uec` | boolean |
| `ro` | boolean |
| `bg` | decimal number |

Contains: `date_value` ?  
Used in: `fields_tag`

Defines a field for a date value. The `id` is referenced by the `idref=` attribute of a `<datecell>` within the `<form>` element.

---

### 8.4 The `<duration>` Tag

| Attribute | Type |
|---|---|
| `id` | [REQUIRED] string |
| `urgency` | decimal number 1–9 |
| `aready` | boolean |
| `uec` | boolean |
| `ro` | boolean |
| `bg` | decimal number |

Contains: `duration_value` ?  
Used in: `fields_tag`

Defines a field for a time duration value. The `id` is referenced by the `idref=` attribute of a `<durationcell>` within the `<form>` element.

---

## Section 9 — Story Body: the `<body>` Tag Content

The `<body>` tag attributes:
- `font` — string
- `family` — decimal number (0–5)
- `pitch` — decimal number (0–2)

### 9.1 The `<p>` Tag — Body Paragraph Blocks

| | |
|---|---|
| **Function** | Defines a paragraph of text |
| **Attributes** | `font` — string; `family` — decimal (0–5); `pitch` — decimal (0–2) |
| **Contains** | `content_tag` * and/or `text_content` * |
| **Used in** | `body_tag` |

The `<p>` and `</p>` tags enclose the text of a paragraph. All text is inside paragraphs.

---

### 9.2 Content-based Tags: `<pi>` and `<cc>`

| | |
|---|---|
| **Function** | Define the contained text as having a specific meaning |
| **Attributes** | None |
| **Contains** | `text_content` * |
| **Used in** | `p_tag` |

Content-based tags attach a specific meaning, context or usage to the enclosed text. Content-based tags **may not be nested**.

- `<pi>` and `</pi>` enclose text which is instructions to the presenter reading the story on-air. This text is not included in the timing of the story. It is not intended for display on the closed caption device and is intended for display on the prompter.
- `<cc>` and `</cc>` enclose text which is not read by the presenter on-air but is usually part of a package voice-over which is to be closed captioned. This text is not included in the timing of the story. It is not intended for display on the prompter.

Physical style tags may be nested inside content-based tags to create highlighting effects.

---

### 9.3 Physical Style Text Tags: `<b>` `<i>` `<u>`

| | |
|---|---|
| **Function** | Specify a physical style (appearance) for the contained text |
| **Attributes** | None |
| **Contains** | `text_content` * |
| **Used in** | `text_content` |

Physical style tags may be nested within other physical style tags to combine highlighting effects. Standard/preferred renderings: `<b>` = bold, `<i>` = italic, `<u>` = underline.

These tags do not identify the enclosed content — they are just available to the user to highlight words to improve readability.

---

### 9.4 Text Direction Tag: `<rtl>`

| | |
|---|---|
| **Function** | Specify that the contained text should be laid out as right-to-left text |
| **Attributes** | None |
| **Contains** | `text_content` * |
| **Used in** | `text_content` |

This tag assists in the handling of numbers for right-to-left environments. It is not needed for characters that have right-to-left Unicode property. It is needed for characters that do not have that property but should be handled similarly — this is the case with digit characters.

---

### 9.5 Background Colour Text Tag: `<bg>`

| | |
|---|---|
| **Function** | Specify a background colour for the contained text |
| **Attributes** | `rgb` [REQUIRED] — six hexadecimal characters |
| **Contains** | `text_content` * |
| **Used in** | `text_content` |

The `rgb=` attribute value is a string of exactly six hexadecimal characters. Each pair represents the red, green, and blue components of the colour in that order.

---

### 9.6 Spacing and Layout Text Tags: `<pb/>` `<tab/>` `<wp/>`

| | |
|---|---|
| **Function** | Indicate spacing and layout for text |
| **Attributes** | None |
| **Contains** | Nothing |
| **Used in** | `text_content` |

- `<pb/>` — page break: when printing a story, a page break is to occur at that position in the text.
- `<tab/>` — tab stop: the next character is to start at the next tab stop position.
- `<wp/>` — word wrap position: appears at the positions in the text where word wrapping was performed by the last application to modify the text. These wrap points may be used by an application if it wishes to present the text of the story with the same appearance as it last appeared.

---

### 9.7 The `<sb/>` Tag — Text Marker

| | |
|---|---|
| **Function** | A simple text marker |
| **Attributes** | None |
| **Contains** | Nothing |
| **Used in** | `text_content` |

The `<sb/>` tag can be used by applications as a text marker and has no other significance in NSML. It can be used in conjunction with video/audio sequences to indicate transition points of the sequence relative to the text.

---

### 9.8 The `<a/>` Tag — Anchor to Anchored Elements

| | |
|---|---|
| **Function** | Inserts a reference to an anchored element |
| **Attributes** | `idref` [REQUIRED] decimal number; `recovered` [OPTIONAL] decimal number |
| **Contains** | Nothing |
| **Used in** | `text_content` |

The `<a/>` tag marks the spot within a paragraph of the document body at which an anchored element is referenced. The order and position of these anchors is intended to determine the order and position of the anchored elements when displayed by an application.

The `idref=` attribute is required. Its value is a decimal number that identifies a specific anchored element in the `<aeset>`. The value must be between 0 and 255 inclusive.

The `recovered=` attribute is optional. Values:
- `recovered=0`: no changes have been made
- `recovered=1`: changes have been made (no further specification)
- `recovered=2` or larger: reason code for the change

The `recovered` attribute applies to `<a>`, `<ae>`, `<mc>`, and `<attachment>` and may be used by the server if it detects an NSML that is not fully valid (e.g. a relation between linked elements such as anchor and anchored element or machine control and attachment, are missing or ambiguous). The server will attempt to recover these elements. This will be indicated by adding a `recovered` attribute to the affected tag.

> **Note:** The `recovered` attribute is reserved for future use and is optional. The absence of the attribute does not indicate a tag is unchanged. The attribute is meant to be informative for clients; the server will not evaluate the attribute or its presence.

---

### 9.9 The `<link>` Tag

| | |
|---|---|
| **Function** | Defines a hyperlink to a resource |
| **Attributes** | None |
| **Contains** | `show_tag` ? `url_tag` |
| **Used in** | `text_content` |

#### 9.9.1 The `<show>` Tag

| | |
|---|---|
| **Function** | Defines the display text of a hyperlink to a resource |
| **Attributes** | None |
| **Contains** | `plain_text` ? |
| **Used in** | `link_tag` |

The content of the `<show>` tag, if present, can be displayed and highlighted to denote the link.

#### 9.9.2 The `<url>` Tag

| | |
|---|---|
| **Function** | Defines the actual URL of a hyperlink |
| **Attributes** | None |
| **Contains** | `plain_text` ? |
| **Used in** | `link_tag` |

The content of the `<url>` tag is the actual link to be used to retrieve or navigate to the referenced object.

---

## Section 10 — Story Anchored Element Set: the `<aeset>` Tag Content

### 10.1 The `<ae>` Tag — Anchored Element

| Attribute | Type | Notes |
|---|---|---|
| `id` | [REQUIRED] decimal number (0–255) | Uniquely identifies the anchored element within the `<aeset>` |
| `uid` | UNIQUE IDENTIFIER "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX" | Globally unique identifier for the production cue |
| `recovered` | [OPTIONAL] decimal number | |
| `version` | plain_text | Typically iNEWS Server version number or News Client version number of the agent that created or modified the anchored element. iNEWS Server typically supplies `version="S3.0"` |
| `type` | plain_text | "G" (General), "M" (MOS), "V" (Video), "J" (Journalist Editor). If not present "G" is assumed. Applications should allow for other types and should preserve anchored elements with an unknown type |
| `runs` | decimal number | Represents the runs time of the anchored element. For "G" and "M" type elements this value is the sum of all the "RUNS=" values found in the content |
| `font` | string | |
| `family` | decimal number (0–5) | |
| `pitch` | decimal number (0–2) | |

Contains: `hidden_tag` ? `ae_content` *  
Used in: `aeset_tag`

The `uid` attribute should be inserted when inserting production cues to a story and it must be maintained when moving production cues within a story. If the client does not specify a unique identifier for the production cue, the server generates a unique identifier for the anchored element so that it may be referenced and used further on. The uid has to be unique within the story. The uid attribute must be globally unique identifiers.

#### 10.1.1 The `<hidden>` Tag

| | |
|---|---|
| **Function** | Contains information relevant to an anchored element that is not for display |
| **Attributes** | None |
| **Contains** | `plain_text` ? |
| **Used in** | `ae_tag` |

The text content is not for display — it is metadata associated with the anchored element. Currently only Journalist Editor (`type="J"`) anchored elements contain such data. In any case, all applications must preserve this information when modifying a story.

> **Note:** The CDATA section is not supported within the hidden tag.

#### 10.1.2 Anchored Element Content — `ae_content`

| | |
|---|---|
| **Start tag** | None |
| **Attributes** | None |
| **Contains** | `(mc_tag \| ap_tag)` * |
| **Used in** | `ae_tag` |

---

### 10.2 The `<mc>` Tag — Machine Control Tag

| Attribute | Type | Notes |
|---|---|---|
| `error` | boolean | True = Machine Control Subsystem could not understand or carry out the instructions |
| `idref` | id of an `<attachment>` tag in the `<aeset-atts>` section | Optional; identifies the attachment that "belongs" to this machine control element |
| `flags` | sequence of characters (up to 5) | See flag definitions below |
| `recovered` | [OPTIONAL] decimal number | |
| `runs` | decimal number | Represents the runs time of the machine control element |
| `status` | decimal number (0–255) | Status reported from Machine Control Subsystem |
| `font` | string | |
| `family` | decimal number (0–5) | |
| `pitch` | decimal number (0–2) | |

Contains: `ap_tag` *  
Used in: `ae_tag`

The `<mc>` and `</mc>` tags enclose machine control instructions understood by the Machine Control Subsystem of the News System.

**Flags attribute — position and possible values:**

| Position | Possible Values | Meaning |
|---|---|---|
| 1 | Y, N | Yes/No Editor available via ActiveX |
| 2 | Y, N | Yes/No Player available via ActiveX |
| 3 | Y, N | Yes/No Explorer available via ActiveX |
| 4 | A thru Z | Changes if attachment changes since last written to database. Cycles through 26 letters of English alphabet |
| 5 | M, B | M = MOS (plain vanilla); B = CAP event (formerly BCS). More possible values are likely to be added |

---

### 10.3 The `<ap>` Tag — Anchored Paragraphs Block

| | |
|---|---|
| **Function** | Defines a paragraph in an anchored element |
| **Attributes** | `font` — string; `family` — decimal (0–5); `pitch` — decimal (0–2) |
| **Contains** | `ap_content` * |
| **Used in** | `ae_tag` |

The `<ap>` and `</ap>` tags enclose the text of a paragraph in anchored elements and machine control elements. `ap_text` is differentiated from `text` because `ap_text` cannot contain `<pb/>` or `<a/>` tags.

---

## Section 11 — Field-atts and AEset-atts Content Definition

### 11.1 The `<attachment>` Tag

| | |
|---|---|
| **Function** | Defines a sequence of text (attachment data) |
| **Attributes** | `id` [REQUIRED] string; `recovered` [OPTIONAL] decimal number |
| **Contains** | `plain_text` ? |
| **Used in** | `field_atts_tag`, `aeset_atts_tag` |

The `id=` attribute uniquely identifies the attachment in the story so that it may be referenced and used. It is beyond the scope of the NSML specification to define where references to the attachment reside or how they are used.

> **Note:** There is a limit of 32,667 bytes on MOS attachment.

---

## Section 12 — Example

The following is a complete example NSML v4.2 document, illustrating the `display` attribute on the `modify-by` field (key new v4.2 feature highlighted):

```xml
<?xml version="1.0"?>
<nsml xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://avid.com/nsml nsml.xsd"
      xmlns="http://avid.com/nsml"
      version="4.2">
  <head>
    <meta words="56" rate="180"/>
    <formname>RUNDOWN-AIRDATE</formname>
    <storyid>0d7bd190:00f0a7ee:43949af4</storyid>
    <uuid>2fdd5bf9-9f0d-4b9b-904e-28207464b16c</uuid>
    <uuidorig>2fdd5bf9-9f0d-4b9b-904e-28207464b16c</uuidorig>
  </head>
  <projects>
    <project>fa8e61212f064ee0ae477c6225a54282</project>
    <facet>fa8e61212f064ee0ae477c6225a54282f4ba2a87bed44344a04d35a5580baa9b</facet>
  </projects>
  <fields>
    <string id="page-number">B01</string>
    <string id="presenter">EC</string>
    <string id="title">N:UNABOMBER HOUSE</string>
    <string id="var-3">VO/W</string>
    <string id="video-id">txfer310</string>
    <string id="event-status"/>
    <string id="status">OK</string>
    <string id="item-channel"></string>
    <duration id="audio-time">18</duration>
    <duration id="runs-time">22</duration>
    <duration id="total-time">40</duration>
    <date id="modify-date">1133812468</date>
    <string id="modify-by" display="John Doe">jdoe</string>
    <string id="endorse-by"/>
    <string id="cume-time"/>
    <duration id="tape-time" />
    <string id="back-time"/>
    <date id="air-date">1121180576</date>
  </fields>
  <body>
    <p>
      <a idref="0" recovered="1"/>
      <pi>((EILEEN ANIM. BOX))</pi>
    </p>
    <p>
      <tab/>IN OTHER NATIONAL NEWS... THE COUNTRY'S MOST FAMOUS SHACK IS ON THE MOVE TONIGHT.
    </p>
    ...
  </body>
  <aeset>
    <ae id="0" uid="5b746893-2a0d-489d-ab3a-b81ff5f22e2b" version="S3.0" recovered="1">
      <ap>EILEEN ANIM. BOX</ap>
    </ae>
    <ae id="5" uid="5b746893-2a0d-489d-ab3a-b81ff5f22e2a" version="S3.0" type="M" runs="22">
      <mc idref="1" recovered="1" flags="NNYAM" runs="22">
        <ap>video Unabomber (VO)</ap>
      </mc>
      <ap>runs 0:22</ap>
    </ae>
  </aeset>
  <aeset-atts>
    <attachment id="1" recovered="1">
<![CDATA[<AttachmentContent><mos><mosID>mosid.inews</mosID>
<mosItemBrowserProgID> </mosItemBrowserProgID><mosAbstract>Unabomber (VO)</mosAbstract>
<objID>60A10000</objID><objSlug>Unabomber</objSlug><objTB>60</objTB>
<objDur>1323</objDur><itemEdDur>1</itemEdDur>
<itemID>1</itemID></mos></AttachmentContent>]]>
    </attachment>
  </aeset-atts>
</nsml>
```

Key observation: the `display="John Doe"` attribute on `<string id="modify-by">` shows the user's real name alongside their login ID `jdoe`. This is the only structural change from NSML v4.1 to v4.2.
