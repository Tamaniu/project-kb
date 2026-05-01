---
product: mediacentral-newsroom-management
product-area: integration
version: "2020.4"
release-date: 15/04/2020
doc-type: technical-specification
source: avid-official
source-file: NSML-Specs-v41-2020-4.pdf
confidentiality: public
date-added: 28/04/2026
status: superseded
superseded-by: "2020.4.2"
feature-tags: [nsml, xml, story-format, markup-language, mos, ftp, integration, uuid, projects]
---

# MediaCentral | Newsroom Management — News Story Markup Language (NSML) Engineering Specification

**Document version:** 4.1  
**Date:** 15 April 2020  
**Applies to:** MCNM v2020.4

> NSML is the XML-based format used to exchange stories between iNEWS systems and integrated clients (FTP, Cloud UX, MOS devices, etc.). Where this descriptive specification conflicts with the NSML XML Schema, the Schema takes precedence.

---

## 1. Version History

| NSML Version | Changes |
|---|---|
| 2.7 → 2.8 | `<password>` tag added. Limitations on `<a/>` tag `idref` and `<ae>` tag `id` documented. Fields `ITEM-CHANNEL`, `MOS-DURATION`, `RUNS-TIME` added to reserved fields. Example replaced. |
| 2.8 → 3.0 | NSML is now well-formed XML; documents can be validated against the NSML XML Schema. Tag names are case-sensitive. `<nsml version>` attribute required (value is a number). `<look>` and `<story>` tags removed. `<form>`, `<fields>`, `<body>`, `<aeset>` are now children of `<nsml>`. `<img>` removed. `<meta deleted>` attribute removed. `<cell>` replaced by `<stringcell>`, `<checkboxcell>`, `<datecell>`, `<durationcell>`. `wg` and `limit` attributes added to all cell types. `<label>`, `<entry>`, `<group>`, `<list>` tags added as `<comboboxcell>` content. `<f>` replaced by `<string>`, `<boolean>`, `<date>`, `<duration>` tags. `bg` attribute added to field types. `<bg>` tag added for background colour highlighting. `<rtl>` tag added for right-to-left text. `font`, `family`, `pitch` attributes added to `<body>`, `<p>`, `<aeset>`, `<ae>`, `<mc>`, `<ap>`. `<link>` tag added to `<p>` and `<ap>`. `<egroup>` and `<storygroupid>` added to `<head>`. `<form>` and `<row>` no longer set default attribute values. Empty tags use `/>` sequence. All tag attribute names in lowercase; values in quotes. End tags required. Hidden text eliminated (converted to attributes in `<ae>` and `<mc>`). `<hidden>` tag added to `<ae>` for Journalist Editor type anchored elements. |
| 3.0 → 3.1 | `<sb/>`, `<projects>`, `<project>`, `<facet>` tags added. |
| 3.1 → 4.0 | `<uuid>` and `<uuidorig>` tags added to `<head>` for story-centric workflow. New predefined `ASSIGNMENT` field type added to store assignment URL. |
| 4.0 → 4.1 | `uid` attribute added to `<ae>` tag for tracking server-generated unique identifiers for production cues. `recovered` attribute added to `<a>`, `<ae>`, `<mc>`, `<attachment>` tags to indicate server corrections. |

---

## 2. NSML Grammar (BNF)

