Copenhagen extended SXL (1.0.13)
================================
Specification (working copy)

Draft 4

This document defines supplements to the official signal exchange list (SXL)
defined for traffic light controllers (TLC).


### Background

tbd.

### Versions of SXL for TLC

  * SXL 1.0.7:        The official SXL used for traffic light controllers
                      (official supported version)
  * SXL 1.0.8-1.0.11: Extensions for coordination support
                      Adds commands/statuses needed for coordination between TLCs
  * SXL 1.0.12:       Revised traffic counting (draft, not finished)
  * SXL 1.0.13:       SXL extensions by the Copenhagen Municipality


### Added statuses/commands

Below listed Statuses and commands is the extenstion of the RSMP SXL.

#### Added Statuses

+ S0022 - List of time plans
+ S0023 - Command table
+ S0024 - Offset time
+ S0025 - Time-to-green
+ S0026 - Week time table
+ S0027 - Time tables

#### Added Commands

+ M0014 - Set command table
+ M0015 - Set offset time
+ M0016 - Set week time table
+ M0017 - Set time tables

## S0022. List of time plans
-------------------------

###Description
This status returns a comma separated list of time plans avalable in the TLC.

+ **ObjectType:** Traffic Controller
+ **Object:** 
+ **StatusCodeId:** S0022
+ **Description:** List of time plans

### Return value
+ **Name:** Status
+ **Type:** String
+ **Value:** [text]
+ **Comment:** Comma spearated list of configured time plans

#### Definition of return string
The return string is defined as;

```
n,n,n
```

Where:

| legend | description |
| ------- | ---------- |
| n | index of timeplan |

**Note!**
The length of the string, (I.e. number of parameters in string) is defined by number of avalable time plans in the TLC.
**Note 2!**
All time plans are separated with a comma (,)

### Example message

**Status request**
``` json
	{"mType":"rSMsg",
		"type":"StatusRequest",
		"mId":"4d5dcb2e-7f5d-4c87-a186-a2c466dafd3b",
		"ntsOId":"AA+BBCCC=DDDEEFFF",
		"xNId":"",
		"cId":"AA+BBCCC=DDDEEFFF",
		"sS":[{"sCI":"S0022",
		"n":"status"}]}
```

**Status Response**
``` json
	{"mType":"rSMsg",
		"type":"StatusResponse",
		"mId":"339319bd-9c4e-4318-b34f-851d41ee7bd1",
		"ntsOId":"AA+BBCCC=DDDEEFFF",
		"xNId":"",
		"cId":"AA+BBCCC=DDDEEFFF",
		"sTs":"2016-05-11T09:55:07.712Z",
		"sS":[{"sCI":"S0022",
		"n":"status",
		"s":"1,2,3,5",
		"q":"recent"}]}

```

