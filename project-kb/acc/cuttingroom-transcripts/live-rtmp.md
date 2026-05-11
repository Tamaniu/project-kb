---
product: CuttingRoom
product-area: workflows
category: live
doc-type: tutorial-transcript
source: youtube
channel: "@cuttingroomeditor"
confidentiality: public
date-added: 17/04/2026
status: current
feature-tags: [live, cuttingroom, workflow]
---

# Live - RTMP

[Music]

let's go through the process of setting

let's go through the process of setting

let's go through the process of setting
up an rtmp stream when you click on the

up an rtmp stream when you click on the

up an rtmp stream when you click on the
rtmp option you'll see several fields

rtmp option you'll see several fields

rtmp option you'll see several fields
that need to be filled out the first

that need to be filled out the first

that need to be filled out the first
step is to give your rtmp stream and

step is to give your rtmp stream and

step is to give your rtmp stream and
name this can be anything that helps you

name this can be anything that helps you

name this can be anything that helps you
identify the stream next decide if this

identify the stream next decide if this

identify the stream next decide if this
will be a shared Source meaning it's

will be a shared Source meaning it's

will be a shared Source meaning it's
accessible to everyone or a private one

accessible to everyone or a private one

accessible to everyone or a private one
for your use only you'll notice three

for your use only you'll notice three

for your use only you'll notice three
fields that are gray out at first these

fields that are gray out at first these

fields that are gray out at first these
will be enabled later in the process so

will be enabled later in the process so

will be enabled later in the process so
don't worry about them just yet to

don't worry about them just yet to

don't worry about them just yet to
proceed you'll need to check a few boxes

proceed you'll need to check a few boxes

proceed you'll need to check a few boxes
the first option is use as growing live

the first option is use as growing live

the first option is use as growing live
if you skip this your stream will only

if you skip this your stream will only

if you skip this your stream will only
work with The Cutting Room live studio

work with The Cutting Room live studio

work with The Cutting Room live studio
or module and you won't be able to edit

or module and you won't be able to edit

or module and you won't be able to edit
the live feed directly in the editor we

the live feed directly in the editor we

the live feed directly in the editor we
include this option because directly

include this option because directly

include this option because directly
integrating live feeds into the editor

integrating live feeds into the editor

integrating live feeds into the editor
requires constant processing which is

requires constant processing which is

requires constant processing which is
more

more

more
expensive so

expensive so

expensive so
for a 247 channel that you are likely to

for a 247 channel that you are likely to

for a 247 channel that you are likely to
only grab a clip from Once in the while

only grab a clip from Once in the while

only grab a clip from Once in the while
disabling this will be more cost

disabling this will be more cost

disabling this will be more cost
effective next you'll want to set the

effective next you'll want to set the

effective next you'll want to set the
time zone this ensures that we display

time zone this ensures that we display

time zone this ensures that we display
the correct time for the live in the

the correct time for the live in the

the correct time for the live in the
players you can either use the

players you can either use the

players you can either use the
preconfigured shortcuts or if the stream

preconfigured shortcuts or if the stream

preconfigured shortcuts or if the stream
has an embedded time zone that doesn't

has an embedded time zone that doesn't

has an embedded time zone that doesn't
match you can override it by checking

match you can override it by checking

match you can override it by checking
the override time zone box if you want

the override time zone box if you want

the override time zone box if you want
to integrate your own electronic program

to integrate your own electronic program

to integrate your own electronic program
guide or e PPG we also support that if

guide or e PPG we also support that if

guide or e PPG we also support that if
you're using grace note you'll need to

you're using grace note you'll need to

you're using grace note you'll need to
enter the API key image endpoint and

enter the API key image endpoint and

enter the API key image endpoint and
station ID once youve filled in all the

station ID once youve filled in all the

station ID once youve filled in all the
necessary information click save to save

necessary information click save to save

necessary information click save to save
the rtmp configuration after saving when

the rtmp configuration after saving when

the rtmp configuration after saving when
you revisit the rtmp settings you'll see

you revisit the rtmp settings you'll see

you revisit the rtmp settings you'll see
some additional technical options the

some additional technical options the

some additional technical options the
first thing you'll notice is the status

first thing you'll notice is the status

first thing you'll notice is the status
which will show as stopped this means

which will show as stopped this means

which will show as stopped this means
the ingest point isn't currently active

the ingest point isn't currently active

the ingest point isn't currently active
you control when it starts and stops

you control when it starts and stops

you control when it starts and stops
which is important because running it

which is important because running it

which is important because running it
incurs costs when it's active Hardware

incurs costs when it's active Hardware

incurs costs when it's active Hardware
is engaged to receive live signals now

is engaged to receive live signals now

is engaged to receive live signals now
you can select the endpoint size we

you can select the endpoint size we