```
nsml_tag       ::= <nsml>
                     head_tag ?
                     projects_tag ?
                     form_tag ?
                     fields_tag ?
                     body_tag ?
                     aeset_tag ?
                     field_atts_tag ?
                     aeset_atts_tag ?
                   </nsml>

head_tag       ::= <head>
                     <meta/> ?
                     <rgroup> plain_text ? </rgroup> ?
                     <wgroup> plain_text ? </wgroup> ?
                     <egroup> plain_text ? </egroup> ?
                     <wcode> plain_text ? </wcode> ?
                     <dist> plain_text ? </dist> ?
                     <source> plain_text ? </source> ?
                     <formname> plain_text ? </formname> ?
                     <storyid> plain_text ? </storyid> ?
                     <storygroupid> plain_text ? </storygroupid> ?
                     <password> plain_text ? </password> ?
                     <uuid>xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx</uuid> ?
                     <uuidorig>xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx</uuidorig> ?
                   </head>

projects_tag   ::= <projects> (project_tag | facet_tag)* </projects>
project_tag    ::= <project> single_uuid </project>
facet_tag      ::= <facet> double_uuid </facet>

form_tag       ::= <form> row_tag * </form>
row_tag        ::= <row> row_content * </row>
row_content    ::= <stringcell> ... </stringcell>
                 | <checkboxcell> ... </checkboxcell>
                 | <comboboxcell> ... </comboboxcell>
                 | <datecell> ... </datecell>
                 | <durationcell> ... </durationcell>

fields_tag     ::= <fields> fields_content * </fields>
fields_content ::= <string> plain_text ? </string>
                 | <boolean> boolean_value ? </boolean>
                 | <date> date_value ? </date>
                 | <duration> duration_value ? </duration>

body_tag       ::= <body> p_tag * </body>
p_tag          ::= <p> p_content * </p>
aeset_tag      ::= <aeset> ae_tag * </aeset>
ae_tag         ::= <ae> hidden_tag ? ae_content * </ae>
```

---

## 3. NSML Basics

### 3.1 Tags
- Tags are delimited by `<` and `>` and contain a tag name and optional attributes.
- Tag names: ASCII characters `a-z`, `0-9`, `.`, `-`; first character must be `a-z`; maximum 12 characters.
- The total characters in a tag (name + all attribute names and values, excluding delimiters) cannot exceed 500.

### 3.2 Empty Tags
- Tags with no content use the `/>` sequence: `<a/>`, `<pb/>`, `<sb/>`, `<tab/>`, `<wp/>`, `<meta/>`.

### 3.3 Character Set
- Attribute values: **TEXT** (bytes 0x20–0xFF, excluding `"`; case-sensitive; max 100 bytes), **TOKEN** (same lexical constraints as tag names; case-insensitive), or **NUMBER** (decimal digits 0–9).
- `plain_text` content: bytes 0x00–0xFF; bytes 0x00–0x1F are stripped except 0x09, 0x0A, 0x0D.

### 3.4 Character Entities
`plain_text` may use named or numeric character entities:

| Named Entity | Numeric | Symbol | Description |
|---|---|---|---|
| `&gt;` | `&#062;` | `>` | Greater than |
| `&lt;` | `&#060;` | `<` | Less than |
| `&amp;` | `&#038;` | `&` | Ampersand |

### 3.5 CDATA Sections
- `plain_text` may be enclosed in CDATA: `<![CDATA[ ... ]]>`.
- **CDATA is NOT supported inside `<hidden>` tags.** Use plain text there.
- CDATA cannot be nested. Byte values 0x00–0x1F (except 0x09, 0x0A, 0x0D) are stripped.

### 3.6 Base Units
- Many attributes use *base units* = one-quarter of the average character width of the "system font" (Microsoft Windows Dialog Base Unit). Device-independent.

---

## 4. Top-Level Elements

### 4.1 `<nsml>`
Delimits the complete NSML document.
- **Attribute:** `version` (optional, TEXT) — value must read `version="3.1"` for a v3.1+ document. If absent, parser treats document as pre-3.0.
- **Contains:** `head_tag?`, `projects_tag?`, `form_tag?`, `fields_tag?`, `body_tag?`, `aeset_tag?`, `field_atts_tag?`, `aeset_atts_tag?`

### 4.2 `<head>`
Defines meta information about the story. Not strictly content.
- **Contains:** `meta_tag?`, `rgroup_tag?`, `wgroup_tag?`, `egroup_tag?`, `wcode_tag?`, `dist_tag?`, `source_tag?`, `formname_tag?`, `storyid_tag?`, `storygroupid_tag?`, `password_tag?`, `uuid_tag?`, `uuidorig_tag?`

### 4.3 `<projects>`
Delimits project and facet associations of the story.
- **Contains:** `(project_tag | facet_tag)*`

### 4.4 `<form>`
Defines presentation/appearance of story fields. Descendents inherit attributes unless overridden. Does not contain story content — all content is in `<fields>`, `<body>`, `<aeset>`.
- **Contains:** `row_tag*`

### 4.5 `<fields>`
Delimits story fields content.
- **Contains:** `(string_tag | boolean_tag | date_tag | duration_tag)*`