**Note!**
All messages should be acknowledged by the other part (The SCADA acknowledges the TLC's messages and vice versa). The acknowledg messages are not presented in the above examples. For more information see the RSMP specification.


## S0023 Command table
-------------------------

###Description
This status returns the whole commandtable

+ **ObjectType:** Traffic Controller
+ **Object:** 
+ **StatusCodeId:** S0023
+ **Description:** Command table

### Return value
+ **Name:** Status
+ **Type:** String
+ **Value:** [text]
+ **Comment:** Command table. Defines command, e.g. c-pulses.

#### Definition of return string
The return string is defined as;

```
pp-o-gg-cc
```

Where:

| legend | description |
| ------- | ---------- |
| pp | time plan |
| o | command |
| gg | group number |
| cc | cycle step |

and avalable commands are:

| legend | description |
| ------- | ---------- |
| 1 | Give green to group |
| 2-255 | reserved |

**Note!**
each status is separated by a semicolon (;) E.g. pp-o-gg-cc;pp-o-gg-cc;


### Example message

**Status request**
``` json
	{"mType":"rSMsg",
		"type":"StatusRequest",
		"mId":"481da9fe-b1af-4043-9868-61d26d325d71",
		"ntsOId":"AA+BBCCC=DDDEEFFF",
		"xNId":"",
		"cId":"AA+BBCCC=DDDEEFFF",
		"sS":[{"sCI":"S0023",
		"n":"status"}]}
```

**Status Response**
``` json
	{"mType":"rSMsg",
		"type":"StatusResponse",
		"mId":"64d47cbc-b018-4647-82e9-eb806058ef3e",
		"ntsOId":"AA+BBCCC=DDDEEFFF",
		"xNId":"",
		"cId":"AA+BBCCC=DDDEEFFF",
		"sTs":"2016-05-11T12:38:59.953Z",
		"sS":[{"sCI":"S0023",
		"n":"status",
		"s":"01-1-01-30;01-1-02-10;",
		"q":"recent"}]}
```

**Note!**
All messages should be acknowledged by the other part (The SCADA acknowledges the TLC's messages and vice versa). The acknowledg messages are not presented in the above examples. For more information see the RSMP specification.

## S0024 Offset time
-------------------------

###Description
This status returns the offset times of the whole table.

+ **ObjectType:** Traffic Controller
+ **Object:** 
+ **StatusCodeId:** S0024
+ **Description:** Offset time

### Return value
+ **Name:** Status
+ **Type:** String
+ **Value:** [text]
+ **Comment:** Offset table

#### Definition of return string
The return string is defined as;

```
pp-tt
```

Where:

| legend | description |
| ------- | ---------- |
| pp | time plan |
| tt | offset time in seconds |


**Note!**
each status is separated by a semicolon (;) E.g. pp-tt;pp-tt;


### Example message

**Status request**
``` json
	{"mType":"rSMsg",
		"type":"StatusRequest",
		"mId":"696c1eb9-e9bf-411c-8cef-9edd9c48338f",
		"ntsOId":"AA+BBCCC=DDDEEFFF",
		"xNId":"",
		"cId":"AA+BBCCC=DDDEEFFF",
		"sS":[{"sCI":"S0024",
		"n":"status"}]}
```

**Status Response**
``` json
	{"mType":"rSMsg",
		"type":"StatusResponse",
		"mId":"097edc53-cd4c-4fb8-9ed7-59c77869704b",
		"ntsOId":"AA+BBCCC=DDDEEFFF",
		"xNId":"",
		"cId":"AA+BBCCC=DDDEEFFF",
		"sTs":"2016-05-11T13:00:56.432Z",
		"sS":[{"sCI":"S0024",
		"n":"status",
		"s":"01-20;02-10;",
		"q":"recent"}]}
```

**Note!**
All messages should be acknowledged by the other part (The SCADA acknowledges the TLC's messages and vice versa). The acknowledg messages are not presented in the above examples. For more information see the RSMP specification.


## S0025 Time-to-green
-------------------------

###Description
This status returns the whole commandtable

+ **ObjectType:** Traffic Controller
+ **Object:** 
+ **StatusCodeId:** S0025
+ **Description:** Time-To-Green

### Return value
+ **Name:** StartTime
+ **Type:** String
+ **Value:** [time stamp]
+ **Comment:** Time stamp for start of measuring.

#### Definition of return string
Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. _2009-10-02T14:34:34.341Z_

### Return value
+ **Name:** minEndTime
+ **Type:** String
+ **Value:** [time stamp]
+ **Comment:** Time stamp for start of measuring.

#### Definition of return string
Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. _2009-10-02T14:34:34.341Z_

### Return value
+ **Name:** maxEndTime
+ **Type:** String
+ **Value:** [time stamp]
+ **Comment:** Time stamp for start of measuring.

#### Definition of return string
Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. _2009-10-02T14:34:34.341Z_

### Return value
+ **Name:** nextTime
+ **Type:** String
+ **Value:** [time stamp]
+ **Comment:** Time stamp for start of measuring.

#### Definition of return string
Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. _2009-10-02T14:34:34.341Z_

### Return value
+ **Name:** nextMinEndTime
+ **Type:** String
+ **Value:** [time stamp]
+ **Comment:** Time stamp for start of measuring.

#### Definition of return string
Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. _2009-10-02T14:34:34.341Z_

### Return value
+ **Name:** nextMaxEndTime
+ **Type:** String
+ **Value:** [time stamp]
+ **Comment:** Time stamp for start of measuring.

#### Definition of return string
Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. _2009-10-02T14:34:34.341Z_


### Example message

**Status request**
``` json
	
```

**Status Response**
``` json
	
```

**Note!**
All messages should be acknowledged by the other part (The SCADA acknowledges the TLC's messages and vice versa). The acknowledg messages are not presented in the above examples. For more information see the RSMP specification.

## S0026 Week time table
-------------------------

###Description
This status returns time tables to use for each week day.

+ **ObjectType:** Traffic Controller
+ **Object:** 
+ **StatusCodeId:** S0026
+ **Description:** Week time table

### Return value
+ **Name:** Status
+ **Type:** String
+ **Value:** [text]
+ **Comment:** Week time table

#### Definition of return string
The return string is defined as;

```
d-t
```

Where:

| legend | description |
| ------- | ---------- |
| d | day of week |
| t | time table nr |

and day of week legend are defined as:

| legend | Day of week |
| ------- | ---------- |
| 0 | Monday |
| 1 | Tuesday |
| 2 | Wednesday |
| 3 | Thursday |
| 4 | Friday |
| 5 | Saturday |
| 6 | Sunday |

**Note!**
each status is separated by a semicolon (;) E.g. d-t;d-t;

### Example message

**Status request**
``` json
	{"mType":"rSMsg",
		"type":"StatusRequest",
		"mId":"2af769ea-d715-44aa-af72-cfb666795a46",
		"ntsOId":"AA+BBCCC=DDDEEFFF",
		"xNId":"",
		"cId":"AA+BBCCC=DDDEEFFF",
		"sS":[{"sCI":"S0026",
		"n":"status"}]}
```

**Status Response**
``` json
	{"mType":"rSMsg",
		"type":"StatusResponse",
		"mId":"2ef406ed-17d1-4e50-b952-ebfb8dca18dc",
		"ntsOId":"AA+BBCCC=DDDEEFFF",
		"xNId":"",
		"cId":"AA+BBCCC=DDDEEFFF",
		"sTs":"2016-05-11T13:31:41.476Z",
		"sS":[{"sCI":"S0026",
		"n":"status",
		"s":"0-2;1-3;2-1;3-1;4-1:5-4;6-4;",
		"q":"recent"}]}
```

**Note!**
All messages should be acknowledged by the other part (The SCADA acknowledges the TLC's messages and vice versa). The acknowledg messages are not presented in the above examples. For more information see the RSMP specification.
**Note 2!**
The TLC shuld allways send the whole week.

## S0027 Time tables
-------------------------

###Description
This status returns all avalable time tables in the TLC

+ **ObjectType:** Traffic Controller
+ **Object:** 
+ **StatusCodeId:** S0027
+ **Description:** Time tables

### Return value
+ **Name:** Status
+ **Type:** String
+ **Value:** [text]
+ **Comment:** Time Tables

#### Definition of return string
The return string is defined as;

```
t-o-h-m
```

Where:

| legend | description |
| ------- | ---------- |
| t | Time table nr (1-12) |
| o | Function |
| h | Hour - switching time |
| m | Minute - Switching time |

and function legend is defined as:

| legend | Selected plan by time table |
| ------- | ---------- |
| 0 | No plan is selected by time table |
| 1 | set plan 1 |
| ... | ... |
| 16 | set plan 16 |

**Note!**
each status is separated by a semicolon (;) E.g. t-o-h-m;t-o-h-m;
**Note 2!**
Hour and minute is using local time (not UTC)

### Example message

**Status request**
``` json
	{"mType":"rSMsg",
		"type":"StatusRequest",
		"mId":"a82f7796-3cf6-4319-835b-ec8bf21bae69",
		"ntsOId":"AA+BBCCC=DDDEEFFF",
		"xNId":"",
		"cId":"AA+BBCCC=DDDEEFFF",
		"sS":[{"sCI":"S0027",
		"n":"status"}]}
```

**Status Response**
``` json
	{"mType":"rSMsg",
		"type":"StatusResponse",
		"mId":"1ed16ca5-2ea7-4e06-9226-d1b482b16db4",
		"ntsOId":"AA+BBCCC=DDDEEFFF",
		"xNId":"",
		"cId":"AA+BBCCC=DDDEEFFF",
		"sTs":"2016-05-11T13:46:57.781Z",
		"sS":[{"sCI":"S0027",
		"n":"status",
		"s":"1-0-22-30;2-3-06-30;3-14-13-00;4-5-14-00;",
		"q":"recent"}]}
```

**Note!**
All messages should be acknowledged by the other part (The SCADA acknowledges the TLC's messages and vice versa). The acknowledg messages are not presented in the above examples. For more information see the RSMP specification.

## M0014 Set command table
-------------------------

###Description
This status returns all avalable time tables in the TLCThis command sends commands to a specific signal group in a specific plan at a specific cycle step
+ **ObjectType:** Traffic Controller
+ **Object:** 
+ **CommandCodeId:** M0014
+ **Description:** Set command table

### Argument
+ **Name:** Status
+ **Command:** SetCommands
+ **Type:** String
+ **Value:** [text]
+ **Comment:** Command table

#### Definition of argument
The argument is defined as;

```
pp-o-gg-cc
```

Where:

| legend | description |
| ------- | ---------- |
| pp | Plan |
| o | Command |
| gg | Group number |
| cc | Cycle step |

and command legend is defined as:

| legend | Command |
| ------- | ---------- |
| 1 | Give green to group |
| 2-255 | reserved |

**Note!**
each command is separated by a semicolon (;) E.g. pp-o-gg-cc;pp-o-gg-cc;
### Argument
+ **Name:** SecurityCode
+ **Command:** SetStop
+ **Type:** String
+ **Value:** [text]
+ **Comment:** Security code 2

### Example message

**Command request**
``` json
	
```

**Command Response**
``` json
	
```

**Note!**
All messages should be acknowledged by the other part (The SCADA acknowledges the TLC's messages and vice versa). The acknowledg messages are not presented in the above examples. For more information see the RSMP specification.


M0015. Offset time
------------------------
Offset table
Each offset time is written as pp-tt where:
 * pp=time plan
 * tt=offset time in seconds

Each offset time is separated with a semicolon

E.g.
pp-tt;pp-tt;

M0016 Week time table
---------------------------
Week time table. Defines time table to use for each week day
Each day is written as d-t where:
d=day of week
t=time table nr

Day of week legend:
*  0=Monday
*  1=Tuesday
*  2=Wednesday
*  3=Thursday
*  4=Friday
*  5=Saturday
*  6=Sunday

M0017 Time table
----------------------
Time Table. Defines time tables.
Each time definition is written as t-o-h-m where:
t=time table nr (1-12)
o=function
h=hour - switching time
m=minute - switching minute

Function legend:
0=no plan is selected by time table
1=set plan 1
…
16= set plan 16

hour and minute is using local time (not UTC)

Each time definition is separated with a semicolon

E.g.
t-o-h-m;t-o-h-m;

### Examples

tbd.