you can select the endpoint size we
offer four different sizes and the price

offer four different sizes and the price

offer four different sizes and the price
scales based on the frame rate and

scales based on the frame rate and

scales based on the frame rate and
resolution for most streams micro size

resolution for most streams micro size

resolution for most streams micro size
is sufficient but larger sizes are

is sufficient but larger sizes are

is sufficient but larger sizes are
available if needed the DNS based ingest

available if needed the DNS based ingest

available if needed the DNS based ingest
point is a server URL used to send a

point is a server URL used to send a

point is a server URL used to send a
live stream or video from a chosen

live stream or video from a chosen

live stream or video from a chosen
encoder to Cutting Room the DNS URL is a

encoder to Cutting Room the DNS URL is a

encoder to Cutting Room the DNS URL is a
static link That Remains the Same even

static link That Remains the Same even

static link That Remains the Same even
when you restart the stream copy this

when you restart the stream copy this

when you restart the stream copy this
URL into your encoder but notice that

URL into your encoder but notice that

URL into your encoder but notice that
you also have to enter a streaming key

you also have to enter a streaming key

you also have to enter a streaming key
the streaming key is a unique identifier

the streaming key is a unique identifier

the streaming key is a unique identifier
that works like a password allowing your

that works like a password allowing your

that works like a password allowing your
live stream encoder to connect securely

live stream encoder to connect securely

live stream encoder to connect securely
to Cutting Room it's typically required

to Cutting Room it's typically required

to Cutting Room it's typically required
during the setup of a live stream simply

during the setup of a live stream simply

during the setup of a live stream simply
copy the streaming key into your encoder

copy the streaming key into your encoder

copy the streaming key into your encoder
and you're ready to start streaming

and you're ready to start streaming

and you're ready to start streaming
remember to start the live stream in

remember to start the live stream in

remember to start the live stream in
Cutting Room Before initiating the

Cutting Room Before initiating the

Cutting Room Before initiating the
stream from your

encoder Press Start then open your

encoder Press Start then open your

encoder Press Start then open your
editor you'll see a video camera icon

editor you'll see a video camera icon

editor you'll see a video camera icon
click on it if everything is set up

click on it if everything is set up

click on it if everything is set up
correctly the stream should be up and

correctly the stream should be up and

correctly the stream should be up and
running quickly and you can start

running quickly and you can start

running quickly and you can start
editing typically your ingest point will

editing typically your ingest point will

editing typically your ingest point will
be ready to receive a stream within

be ready to receive a stream within

be ready to receive a stream within
about 40 seconds when it is ready you

about 40 seconds when it is ready you

about 40 seconds when it is ready you
can start your encoder

[Music]

[Music]

[Music]
if the status shows as running but the

if the status shows as running but the

if the status shows as running but the
editor displays no signal this means the

editor displays no signal this means the

editor displays no signal this means the
stream is active but no video signals

stream is active but no video signals

stream is active but no video signals
are being received if you're not

are being received if you're not

are being received if you're not
receiving any stream even after having

receiving any stream even after having

receiving any stream even after having
waited for some seconds first check the

waited for some seconds first check the

waited for some seconds first check the
encoder and ensure all settings are

encoder and ensure all settings are

encoder and ensure all settings are
configured

configured

configured
correctly if the encoder still cannot

correctly if the encoder still cannot

correctly if the encoder still cannot
connect after verifying settings try

connect after verifying settings try

connect after verifying settings try
switching from a dns-based server URL to

switching from a dns-based server URL to

switching from a dns-based server URL to
an IP based server URL the this can help

an IP based server URL the this can help

an IP based server URL the this can help
resolve issues caused by excessive DNS

resolve issues caused by excessive DNS

resolve issues caused by excessive DNS
caching in certain networks note that

caching in certain networks note that

caching in certain networks note that
when using an IP based server URL you

when using an IP based server URL you

when using an IP based server URL you
will need to update the server URL in

will need to update the server URL in

will need to update the server URL in
the encoder each time you start a stream

the encoder each time you start a stream

the encoder each time you start a stream
inest as the IP based server URL will

inest as the IP based server URL will

inest as the IP based server URL will
change the advantage of using DNS is

change the advantage of using DNS is

change the advantage of using DNS is
that it always Remains the Same once

that it always Remains the Same once

that it always Remains the Same once
your encoder starts with the right

your encoder starts with the right

your encoder starts with the right
settings your live stream will begin to

settings your live stream will begin to

settings your live stream will begin to
appear the stream status will change to

appear the stream status will change to

appear the stream status will change to
live and you'll be able to see your live

live and you'll be able to see your live

live and you'll be able to see your live
inside Cutting Room and start editing

inside Cutting Room and start editing

inside Cutting Room and start editing
from it

from it

from it
[Music]