### 4.6 `<body>`
Defines the story text content. All text must be within `<p>` tags.
- **Attributes:** `tabs` (space-separated decimal numbers; last may be `-` for repeating), `script` (decimal; word-wrap width for anchored elements), `width` (decimal; word-wrap width for body), `pindent` (decimal; left paragraph indent in base units), `rindent` (decimal; right paragraph indent), `findent` (decimal; first-line indent; defaults to `pindent`), `font` (string), `family` (0–5: 0=don't care, 1=Roman, 2=Swiss, 3=Modern, 4=Script, 5=Decorative), `pitch` (0–2: 0=default, 1=fixed, 2=variable)
- **Contains:** `p_tag*`

### 4.7 `<aeset>`
Defines the set of anchored elements within the story.
- **Attributes:** `font`, `family`, `pitch` (same as `<body>`)
- **Contains:** `ae_tag*`

### 4.8 `<field-atts>`
Delimits field attachments.
- **Contains:** `attachment_tag*`

### 4.9 `<aeset-atts>`
Delimits anchored element set attachments.
- **Contains:** `attachment_tag*`

---

## 5. Story Header — `<head>` Tag Content

### 5.1 `<meta/>`
Defines story meta information. Empty tag with attributes only.

| Attribute | Values | Description |
|---|---|---|
| `wire` | `f` / `b` / `u` / `r` / `o` | Wire story priority: flash, bulletin, urgent, routine, other. Absent = not a wire story. |
| `mail` | `read` / `unread` | Mail message status. Absent = not a mail message. |
| `locked` | `pass` / `user` | Lock type: password-protected or user-locked. Absent = not locked. |
| `words` | decimal number | Countable words in story body (for audio timing). |
| `rate` | decimal number | Read rate in words per minute for audio timing. |
| `break` | boolean | Story is a break/divider in a rundown. |
| `mcserror` | boolean | Story contains machine control instructions that could not be understood. |
| `hold` | boolean | Story is held; exempt from automatic purge. |
| `float` | boolean | Story is "floated" in a rundown (not yet scheduled to go on-air). |
| `wordlength` | decimal number | Number of characters constituting one word. |
| `version` | decimal number | Story version number (starts at 0 when created). |

### 5.2 `<rgroup>`
Defines the read group assigned to the story. `number` attribute = internal group number. Group name may be omitted.

### 5.3 `<wgroup>`
Defines the write group assigned to the story. Same structure as `<rgroup>`.

### 5.4 `<egroup>`
Defines the editorial group assigned to the story. Same structure as `<rgroup>`.

### 5.5 `<wcode>`
Defines the wire distribution codes assigned when the story was originally received. Only relevant for wire stories.

### 5.6 `<dist>`
Defines the distribution code attached to the story by a user.

### 5.7 `<source>`
Defines the name of the News Database Server that generated the story.

### 5.8 `<formname>`
Defines the form used to create the first instance of the story. Determines which fields must be preserved on editing.

### 5.9 `<storyid>`
Identification string used by the News Database Server to locate the story. Format is not specified by NSML.

### 5.10 `<storygroupid>`
Identifies a group of stories; every story in the group carries the same identifier. Format is not specified by NSML.

### 5.11 `<password>`
Password for the story if `locked="pass"` is set in `<meta/>`. Only present in documents sent/received by iNEWS v2.5 and above.

### 5.12 `<uuid>` and `<uuidorig>`
Server-generated unique identifiers for story-centric workflow (introduced v4.0). Format: `xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx` (UUID v4). A new predefined `ASSIGNMENT` field type stores the assignment URL.

---

## 6. Story Associations — `<projects>` Tag Content

### 6.1 `<project>`
Defines a project association. Contains `single_uuid` (16 hexBinary characters = 32 hex digits).

### 6.2 `<facet>`
Defines a project facet association. Contains `double_uuid` (32 hexBinary characters = 64 hex digits).

---

## 7. Story Presentation — `<form>` Tag Content

### 7.1 `<row>`
Defines presentation/appearance of a row of fields.
- **Contains:** `(stringcell | checkboxcell | comboboxcell | datecell | durationcell)*`

### 7.2 `<stringcell>`
Defines presentation/appearance of a text field.

| Attribute | Values | Description |
|---|---|---|
| `idref` | id string | References the field from `<fields>` section. If absent, cell is blank/read-only. |
| `length` | decimal | Cell length in base units. |
| `style` | `b` / `i` / `u` / `""` / space-list | Physical text style (bold, italic, underline, or combinations). |
| `align` | `left` / `right` / `center` | Text alignment (default: `left`). |
| `ro` | boolean | Read-only override (true overrides field's read-write setting). |
| `aready` | boolean | If true, field affects the `READY` field — if field has `?` as first character or is empty, READY shows `?`. |
| `llength` | decimal | Label length in base units. |
| `lstyle` | same as `style` | Label text style. |
| `lalign` | `left` / `right` / `center` | Label alignment. |
| `lposition` | `left` / `right` / `top` / `bottom` | Label position relative to cell (default: `top`). |
| `limit` | boolean | If true, text content is visually limited to cell's `length`. |
| `wg` | decimal | Write group internal number; restricts editing to group members. |
| `mandatory` | boolean | If true, field referenced by `idref` cannot be empty. |

### 7.3 `<checkboxcell>`
Defines a checkbox field. Same attributes as `<stringcell>`.

### 7.4 `<comboboxcell>`
Defines a combobox (drop-down list) field. Same attributes as `<stringcell>` plus:
- `locked` (boolean): if true, only list entries can be entered (default: true).
- **Contains:** `label_tag?`, `(entry_tag | group_tag | list_tag)*`

#### 7.4.1 `<label>` — label text for combobox field (no attributes; contains `plain_text?`)
#### 7.4.2 `<entry>` — one drop-down list entry; `bg` attribute (decimal system colour)
#### 7.4.3 `<group>` — a set of user names as list entries; `id` (REQUIRED: user group name), `bg` attribute
#### 7.4.4 `<list>` — a set of text strings from a system list; `id` (REQUIRED: system list name), `bg` attribute

### 7.5 `<datecell>`
Defines a date field. Same attributes as `<stringcell>`. Contains `date_value?` (decimal seconds since 1970-01-01 00:00:00 UTC).

### 7.6 `<durationcell>`
Defines a time duration field. Same attributes as `<stringcell>`. Contains `duration_value?` (decimal seconds).

---

## 8. Story Fields — `<fields>` Tag Content

### 8.1 `<string>`
Defines a text field. **`id` is required.**

| Attribute | Description |
|---|---|
| `id` | REQUIRED. Unique field identifier (referenced by `idref` in form cells). |
| `urgency` | Decimal 1–9. Indicates exceptional significance of this field's data. |
| `aready` | boolean. If true, field affects the `READY` reserved field. |
| `uec` | boolean. User-entered content flag — overrides system-supplied content. |
| `ro` | boolean. Read-only. |
| `bg` | Decimal. Background colour (system colour number). |

### Reserved Field Identifiers

| Field ID | Type | Description |
|---|---|---|
| `AIR-DATE` | decimal digits | Seconds since 1970-01-01 00:00:00 GMT |
| `ASSIGNMENT` | character string | URL to assignment in MediaCentral \| UX (readonly) |
| `AUDIO-TIME` | decimal digits | Audio read time in seconds |
| `BACK-TIME` | special* | Hard in-time of story in seconds |
| `CA-CAPTURED` | character string | Connect session: characters captured |
| `CA-DIRECTION` | character string | Connect session: direction (in or out) |
| `CA-ELAPSED` | character string | Connect session: duration (HH:MM:SS) |
| `CA-IDENT` | character string | Connect session: session identifier |
| `CA-ORIGIN` | character string | Connect session: originating computer |
| `CA-RECEIVED` | character string | Connect session: characters received |
| `CA-REMOTE` | character string | Connect session: remote computer |
| `CA-SENT` | character string | Connect session: characters sent |
| `CG-ADDR` | character string | MCS/BCS: CG device address |
| `CG-TEMPLATE` | character string | MCS/BCS: CG template address |
| `CG-TEXT` | character string | MCS/BCS: CG text |
| `CHANNEL` | character string | MCS/BCS: generic event channel |
| `CREATE-BY` | character string | Username of first version creator |
| `CREATE-DATE` | decimal digits | Seconds since 1970-01-01 00:00:00 GMT |
| `CUME-TIME` | special* | Hard out-time of story in seconds |
| `DEVICE-MGR` | character string | MCS/BCS: device manager name |
| `DURATION` | character string | MCS/BCS: generic event duration |
| `EFFECT` | character string | MCS/BCS: event effect |
| `ENDORSE-BY` | character string | Name of user who endorsed the story |
| `EVENT-STATUS` | character string | MCS/BCS: (video) event status |
| `ITEM-CHANNEL` | character string | MCS/BCS: playout channel for a primary event |
| `MAIL-CC` | character string | Mail CC addressee list |
| `MAIL-TO` | character string | Mail To addressee list |
| `MODIFY-BY` | character string | Username of last modifier |
| `MODIFY-DATE` | decimal digits | Seconds since 1970-01-01 00:00:00 GMT |
| `MODIFY-DEV` | character string | Device on which story was last modified |
| `MOS-ACTIVE` | character string | MOS: event identifier |
| `MOS-DURATION` | decimal digits | MOS: event duration |
| `MOS-SUBEVENT` | character string | MOS: event details |
| `MOS-TITLE` | character string | MOS: event description |
| `PAGE-NUMBER` | character string | User-entered story identifier |
| `PRESENTER` | character string | Name of person to read story on-air |
| `READY` | character string | Story state: `READY` or `?` |
| `RESULT-INDEX` | character string | Search result: story identifier |
| `RESULT-LOC` | character string | Search result: story location (queue name) |
| `RUNS-TIME` | decimal digits | Sum of runs times in production cues |
| `SEARCH-ID` | character string | Search result: search request identifier |
| `STATUS` | character string | Status of some element of the story |
| `STILL-ID` | character string | MCS/BCS: still store event identifier |
| `STILL-PRESET` | character string | MCS/BCS: still store event preset |
| `STYLE` | character string | MCS/BCS: event style |
| `TAPE-TIME` | decimal digits | Run time in seconds of tape to be played |
| `TITLE` | character string | User-entered story title |
| `TOTAL-TIME` | decimal digits | Total story time (audio-time + tape-time) |
| `VIDEO-ID` | character string | MCS/BCS: video (tape/clip) identifier |
| `WRITER` | character string | Username of writer taking credit |

> *`BACK-TIME` and `CUME-TIME` use special encoding: relative time is a plain number of seconds; absolute time (time-of-day) is prefixed with `@`. For example, `600` = 10 minutes relative; `@600` = 12:10:00 (10 minutes past midnight).

### 8.2 `<boolean>`
Boolean field (0 or 1; typically for checkboxes). Same attributes as `<string>` (id required). Contains `boolean_value?`.

### 8.3 `<date>`
Date field. Same attributes as `<string>`. Contains `date_value?` (decimal seconds since 1970-01-01 00:00:00 UTC).

### 8.4 `<duration>`
Time duration field. Same attributes as `<string>`. Contains `duration_value?` (decimal seconds).

---

## 9. Story Body — `<body>` Tag Content

### 9.1 `<p>` — paragraph blocks
Encloses a paragraph of text. `font`, `family`, `pitch` attributes (same as `<body>`). Contains `content_tag*` and `text_content*`.

### 9.2 Content-based Tags — `<pi>` and `<cc>`
- `<pi>...</pi>` — presenter instructions (not for closed captioning; displayed on prompter; not timed).
- `<cc>...</cc>` — closed captioning text (not read on-air; not displayed on prompter; not timed).
- Content-based tags may not be nested.

### 9.3 Physical Style Tags — `<b>`, `<i>`, `<u>`
Specify physical text style. May be nested for combined effects. `<b>` = bold, `<i>` = italic, `<u>` = underline.

### 9.4 Text Direction — `<rtl>`
Marks contained text as right-to-left layout. Used for digit characters that do not inherently carry RTL Unicode property.

### 9.5 Background Colour — `<bg>`
Specifies background colour highlight for enclosed text. **Attribute:** `rgb` (REQUIRED, six hexadecimal characters, e.g. `rgb="FF0000"` for red).

### 9.6 Spacing and Layout Tags — `<pb/>`, `<tab/>`, `<wp/>`
- `<pb/>` — page break (for printing).
- `<tab/>` — advance to next tab stop position.
- `<wp/>` — word-wrap position marker from last application to modify story.

### 9.7 `<sb/>` — text marker
A simple text marker with no NSML semantics. Used by applications to indicate transition points in video/audio sequences relative to the story text. Cannot nest.

### 9.8 `<a/>` — anchor to anchored elements
Inserts a reference to an anchored element in the `<aeset>`.
- `idref` (REQUIRED, decimal 0–255): identifies the `<ae>` element.
- `recovered` (OPTIONAL, decimal): error/reason code for server recovery (`0` = no changes; `1` = changes made; `2+` = specific reason code).

### 9.9 `<link>` — hyperlink
Defines a hyperlink to a resource. Contains `<show>?` (display text) and `<url>?` (actual link URL).

---

## 10. Anchored Element Set — `<aeset>` Tag Content

### 10.1 `<ae>` — anchored element
Defines an anchored element (production cue, MOS event, etc.).

| Attribute | Values | Description |
|---|---|---|
| `id` | REQUIRED, decimal 0–255 | Unique within the `<aeset>`. Referenced by `<a/>` anchors in `<body>`. |
| `uid` | UUID string | Optional. Server-generated unique identifier for production cue tracking (added v4.1). |
| `recovered` | OPTIONAL, decimal | Server recovery code (same as `<a/>`). |
| `version` | plain_text | Agent version that created/modified this element (typically server version, e.g. `S3.0`). |
| `type` | plain_text | Element type: `G` (General, default), `M` (MOS), `V` (Video), `J` (Journalist Editor). |
| `runs` | decimal | Runs time of anchored element in seconds. |
| `font`, `family`, `pitch` | — | Typography attributes (same as `<body>`). |

- **Contains:** `hidden_tag?`, `ae_content*`

#### 10.1.1 `<hidden>`
Non-display metadata associated with an anchored element. Content is not for display; currently used by Journalist Editor (`type="J"`) elements. All applications must preserve this content when modifying stories. **CDATA not supported inside `<hidden>`.**

#### 10.1.2 `ae_content` — anchored element content
Contains `(mc_tag | ap_tag)*`.

### 10.2 `<mc>` — machine control tag
Defines machine control instructions for the Machine Control Subsystem.

| Attribute | Values | Description |
|---|---|---|
| `error` | boolean | MCS could not execute instructions (true = error). |
| `idref` | id string | References an `<attachment>` in `<aeset-atts>`. |
| `flags` | up to 5 chars | Position 1: Y/N editor via ActiveX; Position 2: Y/N player via ActiveX; Position 3: Y/N explorer via ActiveX; Position 4: A–Z attachment change counter; Position 5: M=MOS, B=CAP event (formerly BCS). |
| `recovered` | OPTIONAL, decimal | Server recovery code. |
| `runs` | decimal | Runs time of machine control element. |
| `status` | decimal 0–255 | Status from Machine Control Subsystem. |
| `font`, `family`, `pitch` | — | Typography attributes. |

- **Contains:** `ap_tag*`

### 10.3 `<ap>` — anchored paragraphs block
Defines a paragraph within an anchored element or machine control element. `ap_text` cannot contain `<pb/>` or `<a/>`.
- **Attributes:** `font`, `family`, `pitch`
- **Contains:** `ap_content*`

---

## 11. Field-atts and AEset-atts Content

### 11.1 `<attachment>`
Defines a sequence of text (attachment data, e.g. MOS XML payload).
- `id` (REQUIRED, string): uniquely identifies the attachment.
- `recovered` (OPTIONAL, decimal): server recovery code.
- **Contains:** `plain_text?`
- **Note:** There is a **32,667 byte limit** on MOS attachment content.

---

## 12. Example Document

```xml
<?xml version="1.0"?>
<nsml xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://avid.com/nsml nsml.xsd"
      xmlns="http://avid.com/nsml"
      version="4.1">
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
    <string id="modify-by">csquire</string>
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
<mosItemBrowserProgID> </mosItemBrowserProgID>
<mosAbstract>Unabomber (VO)</mosAbstract>
<objID>60A10000</objID><objSlug>Unabomber</objSlug>
<objTB>60</objTB><objDur>1323</objDur>
<itemEdDur>1</itemEdDur><itemID>1</itemID></mos></AttachmentContent>]]>
    </attachment>
  </aeset-atts>
</nsml>
```
