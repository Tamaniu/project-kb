---
product: mediacentral-newsroom-management
product-area: newsroom-management
version: "2020"
release-date: 01/01/2020
doc-type: readme
source: pdf
confidentiality: public
date-added: 08/05/2026
status: current
---

Avid Technology, Inc.
MediaCentral | Newsroom Managment News Story Markup Language Engineering Specification Version 4.1 15 April 2020 NOTICE: Avid Technology, Inc. accepts no responsibility for the accuracy of the information contained herein and reserves the right to change the contents without prior notice.
News Story Markup Language v4.1 EngineeringSpecification NSML – A Markup Language for News Stories Version 4.1 1 Introduction The purpose of this document is to define the News Story Markup Language (NSML). NSML is an SGML based markup which is used to express all the content and information about a story. It also can describe a form that can be used to describe the presentation of fields when displayed.
NSML is used to express seven separate aspects of a story. NSML expresses meta information about a story in the <head> section; it expresses the appearance of the story when displayed in the <form> section; it expresses the story content in the <fields>, <body>, and <aeset> sections; and it expresses arbitrary attachments in the <field-atts> and <aeset-atts> sections.
1.1 Changes from 2.7 to 2.8 The <password> tag was added.
Document the limitations on the idref of an <a/> tag and the id of an <ae> tag.
Note that the sequence of anchored elements conform to the sequence of anchors within the <body> in the <ae> tag description.
The fields ITEM-CHANNEL, MOS-DURATION, and RUNS-TIME added to list of reserved fields in section 7.1.
The example was replaced in section 12.
1.2 Changes from 2.8 to 3.0 NSML is now well formed XML. NSML documents can be validated against the NSML XML schema.
As a well formed XML document, tag names are case sensitive.
The <nsml version> attribute is now required and it is now simply a number.
The <look> tag has been removed.
The <story> tag has been removed.
The <form>, <fields>, <body>, and <aeset> tags are now children of the <nsml> tag.
<img> The tag has been removed.
The <meta deleted> attribute has been removed.
Two new attributes were added to the <meta/> tag, “wordlength” and “version”.
The <cell> tag was replaced by the <stringcell>, <comboboxcell>, <checkboxcell>, <datecell>, and <durationcell> tags. All of these tags were added as content to the <row> tag.
A “wg” attribute was added to all cell tag types.
A “limit” attribute was added to all cell tag types to restrict the content of thefield to its edit size.
The <label>, <entry>, <group>, and <list> tags were added as part of the <comboboxcell> content.
The <f> tag was replaced by the <string>, <boolean>, <date>, and <duration> tags. All of these tags were added as content to the <fields> tag.
A “bg” attribute was added to the <string>, <boolean>, <date>, and <duration> tags.
News Story Markup Language v4.1 EngineeringSpecification The <bg> tag was added to allow background color highlighting to a sequence of characters. It is similar to the <b>, <i>, and <u> tags.
<rtl> <b>, <i>, The tag was added to denote a right to left sequence of characters. It is similar to the and <u> tags.
Font, family, and pitch attributes were added to the <body>, <p>, <aeset>, <ae>, <mc>, and <ap> tags.
A <bg> tag was added to hold a background color for text.
The <link> tag was added as content to the <p> and <ap> tags. The <show> and <url> tags were added as content of the new <link> tag.
The <egroup> tag was added as content of the <head> tag..
The <storygroupid> tag was added as content of the <head> tag..
<form> <row> The and tags no longer set default values for all of the cell tag attributes.
Empty tags are now denoted with the “/>” sequence (<a/>, <meta/>, <pb/>, <tab/>, <wp/>, etc.) All tag attributes names are in lower case.
All tag attribute values are enclosed in quotes.
All tag attributes have the form: name="value" End tags are no longer optional. Neither are any start tags.
Hidden text has been eliminated. Most of the content was converted to attributes added the <ae> and <mc> tags. A <hidden> tag was added to the <ae> content to accommodate text unique to ‘J’ type anchored elements.
1.3 Changes from 3.0 to 3.1 The <sb/>, <projects>, <project>, and <facet> tags were added.
1.4 Changes from 3.1 to 4.0 New <uuid>, <uuidorig> tags are added to the <head> section to keep track of server generated unique identifiers for the stories to support the storycentric workflow. A new predefined assignment field type is added to store the assignment URL.
1.5 Changes from 4.0 to 4.1 A new uid attribute has been added to the <ae> tag. It allows for the tracking of (server) generated unique identifiers for the production cues inside of the stories.
A new recovered attribute has been added to the <a>, <ae>, <mc>, and <attachment> tags, allowing the server to indicate changes when correcting these elements.
1.6 Precedence Where the descriptive text of this specification differs with the syntax of the NSML XML Schema, the Schema takes precedence and should be considered the correct definition of NSML.
News Story Markup Language v4.1 EngineeringSpecification 2 NSML Grammar The elements of a story are identified with NSML tags. These tags are organized in a hierarchy. At the top <nsml> of the hierarchy is the tag which delimits a complete NSML document and contains the story meta information, story content, story presentation, and attachment elements. The other elements of a story are nested inside these elements as described by the NSML grammar.
The story grammar defines the ordering and nesting of the tags and story elements. There are two sets of language elements: terminal – the actual words in the NSML language – and non-terminal – everything else. The terminals are formatted as tags with their enclosing brackets “<>”, non-terminals are displayed in italic. There is one predefined non-terminal, plain_text. Plain_text is defined to be regular characters, and character entities denoted by the ampersand character.
A CDATA section can be used to encapsulate plain_text that contains many NSML markup characters that would otherwise be converted into character entities. However, CDATA is NOT supported in <hidden>, i.e. instead of :
<hidden><![CDATA[some text here]]></hidden> the tag must be used as <hidden>some text here</hidden> Elements followed by a ‘?’ are optional and occur at most one time.
Elements followed by a ‘*’ are repeatable zero or more times.
Elements must appear in the order they are listed. Elements that are listed as a group of elements separated by a ‘|’ indicate a choice. When the group is defined to occur more than one time, the resulting set of elements can occur in any order.
nsml_tag ::= <nsml> head_tag ?
projects_tag ?
form_tag ?
fields_tag ?
body_tag ?
aeset_tag ?
field_atts_tag ?
aeset_atts_tag ?
</nsml> head_tag ::= <head> <meta/> ?
<rgroup> plain_text ? </rgroup> ?
<wgroup> </wgroup> plain_text ? ?
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
</head> News Story Markup Language v4.1 EngineeringSpecification projects_tag ::= <projects> (project_tag | facet_tag) * </projects> form_tag ::= <form> row_tag * </form> field_atts_tag ::= <field-atts> attachment_tag * </field-atts> aeset_atts_tag ::= <aeset-atts> attachment_tag * </aeset-atts> project_tag ::= <project > single_uuid </project > facet_tag ::= <facet > double_uuid </facet > single_uuid ::= hexBinary *16 double_uuid ::= hexBinary *32 hexBinary ::= hexDigit hexDigit row_tag ::= <row> row_content * </row> row_content ::= <stringcell> plain_text ? </stringcell> | <checkboxcell> plain_text ? </checkboxcell> | <comboboxcell> label_tag ? comboboxcell_content * </comboboxcell> | <datecell> plain_text ? </datecell> | <durationcell> plain_text ? </durationcell> label_tag ::= <label> plain_text ? </label> comboboxcell_content::= entry_tag | <group> entry_tag * </group> | <list> entry_tag * </list> entry_tag ::= <entry> plain_text ? </entry> fields_tag ::= <fields> fields_content * </fields> fields_content ::= <string> plain_text ? </string> | <boolean> boolean_value ? </boolean> | <date> date_value ? </date> | <duration> duration_value ? </duration> boolean_value ::= “true” | “1” | “false” | “0” date_value ::= a decimal number representing seconds since 00:00:00 UTC, January 1, 1970 duration_value ::= a decimal number representing seconds body_tag ::= <body> p_tag * </body> p_tag ::= <p> p_content * </p> p_content ::= content_tag | text_content content_tag ::= <pi> text_content * </pi> | <cc> text_content * </cc> News Story Markup Language v4.1 EngineeringSpecification text_content ::= style_tag | <pb/> | <sb/> | <tab/> | <wp/> | <a/> | text_and_links text_and_links ::= <link> show_tag ? url_tag </link> | plain_text show_tag ::= <show> plain_text ? </show> url_tag ::= <url> plain_text ? </url> style_tag ::= <b> text_content * </b> | <i> text_content * </i> | <u> text_content * </u> | <rtl> text_content * </rtl> | <bg> text_content * </bg> aeset_tag ::= <aeset> ae_tag * </aeset> ae_tag ::= <ae> hidden_tag ? ae_content * </ae> hidden_tag ::= <hidden> plain_text ? </hidden> ae_content ::= mc_tag | ap_tag mc_tag ::= <mc> ap_tag * </mc> ap_tag ::= <ap> ap_content * </ap> ap_content ::= astyle_tag | <tab/> | <wp/> | text_and_links astyle_tag ::= <b> ap_content * </b> | <i> ap_content * </i> | <u> ap_content * </u> | <rtl> ap_content * </rtl> | <bg> ap_content * </bg> space ::= a single space character (hex20) attachment_tag ::= <attachment> plain_text ?
</attachment> News Story Markup Language v4.1 EngineeringSpecification 3 NSML Basics NSML defines a set of tags that are embedded in the story document. NSML tags are delimited by a set of angle brackets (< and >) and contain a tag name and optional tag attributes. For example the tag <string id=”title”> has a tag name of string and one attribute id=”title”. Each tag has its own set of attributes that may be applied to it. In the previous example the attribute name id is set to the attribute value title. In general, attributes are optional and defaults are assumed if they are not specified.
There are some exceptions to this. The description of each tag in this document points out all of the required attributes.
3.1 Start and End tags Most tags define and affect a specific part of an NSML document. This part of the document begins where the tag with its attributes (known as the start tag) appears in the document and continues to the corresponding end tag. The end tag has the same name as its corresponding start tag but starts with a </ sequence rather than just a < sequence. For example, </string> is the <string> tag’s end tag. End tags have no attributes. The part of the document enclosed in a set of start and end tags is referred to as the tag’s content.
The number of characters in a tag, including the tag name and all attribute names and values but not including the tag delimiters, cannot exceed 500. This excludes comments and CDATA sections (described below).
3.2 Empty tags Some tags never have any content. They may have attributes. The format of these empty tags are similar to start tags. The only difference is that empty tags end with the two character sequence “/>” . Some examples are <a/>, <pb/>, <sb/>, <tab/> and <wp/> .
3.3 Character set The set of characters allowed in tag names and attribute names is the ASCII characters a-z, 0-9, dot and dash. The first character of a name is always in the set a-z. A name may have a maximum of 12 characters.
Attribute values can be divided into three categories, TEXT, TOKEN and NUMBER values. A NUMBER value is a string of decimal digits from the ASCII set 0-9. A TOKEN value is a string of ASCII characters which has the same lexical constraints as tag and attribute names (same character set , same restrictions, case-insensitive, etc.) A TEXT value is a string of bytes in the range 0x20 to 0xff excluding the double quote character. TEXT values are case-sensitive. If a TEXT value contains characters not allowed in a TOKEN then it must be enclosed in double quotes. Values of type TEXT are limited to 100 bytes.
The characters allowed in plain_text content are undefined. The plain_text content is treated as a sequence of bytes. There are only two exceptions to this. When the plain_text content is parsed byte values in the range 0x00 to 0x1f are stripped from the content and character entity conversion is done on the plain_text content. The characters in the range 0x00 to 0x1f may be included in the plain_text content if represented as character entities.
Plain_text can be encapsulated in a CDATA section. CDATA sections are used to escape blocks of text containing characters that would otherwise be recognized as NSML markup. However, CDATA is NOT supported in <hidden>, i.e. instead of : <hidden><![CDATA[some text here]]></hidden> the tag must be used as: <hidden>some text here</hidden> A CDATA section starts with the nine character sequence ( <![CDATA[ ) and ends with the three character sequence ( ]]> ). Within a CDATA section, only the end sequence ( ]]> ) is recognized as markup, so that left and right angle brackets and ampersands may occur in the literal form; they need not News Story Markup Language v4.1 EngineeringSpecification be escaped using character entities. CDATA sections cannot nest. Byte values in the range 0x00 to 0x1f, except 0x09, 0x0A, and 0x0D will be stripped from CDATA sections.
3.4 Character Entities Anywhere in plain_text characters may be replaced with character entities. This is useful when the plain_text contains NSML markup characters that could confuse an NSML parser. NSML recognizes the full set of numeric character entities. Numeric character entities are 1 to 3 decimal digits preceded by &# and followed by a semicolon, ‘;’. Leading zeros are ignored so &#062; is the same as &#62;. The named character entities that may appear in plain_text are identified in table 2.1.
Table 2.1 – Character Entities Named Entity Numeric Entity symbol Description &#062; &gt; > Greater than &lt; &#060; < Less than &amp; &#038; & Ampersand 3.5 Comments Comments may be included anywhere (outside of tags) within an NSML document. Comments can only be seen when viewing the raw form of the document. In almost all cases comments should be hidden from the user’s view. It is allowable for applications that process a document to strip the comments from the processed document. A comment is any characters between the four character start , “<!--“ and the four -->” <!-- Comment Text Here -->).
character end “ comment markers (i.e. No translation of comment text is performed. This means that the characters ‘&’, ‘<’, and ‘>’ will be stored in the NSML document unchanged. Comments cannot be nested - the first “ -->” encountered terminates the comment.
For details on other text that is not intended for display, see the < hidden> tag.
3.6 Base Units Many of the attribute values are measurements expressed in base units. This measurement is equal to one- fourth of the average character width of the “system font”. This unit is based on the Microsoft Windows definition of its Dialog Base Unit. This measurement is device independent, so that applications can use a single measurement to create a similar appearance on different types of display devices or different font sizes.
News Story Markup Language v4.1 EngineeringSpecification 4 NSML top level elements 4.1 The <nsml> tag <nsml> Function:
Delimits a complete NSML document.
Attributes:
Version decimal number . decimal number Contains:
head_tag ?
projects_tag ?
form_tag ?
fields_tag ?
body_tag ?
aeset_tag ?
field_atts_tag ?
aeset_atts_tag ?
Used in:
Nothing The version attribute is optional. Its value is TEXT that defines the NSML version used to compose a document. It must read: version=”3.1” If not specified an NSML parser is to assume that the document is an earlier version of NSML.
4.2 The <head> tag – define information about the story <head> Function:
Defines information about a story or attached to a story that is not strictly content.
Attributes:
None Contains:
meta_tag ?
rgroup_tag ?
wgroup_tag ?
egroup_tag ?
wcode_tag ?
dist_tag ?
source_tag ?
formname_tag ?
storyid_tag ?
storygroupid_tag ?
password_tag ?
uuid_tag ?
uuidorig_tag ?
Used in:
nsml_tag News Story Markup Language v4.1 EngineeringSpecification 4.3 The <projects> tag <projects> Function:
Delimits the project and facet associations of the story.
Attributes:
None Contains:
(project_tag | facet_tag) * Used in:
nsml_tag 4.4 The <form> tag – define the appearance of the story fields <form> Function:
Defines a presentation/appearance of the story’s fields.
Descendents inherit all attributes unless overridden.
Attributes:
None Contains:
row_tag * Used in:
nsml_tag The <form> and </form> tags enclose a presentation description for the fields of a story. It does not contain any story content. All story content is defined within the <fields>, <body>, and <aeset> tags. A form is a definition of the layout of the story fields on a “page” when viewed. An NSML document need not contain a form definition. The presentation of the story is the responsibility of the application displaying the document that must acquire a form.
4.5 The <fields> tag <fields> Function:
Delimits the story fields content.
Attributes:
None Contains:
( string_tag | boolean_tag | date_tag | duration_tag ) * Used in:
nsml_tag News Story Markup Language v4.1 EngineeringSpecification 4.6 The <body> tag <body> Function:
Defines the story text content.
Attributes:
tabs space separated list of decimal numbers script decimal number width decimal number pindent decimal number rindent decimal number findent decimal number font string family decimal number (0 – 5) pitch decimal number (0 – 2) Contains:
p_tag; optional.
Used in:
nsml_tag The <body> and </body> tags enclose the text of the story. All text must be within paragraphs in the body element.
The tabs= attribute is optional. Its value is a list of decimal numbers that, if specified, defines the tab stop positions for all <tabs/> within the text. Each number in the list is the distance from the last stop. The last value in the list may by a dash, this indicates that the last number in the list is to repeat indefinitely.
The numbers are in base units. For example, tabs=”40 -“ may be specified to place stops at every 40 base units. If not specified tabs=”24” is assumed. If more than one number is specified in the list, the numbers are separated by spaces (i.e. tabs=”72 144”).
The script= and width= attributes are optional. They are used to preserve the margin settings used for word wrapping by the last application that modified the story. The width value is a decimal number that specifies the width, in base units, used to word wrap the text contained in the <body> tag. The script value is a decimal number that specifies the width, in base units, used to word wrap the text in the anchored elements. If the script attribute is not present this indicates the story is not scripted. If the width attribute is not present the application displaying the body text must choose an appropriate width. See description of related <wp/> tag.
The pindent= attribute is optional. Its value is a decimal number that defines the left paragraph indent for all paragraphs in the body of the story. The indent value is expressed in base units from the left. If not set it is assumed to be zero.
The rindent= attribute is optional. Its value is a decimal number that defines the right paragraph indent for all paragraphs in the body of the story. The indent value is expressed in base units from the right. If not set it is assumed to be zero.
The findent= attribute is optional. Its value is a decimal number that defines the indent for the first line of all paragraphs in the body of the story. The indent value is expressed in base units from the left. If not set it is assumed to be the same as pindent.
The font= attribute is optional. Its value is a string that is the name of a font to be used for display throughout the <body> of the story.
The family= attribute is optional. Its value is a decimal number in the range 0 to 5 that represents a font- family. If not set it is assumed to be zero. The meaning of the font-family values are:
News Story Markup Language v4.1 EngineeringSpecification 0 Don’t care 1 Roman 2 Swiss 3 Modern 4 Script 5 Decorative The pitch= attribute is optional. Its value is a decimal number in the range 0 to 2 that represents a pitch setting. If not set it is assumed to be zero. The meaning of the pitch values are:
0 default 1 fixed 2 variable 4.7 The <aeset> tag <aeset> Function:
Defines the set of anchored elements within the story.
Attributes:
font string family decimal number (0 – 5) pitch decimal number (0 – 2) Contains:
ae_tag *.
Used in:
nsml_tag See the description of the attributes under the <body> tag description.
4.8 The <field-atts> tag – Defining field attachments <field-atts> Function:
Delimits the field attachments.
Attributes:
None Contains:
attachment_tag * Used in:
nsml_tag 4.9 The <aeset-atts> tag – Defining anchored element set attachments <aeset-atts> Function:
Delimits the anchored element set attachments.
Attributes:
None Contains:
attachment_tag * Used in:
nsml_tag News Story Markup Language v4.1 EngineeringSpecification 5 Story Header - the <head> tag content 5.1 The <meta/> tag – Define story meta information <meta/> Function:
Defines meta information about a story.
Attributes:
wire “f” | “b” | “u” | “r” | “o” mail “read” | “unread” locked “pass” | “user” words decimal number rate decimal number break boolean_value mcserror boolean_value hold boolean_value float boolean_value wordlength decimal number version decimal number Contains:
Nothing Used in:
head_tag The wire= attribute is optional. If present it indicates that the story is an original, unmodified story received from a wire service provider. Its value must be one of “f” (flash), “b” (bulletin), “u” (urgent), “r” (routine), or “o” (other) to indicate the priority of the wire story. If not present, the story is not a wire story.
The mail= attribute is optional. If present it indicates that the story is an original, unmodified story received as a mail message. Its value must be one of “read” or “unread” to indicate whether the receiver of the mail message has viewed it. If not present, the story is not a mail message.
The locked= attribute is optional. If present it indicates that a user has locked the story. A user may restrict access to a story by locking it in one of two ways. Its value must be one of “pass” or “user”. If the value is “pass” then access is granted to users that can supply the correct password. If the value is “user” then access is granted only to the user who locked the story. If not present, the story is not locked. See the description of the <password> tag.
The words= attribute is optional. Its value is a decimal number that, if present, specifies the number of countable words in the body of the story. Countable words are those words that contribute to the audio read time of a story. If not present, the number of words is assumed to be zero.
The rate= attribute is optional. Its value is a decimal number that, if present, specifies the read rate to be used to calculate the audio read time. The read rate is in words per minute. If not present, the rate is assumed to be zero.
The break= attribute is optional. Its value is either either “true” / “1” or “false” / “0”. A true value indicates that the story is a story in a rundown which marks a break or divider between segments of the rundown. If this attribute is not present, false is assumed.
The mcserror= attribute is optional. Its value is either “true” / “1” or “false” / “0”. A true value indicates that the story is a story in a rundown which contains machine control instructions and at least one of the News Story Markup Language v4.1 EngineeringSpecification instructions cannot be understood by the machine control subsystem. If this attribute is not present, false is assumed.
The hold= attribute is optional. Its value is either either “true” / “1” or “false” / “0”. A true value indicates that the story is not eligible for automatic purge. A user will place a hold on a story that he wants to protect from the automatic data base story purge policy. If this attribute is not present, false is assumed.
The float= attribute is optional. Its value is either either “true” / “1” or “false” / “0”. A true value indicates that the story is a story in a rundown which has been “floated” by a user. A floating story deserves special treatment in the rundown because it is not yet included as a story to go on-air. If this attribute is not present, false is assumed.
The wordlength= attribute is optional. Its value is a decimal number that, if present, specifies the number of characters that constitute a word in the body of the story.
The version= attribute is optional. Its value is a decimal number that, if present, specifies the version number of the story. This number starts at 0 when a story is created.
5.2 The <rgroup> tag <rgroup> Function:
Defines the name of the read group assigned to the story.
Attributes:
number decimal number Contains:
plain_text ?
Used in:
head_tag The number= attribute is optional. It is a decimal number which is the internal group number associated with the group name. It is valid to omit the group name and just specify the group number as in <rgroup number=”20”/>. If not specified the story has no read group assigned to it.
5.3 The <wgroup> tag <wgroup> Function:
Defines the name of the write group assigned to the story.
Attributes:
number decimal number Contains:
plain_text ?
Used in:
head_tag The number= attribute is optional. It is a decimal number which is the internal group number associated with the group name. It is valid to omit the group name and just specify the group number as in <wgroup number=”20”/>.
If not specified the story has no write group assigned to it.
News Story Markup Language v4.1 EngineeringSpecification 5.4 The <egroup> tag <egroup> Function:
Defines the name of the editorial group assigned to the story.
Attributes:
number decimal number Contains:
plain_text ?
Used in:
head_tag The number= attribute is optional. It is a decimal number which is the internal group number associated with the group name. It is valid to omit the group name and just specify the group number as in <egroup number=”20”/>. If not specified the story has no editorial group assigned to it.
5.5 The <wcode> tag <wcode> Function:
Defines the wire distribution codes assigned to the story when it was originally received.
This is only relevant if the story originated from a wire service provider.
Not all wire stories will have a wire distribution code.
Attributes:
None Contains:
plain_text ?
Used in:
head_tag 5.6 The <dist> tag <dist> Function:
Defines the distribution code that a user has attached to the story.
Attributes:
None Contains:
plain_text ?
Used in:
head_tag News Story Markup Language v4.1 EngineeringSpecification 5.7 The <source> tag <source> Function:
Defines the name of the News DataBase Server that generated the story.
Attributes:
None Contains:
plain_text ?
Used in:
head_tag 5.8 The <formname> tag <formname> Function:
Defines the form that was used to create the first instance of the story.
The form also determines which fields must be preserved when the story is edited.
Attributes:
None Contains:
plain_text ?
Used in:
head_tag 5.9 The <storyid> tag <storyid> Function:
Defines the identification string used by the News DataBase Server to locate a story.
The format and content of the <storyid> is not specified in NSML.
Attributes:
None Contains:
plain_text ?
Used in:
head_tag 5.10 The <storygroupid> tag <storygroupid> Function:
Defines the string used by the News DataBase Server to identify a group of stories.
Each story in the group will have this same identifier.
The format and content of the <storygroupid> is not specified in NSML.
Attributes:
None Contains:
plain_text ?
Used in:
head_tag News Story Markup Language v4.1 EngineeringSpecification 5.11 The <password> tag <password> Function:
Defines the password assigned to the story if it is locked with a password.
This should only be present if the locked=”pass” attribute is present in the <meta/> tag.
This will only be included in documents sent and received by iNEWS 2.5 and above systems.
Attributes:
None Contains:
plain_text ?
Used in:
head_tag 5.12 The <uuid> and <uuidorig> tags <uuid> and <uuidorig> Function:
Allows for keeping track of server generated unique identifiers for the stories to support the storycentric workflow. A new predefined assignment field type is added to store the assignment URL..
Attributes:
None Contains:
plain_text ?
Used in:
head_tag 6 Story Associations – the <projects> tag content 6.1 The <project> tag <project> Function:
Defines a project association.
Attributes:
None Contains:
single_uuid Used in:
projects_tag 6.2 The <facet> tag <facet> Function:
Defines a project facet association.
Attributes:
None Contains:
double_uuid Used in:
projects_tag News Story Markup Language v4.1 EngineeringSpecification 7 Story Presentation – the <form> tag content 7.1 The <row> tag <row> Function:
Defines a presentation/appearance of a row of fields.
Attributes:
None Contains:
( stringcell_tag | checkboxcell_tag | comboboxcell_tag | datecell_tag | durationcell_tag ) * Used in:
form_tag 7.2 The <stringcell> tag <stringcell> Function:
Defines a presentation/appearance of a field.
Attributes:
idref id of a tag in the <fields> section length decimal number style ”b” | “i” | “u” | “” | space separated list of those letters align “left” | “right” | “center” ro boolean_value aready boolean_value llength decimal number lstyle ”b” | “i” | “u” | “” | space separated list of those letters lalign “left” | “right” | “center” lposition “left” | “right” | “top” | “bottom” limit boolean_value wg decimal number mandatory boolean_value Contains:
plain_text ?
Used in:
row_tag The idref= attribute is optional. It identifies the specific field from the <fields> section which is to be displayed in this cell. It is the id value that is matched. If not specified the cell is assumed to be blank and read-only.
The length= attribute is optional. Its value is a decimal number that, if present, defines the length in base units of the cell. If not specified the length of the cell is assumed to be zero.
The style= attribute is optional. It defines the physical style of the field content displayed in the cell. If not specified the cell inherits a style from the enclosing <row> or <form> tags. If no style is specified in either the <cell>, <form> or <row> then the style defaults to normal. The style value must be one of “b” (bold), “i” (italic), or “u” (underline) or a space separated list of those characters. For example style=”b u” specifies a style of bold-underline. To specify a normal style, style=”” may be used.
News Story Markup Language v4.1 EngineeringSpecification The align= attribute is optional. It defines the alignment of the field content displayed in the cell. The value must be one of “left”, “right”, or “center”. If not specified, “left” alignment is assumed.
A cell that references a field can inherit some behavior that is associated with the field’s id. For example, a cell that references the TOTAL-TIME field will be read-only and must contain the sum of the TAPE-TIME field and the story’s AUDIO-TIME field. This behavior is an implied attribute of the field with id=TOTAL-TIME.
The ro= attribute is optional. Its value is either “true” / “1” or “false” / “0”. A true value indicates that the cell is read-only. A cell is either read-write or read-only depending on the behavior inherited from the referenced field. A cell than has this attribute set to “true” overrides the read-write access of the referenced field. A cell presenting a field that is read-only can not force the cell to read-write. If this attribute is not present, false is assumed which means the cell is read-write.
The aready= attribute is optional. Its value is either “true” / “1” or “false” / “0”. A true value indicates that the field referenced by the cell via the idref= attribute is to acquire the aready attribute when a new story is created. If this attribute is not present, false is assumed.
The content of a stringcell_tag is the text of the cell label. Each cell may have one label, the label appears in its own presentation area either to the left, right, top or bottom of the cell. The stringcell_tag has some attributes that affect the appearance of the label.
The llength= attribute is optional. Its value is a decimal number that, if present, defines the length in base units of the cell label. If not specified the length of the cell label is assumed to be zero.
The lstyle= attribute is optional. It defines the physical style of the cell label. If not specified the cell label inherits a style from the enclosing <row> or <form> tags. The lstyle attribute value has the same values as the style attribute.
The lalign= attribute is optional. It defines the alignment of the cell label. The value must be one of “left”, “right”, or “center”. If not specified, “left” alignment is assumed.
The lposition= attribute is optional. It defines the placement of the label relative to the cell. It must be one of “left”, “right”, “top”, or “bottom”. If not specified “top” is assumed.
The limit= attribute is optional. Its value is either “true” / “1” or “false” / “0”. A true value indicates that the text content of the field referenced by the cell via the idref= attribute is limited to what fits into the visible space of the cell as defined by the length= attribute. If this attribute is not present, false is assumed.
The wg= attribute is optional. It defines a write group that restricts editing of the field to members of that group. It is a decimal number which is the internal group number of the group. If not specified the cell/field has no write group assigned to it. If this attribute is present it affects the ro= attribute of the corresponding field only when that attribute is false and the user attempting to edit the field is not a member of the group.
The mandatory= attribute is optional. Its value is either “true” / “1” or “false” / “0”. A true value indicates that the field referenced by the cell via the idref= attribute cannot be empty. If this attribute is not present, false is assumed.
News Story Markup Language v4.1 EngineeringSpecification 7.3 The <checkboxcell> tag <checkboxcell> Function:
Defines a presentation/appearance of a checkbox field.
Attributes:
idref id of a tag in the <fields> section length decimal number style ”b” | “i” | “u” | “” | space separated list of those letters align “left” | “right” | “center” ro boolean_value aready boolean_value llength decimal number lstyle ”b” | “i” | “u” | “” | space separated list of those letters lalign “left” | “right” | “center” lposition “left” | “right” | “top” | “bottom” limit boolean_value wg decimal number mandatory boolean_value Contains:
plain_text ?
Used in:
row_tag See the description of the attributes under the stringcell_tag description.
7.4 The <comboboxcell> tag <comboboxcell> Function:
Defines a presentation/appearance of a combobox field.
Attributes:
locked boolean_value idref id of a tag in the <fields> section length decimal number style ”b” | “i” | “u” | “” | space separated list of those letters align “left” | “right” | “center” ro boolean_value aready boolean_value llength decimal number lstyle ”b” | “i” | “u” | “” | space separated list of those letters lalign “left” | “right” | “center” lposition “left” | “right” | “top” | “bottom” limit boolean_value wg decimal number mandatory boolean_value Contains:
label_tag ? ( entry_tag | group_tag | list_tag ) * Used in:
row_tag The locked= attribute is optional. It determines the behavior of the combobox field. Its value is either ”true” | “1” | “false” | “0”. A true value indicates only entries in the drop down list can be entered into the field. Otherwise any text can be entered into the field. If this attribute is not present, “true” is assumed News Story Markup Language v4.1 EngineeringSpecification See the description of the other attributes under the stringcell_tag description.
7.4.1 The <label> tag <label> Function:
Defines the label text for a combobox field.
Attributes:
None Contains:
plain_text ?
Used in:
comoboboxcell_tag 7.4.2 The <entry> tag <entry> Function:
Defines one entry of the drop down list for a combobox field.
Attributes:
bg decimal number Contains:
plain_text ?
Used in:
comoboboxcell_tag The bg= attribute is optional. It defines a background color that will be applied to the field when this entry is selected from the combobox list. It is a decimal number which identies a system color. System colors are not defined in this specification. If not specified it defaults to zero and implies that no background color will be applied to the field.
7.4.3 The <group> tag <group> Function:
Defines a set of user names as entries for the drop down list for a combobox field.
Attributes:
id [REQUIRED] User group name bg decimal number Contains:
plain_text ?
Used in:
comoboboxcell_tag The id= attribute is required. This is the name of a user group.
The bg= attribute is optional. It defines a background color that will be applied to the field when a member of the group is selected from the combobox list. It is a decimal number which identies a system color.
System colors are not defined in this specification. If not specified it defaults to zero and implies that no background color will be applied to the field.
News Story Markup Language v4.1 EngineeringSpecification 7.4.4 The <list> tag <list> Function:
Defines a set of text strings as entries for the drop down list for a combobox field.
Attributes:
id [REQUIRED] System list name bg decimal number Contains:
plain_text ?
Used in:
comoboboxcell_tag The id= attribute is required. This is the name of a system list that contains zero or more text strings.
The bg= attribute is optional. It defines a background color that will be applied to the field when entry in the system list is selected from the combobox list. It is a decimal number which identies a system color.
System colors are not defined in this specification. If not specified it defaults to zero and implies that the background color contained in the system list for an entry will be applied to the field.
7.5 The <datecell> tag <datecell> Function:
Defines a presentation/appearance of a date field.
Attributes:
idref id of a tag in the <fields> section length decimal number style ”b” | “i” | “u” | “” | space separated list of those letters align “left” | “right” | “center” ro boolean_value aready boolean_value llength decimal number lstyle ”b” | “i” | “u” | “” | space separated list of those letters lalign “left” | “right” | “center” lposition “left” | “right” | “top” | “bottom” limit boolean_value wg decimal number mandatory boolean_value Contains:
date_value ?
Used in:
row_tag See the description of the attributes under the stringcell_tag description.
News Story Markup Language v4.1 EngineeringSpecification 7.6 The <durationcell> tag <durationcell> Function:
Defines a presentation/appearance of a time duration field.
Attributes:
idref id of a tag in the <fields> section length decimal number style ”b” | “i” | “u” | “” | space separated list of those letters align “left” | “right” | “center” ro boolean_value aready boolean_value llength decimal number lstyle ”b” | “i” | “u” | “” | space separated list of those letters lalign “left” | “right” | “center” lposition “left” | “right” | “top” | “bottom” limit boolean_value wg decimal number mandatory boolean_value Contains:
duration_value ?
Used in:
row_tag See the description of the attributes under the stringcell_tag description.
8 Story Fields – the <fields> tag content 8.1 The <string> tag – defining a field <string> Function:
Defines a field content.
Attributes:
id [REQUIRED] string aready boolean_value uec boolean_value ro boolean_value bg decimal number Contains:
plain_text ?
Used in:
fields_tag The <string> and </string> tags enclose plain_text which is uniquely associated with an identifier.
The id= attribute is required. It uniquely identifies the field in the story so that it may be referenced and used. The id is referenced by the idref= attribute of a stringcell_tag or a comboboxcell_tag within the <form> element of the NSML document. Each story will have only one field with a specific id. There are some reserved ids that identify fields with specific meaning and in some cases contain system-supplied content.
News Story Markup Language v4.1 EngineeringSpecification Reserved Field Identifiers AIR-DATE decimal digits Seconds since Jan 1, 1970 00:00:00 GMT ASSIGNMENT character string URL link to the assignment created in Media Central |UX, readonly AUDIO-TIME decimal digits Audio read time of story in seconds. Normally based on read-rate and word-count but can be user entered.
BACK-TIME • Hard in-time of the story in seconds special CA-CAPTURED character string Connect session information – number of characters captured.
CA-DIRECTION character string Connect session information – direction of connection (in or out) CA-ELAPSED character string Connect session information – duration as HH:MM:SS CA-IDENT character string Connect session information – session identifier CA-ORIGIN character string Connect session information – originating computer name CA-RECEIVED character string Connect session information – number of characters received CA-REMOTE character string Connect session information – remote computer name CA-SENT character string Connect session information – number of characters sent CG-ADDR character string MCS / BCS – CG device address CG-TEMPLATE character string MCS / BCS – CG template address CG-TEXT character string MCS / BCS – CG text CHANNEL character string MCS / BCS – generic event channel CREATE-BY character string User name of creator of first version of the story CREATE-DATE decimal digits Seconds since Jan 1, 1970 00:00:00 GMT CUME-TIME • Hard out-time of the story in seconds special DEVICE-MGR character string MCS / BCS – device manager name DURATION character string MCS / BCS – generic event duration EFFECT character string MCS / BCS – event effect ENDORSE-BY character string Name of user who endorsed the story EVENT-STATUS character string MCS / BCS – (video) event status ITEM-CHANNEL character string MCS / BCS – playout channel for a primary event MAIL-CC character string Mail information – cc addressee list MAIL-TO character string Mail information – to addressee list MODIFY-BY character string User name of the last modifier of the story MODIFY-DATE decimal digits Seconds since Jan 1, 1970 00:00:00 GMT MODIFY-DEV character string Device name on which story was last modified MOS-ACTIVE character string MOS – event identifier MOS-DURATION Decimal digits MOS – event duration MOS-SUBEVENT character string MOS – event details MOS-TITLE character string MOS -- event description PAGE-NUMBER character string User entered story identifier PRESENTER character string The name of the person who will read the story on-air READY character string State of the story. Either READY or ?.
RESULT-INDEX character string Search result information – story indentifier RESULT-LOC character string Search result information – story location (queue name) RUNS-TIME decimal digits Sum of runs times specified in production cues.
SEARCH-ID character string Search result information – search request identifier STATUS character string Status of some element of the story.
STILL-ID character string MCS / BCS – still store event identifier STILL-PRESET character string MCS / BCS – still store event preset STYLE character string MCS / BCS – event style TAPE-TIME decimal digits The run time in seconds of a tape to be played with the story TITLE character string User entered story title TOTAL-TIME decimal digits Total story time in seconds, sum of audio-time and tape-time VIDEO-ID character string MCS / BCS – video (tape / clip) identifier News Story Markup Language v4.1 EngineeringSpecification WRITER character string User name of the writer taking credit for the story.
• The back-time and cume-time field content has a special encoding. The hard in/out times are expressed in seconds as either a relative time or an absolute time (a.k.a. time of day.) The time is assumed to be relative unless the first character of the field is a @ character. For example a back-time content of 600 specifies a hard in-time of 10 minutes relative to the start of the show. A back-time content of @600 specifies a hard in-time of 12:10:00 am (10 minutes passed midnight.) The uec= attribute is optional. Its value is either “true” / “1” or “false” / “0”. A true value indicates that a user has entered content to override the system supplied content normally provided in the field. It is only significant for fields that may contain system supplied content.
The urgency= attribute is optional. Its value may be a decimal number from the 1 through 9 (if not specified “1” is assumed.) It is intended as a clue to the applications that the data in this field has some exceptional meaning and may need to be brought to the users attention. The specific method for presenting this information to the user is not defined by NSML. It could be ignored. The specific meaning of the urgency is dependent on the specific id.
The aready= attribute is optional. Its value is either “true” / “1” or “false” / “0”. A true value indicates that the content of the field affects the content of the READY field. Specifically, if any field with the aready attribute has a ? (question mark) as the first character of its content or it has no content, the READY field will have a ? as its content. If this attribute is not present, false is assumed.
The ro= attribute is optional. Its value is either “true” / “1” or “false” / “0”. A true value indicates that the field is read-only. This attribute is used in conjuction with the same attribute in the <stringcell> tag that references this <string>. Applications should only allow modifications to this <string> when the ro attributes of the <stringcell> and the <string> cell are both “false”. If this attribute is not present, false is assumed.
The bg= attribute is optional. It defines a background color that will be applied to the field. This attribute is acquired when an entry is selected from a combobox list. It is a decimal number which identies a system color. System colors are not defined in this specification. If not specified it defaults to zero and implies that no background color will be applied to the field.
8.2 The <boolean> tag <boolean> Function:
Defines a boolean field for a 0 or 1 value typically used as a checkbox field.
Attributes:
id [REQUIRED] string aready boolean_value uec boolean_value ro boolean_value bg decimal number Contains:
boolean_value ?
Used in:
fields_tag News Story Markup Language v4.1 EngineeringSpecification The id= attribute is required. It uniquely identifies the field in the story so that it may be referenced and used. The id is referenced by the idref= attribute of a checkboxcell_tag within the <form> element of the NSML document.
See the description of the attributes under the string_tag description.
8.3 The <date> tag <date> Function:
Defines a field for a date value.
Attributes:
id [REQUIRED] string aready boolean_value uec boolean_value ro boolean_value bg decimal number Contains:
date_value ?
Used in:
fields_tag The id= attribute is required. It uniquely identifies the field in the story so that it may be referenced and used. The id is referenced by the idref= attribute of a datecell_tag within the <form> element of the NSML document.
See the description of the attributes under the string_tag description.
8.4 The <duration> tag <duration> Function:
Defines a field for a time duration value.
Attributes:
id [REQUIRED] string aready boolean_value uec boolean_value ro boolean_value bg decimal number Contains:
duration_value ?
Used in:
fields_tag The id= attribute is required. It uniquely identifies the field in the story so that it may be referenced and <form> used. The id is referenced by the idref= attribute of a durationcell_tag within the element of the NSML document.
See the description of the attributes under the string_tag description.
News Story Markup Language v4.1 EngineeringSpecification 9 Story Body – the <body> tag content 9.1 The <p> tag – body paragraph blocks <p> Function:
Defines a paragraph of text.
Attributes:
font string family decimal number (0 – 5) pitch decimal number (0 – 2) Contains:
content_tag * text_content * Used in:
body_tag The <p> and </p> tags enclose the text of a paragraph. All text is inside paragraphs. See the description of the font=, family=, and pitch= attributes under the <body> tag description.
9.2 Content-based Tags <pi> <cc> Function:
Define the contained text as having a specific meaning.
Attributes:
None Contains:
text_content * Used in:
p_tag Content-based tags attach a specific meaning, context or usage to the enclosed text. Applications parsing the NSML document can use these tags to do content based processing on the text.
Content-based tags may not be nested.
The <pi> and </pi> tags enclose text which are instructions to the presenter reading the story on-air.
This text is not included in the timing of the story. It is not intended for display on the closed caption device and is intended for display on the prompter.
The <cc> and </cc> tags enclose text which is not read by the presenter on-air but is usually part of a package voice-over which is to be closed captioned. This text is not included in the timing of the story. It is not intended for display on the prompter.
The physical style tags may be nested in the content-based tags to create highlighting effects. Applications are free to render nested styles in content-based text in any way that matches their capabilities. If an editing application is limited in its ability to present the styles to the user in a meaningful way it is free to strip the physical styles it cannot handle.
News Story Markup Language v4.1 EngineeringSpecification 9.3 Physical Style Text Tags <b> <i> <u> Function:
Specify a physical style (appearance) for the contained text.
Attributes:
None Contains:
text_content * Used in:
text_content The physical style tags enclose text that is to be enhanced when presented to the user. Physical style tags may be nested within other physical style tags to combine highlighting effects. Applications are free to render styles in any way that matches their capabilities but the standard or preferred renderings are <b> to bold, <i> to italic and <u> to underline. If an editing application is limited in its ability to present the styles to the user in a meaningful way it is free to strip the combinations of styles it cannot handle.
These tags are unlike the content-based tags in that they do not identify the enclosed content, they are just available to the user to highlight words to improve readability.
9.4 Text Direction Tag <rtl> Function:
Specify that the contained text should be layed out as right to left text.
Attributes:
None Contains:
text_content * Used in:
text_content This tag is to assist in the handling of numbers for right to left environments. This is not needed for characters that have right-to-left Unicode property. It is needed for characters that do not have that property but should be handled similarly. This is the case with digit characters.
9.5 Background color Text Tag <bg> Function:
Specify a background color for the contained text.
Attributes:
rgb [REQUIRED] Six hexadecimal characters.
Contains:
text_content * Used in:
text_content The <bg> tag encloses text that is to be enhanced when presented to the user. This tag may be nested within other physical style tags to combine highlighting effects. Applications are free to render them in any way that matches their capabilities.
News Story Markup Language v4.1 EngineeringSpecification The rgb= attribute is optional. Its value is a string of exactly six hexadecimal characters Each pair of hexadecimal characters represent the red, green, and blue components of the color in that order.
9.6 Spacing and Layout Text Tags <pb/> <tab/> <wp/> Function:
Indicates spacing and layout for text.
Attributes:
None Contains:
Nothing.
Used in:
text_content The <pb/> tag indicates that when printing a story a page break is to occur at that position in the text.
The <tab/> tag indicates that the next character is to start at the next tab stop position.
The <wp/> tags will appear at the positions in the text where the word wrapping was performed by the last application to modify the text. These wrap points may be used by an application if it wishes to present the text of the story with the same appearance as it last appeared.
9.7 The <sb/> tag - text marker <sb/> Function:
A simple text marker.
Attributes:
None Contains:
Nothing.
Used in:
text_content <sb/> The tag can be used by applications as a text marker and has no other significance in NSML. It can be used in conjunction with video/audio sequences to indicate transition points of the sequence relative to the text.
9.8 The <a/> tag – anchor to anchored elements <a/> Function:
Inserts a reference to an anchored element.
Attributes:
idref [REQUIRED] decimal number recovered [OPTIONAL] decimal number Contains:
Nothing.
Used in:
text_content News Story Markup Language v4.1 EngineeringSpecification The <a/> tag marks the spot within a paragraph of the document body at which an anchored element is referenced. The order and position of these anchors are intended to determine the order and position of the anchored elements when displayed by an application.
The idref= attribute is required. Its value is a decimal number that identifies a specific anchored element in the <aeset> that is referenced by this element. The value of the number must be between 0 and 255 inclusive.
The recovered= attribute is optional. The value of the attribute is an error or reason code:
• recovered=0: no changes have been made • recovered=1: changes have been made (no further specification) • recovered=2 or larger: reason code for the change.
The recovered attributes applies to the <a>, <ae>, <mc> and <attachment> and may be used by the server if it detects an NSML that is not fully valid (e.g. a relation between linked elements such as anchor and anchored element or machine control and attachment, are missing or ambiguous). The server will attempt to recover these elements. This will be indicated by adding a recovered attribute to the affected tag.
Please note that recovered attribute is reserved for future use and is optional. The absence of the attribute does not indicate a tag is unchanged. The attribute is meant to be informative for clients, i.e. the server will not evaluate the attribute or its presence.
9.9 The <link> tag <link> Function:
Defines a hyperlink to a resource.
Attributes:
None Contains:
show_tag ? url_tag Used in:
text_content 9.9.1 The <show> tag <show> Function:
Defines a hyperlink to a resource.
Attributes:
None Contains:
plain_text ?
Used in:
;link_tag The content of the <show> tag, if present, can be displayed and highlighted to denote the link.
News Story Markup Language v4.1 EngineeringSpecification 9.9.2 The <url> tag <url> Function:
Defines a hyperlink to a resource.
Attributes:
None Contains:
plain_text ?
Used in:
link_tag The content of the <url> tag is the actual link to be used to retrieve or navigate to the referenced object.
10 Story Anchored Element Set – the <aeset> tag content 10.1 The <ae> tag – anchored element <ae> Function:
Defines an anchored element.
Attributes:
id [REQUIRED] decimal number "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX" UID UNIQUE IDENTIFIER recovered [OPTIONAL] decimal number version type runs decimal number font string family decimal number (0 – 5) pitch decimal number (0 – 2) Contains:
hidden_tag ? ae_content * Used in:
aeset_tag The <ae> and </ae> tags enclose an anchored element. An anchored element is an object that is anchored at a specific position in the body of the document. How these objects are displayed is dependent on the object content and the application displaying the object. Anchored elements are referenced by anchors (a_tags) within body paragraphs. The anchored elements are expected to be the same sequence as their corresponding anchors within the story body.
The id= attribute is required. Its value is a decimal number that uniquely identifies the anchored element in the story so that it may be referenced and used. The id is referenced by the idref= attribute of the a_tag within the <body> element of the NSML document. Each id is unique within an anchored element set (<aeset>). The value of the number must be between 0 and 255 inclusive.
The uid attribute is optional for the client. It should be inserted when inserting production cues to a story and it must be maintained when moving production cues within a story. If the client does not specify a unique identifier for the production cue, the server generates a unique identifier for the anchored element in the story, so that it may be referenced and used further on. The uid has to be unique within the story. The uid attribute must be globally unique identifiers.
News Story Markup Language v4.1 EngineeringSpecification The version= attribute is optional. Its value is plain_text. It is typically a News Server version number or a News Client version number of the agent that created or modified the ancored element. The iNEWS Server typically supplies version=“S3.0”. This can be used to account for changes between versions of the server and the client.
The type= attribute is optional. Its value is plain_text. It is used to determine the type of information that may be contained in the anchored element. Known types are “G” (General), “M” (MOS), “V” (Video), “J” (Journalist Editor). If this attribute is not present “G” is assumed. Applications should allow for other types. Applications should preserve anchored elements with a type that is not known to the application.
The runs= attribute is optional. Its value is a decimal number that represents the runs time of the anchored element. If not set it is assumed to be zero. For “G” and “M” type elements this value is the sum of all of the “RUNS=” values found in the content of the anchored element.
See the description of the font=, family=, and pitch= attributes under the <body> tag description.
See the description of the recovered attribute under the <a/> tag description.
10.1.1 The <hidden> tag <hidden> Function:
Contains information relavant to an anchored element that is not for display.
Attributes:
None Contains:
plain_text ?
Used in:
ae_tag The text content is not for display. It is really metadata that is associated with the anchored element.
Currently only Journalist Editor (type=”J”) anchored elements contain such data. In any case, all applications must preserve this information when modifying a story.
Note: The CDATA section is not supported within the hidden tag.
10.1.2 Anchored element content – ae_content ae_content Function:
Defines the optional content elements in an ae_tag.
Start tag:
None Attributes:
None Contains:
( mc_tag | ap_tag ) * Used in:
ae_tag News Story Markup Language v4.1 EngineeringSpecification 10.2 The <mc> tag – machine control tag <mc> Function:
Defines a set of instructions used for machine control.
Attributes:
error boolean_value idref id of an <attachment> tag in the <aeset-atts> section flags recovered [OPTIONAL] decimal number runs decimal number status decimal number (0 – 255) font string family decimal number (0 – 5) pitch decimal number (0 – 2) Contains:
ap_tag * Used in:
ae_tag The <mc> and </mc> tags enclose machine control instructions which are understood by Machine Control Subsystem of the News System.
The error= attribute is optional. Its value is either “true” / “1” or “false” / “0”. A true value indicates that the News System’s Machine Control Subsystem was not able to understand or carry out the instructions contained within the tag. If this attribute is not present, false is assumed.
The idref= attribute is optional. It identifies a specific attachment in the <aeset-atts> section which “belongs” to this machine control element. It is the id value that is matched. If not specified there is no attachment that “belongs” to this machine control element.
The flags= attribute is optional. Its value is a sequence of characters that can be used by applications that manipulate the machine control information. Currently there can be as many as five characters. The values and meaning are:
Position Possible Values Meaning 1 Y,N Yes/No Editor available via ActiveX 2 Y,N Yes/No Player available via ActiveX 3 Y,N Yes/No Explorer available via ActiveX 4 A thru Z Changes if attachment changes since last written to database.
Cycles through 26 letters of English alphabet 5 M, B M=MOS(plain vanilla) B=CAP event (formerly BCS) (More possible values are likely to be added) The runs= attribute is optional. Its value is a decimal number that represents the runs time of the machine control element. If not set it is assumed to be zero.
The status= attribute is optional. Its value is a decimal number in the range 0 to 255 that represents the status as reported from the the News System’s Machine Control Subsystem. The meanings of the values are not defined in NSML.
See the description of the font=, family=, and pitch= attributes under the <body> tag description.
See the description of the recovered attribute under the <a/> tag description.
News Story Markup Language v4.1 EngineeringSpecification 10.3 The <ap> tag – anchored paragraphs block <ap> Function:
Defines a paragraph in anchored element.
Attributes:
font string family decimal number (0 – 5) pitch decimal number (0 – 2) Contains:
ap_content * Used in:
ae_tag The <ap> and </ap> tags enclose the text of a paragraph in anchored elements and machine control elements. Ap_text is differentiated from text because ap_text cannot contain <pb/> or <a/> tags.
See the description of the font=, family=, and pitch= attributes under the <body> tag description.
11 Field-atts and AEset-atts Content Definition 11.1 The <attachment> tag <attachment> Function:
Defines a sequence of text.
Attributes:
id [REQUIRED] string recovered [OPTIONAL] decimal number Contains:
plain_text ?
Used in:
field_atts_tag aeset_atts_tag The id= attribute is required. It uniquely identifies the attachment in the story so that it may be referenced and used. It is beyond the scope of the NSML specification to define where references to the attachment reside or how they are used.
Note: There is a limit of 32667 bytes limit on MOS attachment.
See the description of the recovered attribute under the <a/> tag description.
12 Example <?xml version="1.0"?> <nsml xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://avid.com/nsml nsml.xsd" xmlns=http://avid.com/nsml version="4.1"> <head> News Story Markup Language v4.1 EngineeringSpecification <meta words="56" rate="180"/> <formname>RUNDOWN-AIRDATE</formname> <storyid>0d7bd190:00f0a7ee:43949af4</storyid> <uuid>2fdd5bf9-9f0d-4b9b-904e-28207464b16c</uuid> <uuidorig>2fdd5bf9-9f0d-4b9b-904e-28207464b16c</uuidorig> </head> <projects> <project>fa8e61212f064ee0ae477c6225a54282</project> <facet>fa8e61212f064ee0ae477c6225a54282f4ba2a87bed44344a04d35a5580baa9b</facet> </projects> <fields> <string id="page-number">B01</string> <string id="presenter">EC</string> <string id="title">N:UNABOMBER HOUSE</string> <string id="var-3">VO/W</string> <string id="video-id">txfer310</string> <string id="event-status"/> <string id="status">OK</string> <string id="item-channel"></string> <duration id="audio-time">18</duration> <duration id="runs-time">22</duration> <duration id="total-time">40</duration> <date id="modify-date">1133812468</date> <string id="modify-by">csquire</string> <string id="endorse-by"/> <string id="cume-time"/> <duration id="tape-time" /> <string id="back-time"/> <date id="air-date">1121180576</date> </fields> <body> <p> <a idref="0" recovered="1"/> <pi>((EILEEN ANIM. BOX))</pi> </p> <p> <tab/>IN OTHER NATIONAL NEWS... THE COUNTRY'S MOST FAMOUS SHACK IS ON THE MOVE TONIGHT.</p> <p> <a idref="1"/> <pi>((TAKE vo))</pi> </p> <p> <pi><b>bold<i>italic<a idref="5"/></i></b></pi> <a idref="2"/> <cc>xxx</cc> News Story Markup Language v4.1 EngineeringSpecification <a idref="3"/> THE MONTANA HOME OF UNABOMBER SUSPECT TED KACZYNSKI IS UNDER A TARP, ON THIS TRUCK, HEADING TO SACRAMENTO.
</p> <p> <tab/> JURORS WILL BE GETTING A TOUR OF THE CABIN.</p> <p> <tab/>BY SHOWING HOW HE LIVED, DEFENSE ATTORNEYS ARE HOPING TO PROVE KACZYNSKI IS MENTALLY ILL.</p> <p> <a idref="4"/> <pi>((wipe vo))</pi> </p> <p> <a idref="5"/> </p> </body> <aeset> <ae id="0" uid="5b746893-2a0d-489d-ab3a-b81ff5f22e2b" version="S3.0" recovered="1"> <ap>EILEEN ANIM. BOX</ap> </ae> <ae id="1" uid="5b746893-2a0d-489d-ab3a-b81ff5f22e2c" version="S3.0" type="G" runs="0"> <ap>TAKE v/o</ap> </ae> <ae id="2" uid="5b746893-2a0d-489d-ab3a-b81ff5f22e2d" version="S3.0" type="G" runs="0"> <mc> <ap>CG NAT1</ap> <ap>NEAR GREAT FALLS, MT</ap> </mc> </ae> <ae id="3" uid="5b746893-2a0d-489d-ab3a-b81ff5f22e2e" version="S3.0" type="G" runs="0"> <mc> <ap>CG NAT</ap> </mc> </ae> <ae id="4" uid="5b746893-2a0d-489d-ab3a-b81ff5f22e2f" version="S3.0" type="G" runs="0"> <ap>wipe v/o----------------</ap> </ae> <ae id="5" uid="5b746893-2a0d-489d-ab3a-b81ff5f22e2a" version="S3.0" type="M" runs="22"> <mc idref="1" recovered="1" flags="NNYAM" runs="22" > <ap>video Unabomber (VO)</ap> News Story Markup Language v4.1 EngineeringSpecification </mc> <ap>runs 0:22</ap> </ae> </aeset> <aeset-atts> <attachment id="1" recovered="1"> <![CDATA[<AttachmentContent><mos><mosID>mosid.inews</mosID> <mosItemBrowserProgID> </mosItemBrowserProgID><mosAbstract>Unabomber (VO)</mosAbstract> <objID>60A10000</objID><objSlug>Unabomber</objSlug><objTB>60</objTB> <objDur>1323</objDur><itemEdDur>1</itemEdDur> <itemID>1</itemID></mos></AttachmentContent> ]]></attachment> </aeset-atts> </nsml>