Copenhagen extended SXL (1.0.13)
================================
Specification

Draft 4

This document defines supplements to the official signal exchange list (SXL)
defined for traffic light controllers (TLC).


### Versions of SXL for TLC

  * SXL 1.0.7:        The official SXL used for traffic light controllers
                      (official supported version)
  * SXL 1.0.8-1.0.11: Extensions for coordination support
                      Adds commands/statuses needed for coordination between TLCs
  * SXL 1.0.12:       Revised traffic counting (draft, not finished)
  * SXL 1.0.13:       SXL extensions by the City of Copenhagen


### Added statuses/commands

Below listed statuses and commands are the additions of SXL 1.0.13 from the previous SXL. No statuses, commands or other message types has been removed.

#### Added statuses

+ [S0022](#S0022) - List of time plans
+ [S0023](#S0023) - Command table
+ [S0024](#S0024) - Offset time
+ [S0025](#S0025) - Time-to-green
+ [S0026](#S0026) - Week time table
+ [S0027](#S0027)- Time tables

#### Added commands

+ [M0014](#M0014) - Set command table
+ [M0015](#M0015) - Set offset time
+ [M0016](#M0016) - Set week time table
+ [M0017](#M0017) - Set time tables

## S0022 List of time plans <a id="S0022"></a>
----------------------------

###Description
This status returns a comma separated list of time plans available in the TLC.

+ **ObjectType:** Traffic Controller
+ **Object:** 
+ **StatusCodeId:** S0022
+ **Description:** List of time plans

### Return value
+ **Name:** Status
+ **Type:** String
+ **Value:** [text]
+ **Comment:** Comma separated list of configured time plans

#### Definition of return string
The return string is defined as:

```
n
```

Where:

| legend | description |
| ------- | ---------- |
| n | index of timeplan |

**Note!**  
The length of the string, (I.e. number of parameters in string) is defined by number of available time plans in the TLC.  
**Note 2!**  
All time plans are separated with a comma (,)

### Example message

**Status request**
``` json
{
	"mType":"rSMsg",
	"type":"StatusRequest",
	"mId":"48d93d8c-40ee-448b-adfd-4f8609a5cee3",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sS": [
		{ "sCI":"S0022", "n":"status" }
	]
}
```

**Status Response**
``` json
{
	"mType":"rSMsg",
	"type":"StatusResponse",
	"mId":"2404e9cc-88df-4994-ad3c-ca7bb8cf8d59",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sTs":"2016-05-11T19:37:06.678Z",
	"sS": [
		{"sCI":"S0022", "n":"status", "s":"1,2,3,5", "q":"recent"}
	]
}
```

**Note!**  
All messages should be acknowledged by the other part (The supervision system acknowledges the TLC's messages and vice versa). The acknowledge messages are not presented in the above examples. For more information see the RSMP specification.


## S0023 Command table <a id="S0023"></a>
----------------------

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
The return string is defined as:

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

and available commands are:

| legend | Command |
| ------- | ---------- |
| 1 | Give green to group |
| 2 | Red |
| 3 | reserved |
| ... | ... |
| 255 | reserved |


**Note!**  
each status is separated by a colon (:) E.g. pp-o-gg-cc:pp-o-gg-cc:


### Example message

**Status request**
``` json
{
	"mType":"rSMsg",
	"type":"StatusRequest",
	"mId":"481da9fe-b1af-4043-9868-61d26d325d71",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sS": [
		{ "sCI":"S0023", "n":"status" }
	]
}
```

**Status Response**
``` json
{
	"mType":"rSMsg",
	"type":"StatusResponse",
	"mId":"64d47cbc-b018-4647-82e9-eb806058ef3e",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sTs":"2016-05-11T12:38:59.953Z",
	"sS": [
		{"sCI":"S0023", "n":"status", "s":"01-1-01-30:01-1-02-10:", "q":"recent"}
	]
}
```

**Note!**  
All messages should be acknowledged by the other part (The supervision system acknowledges the TLC's messages and vice versa). The acknowledge messages are not presented in the above examples. For more information see the RSMP specification.

## S0024 Offset time <a id="S0024"></a>
--------------------

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
The return string is defined as:

```
pp-tt
```

Where:

| legend | description |
| ------- | ---------- |
| pp | time plan |
| tt | offset time in seconds |


**Note!**  
each status is separated by a colon (:) E.g. pp-tt:pp-tt:


### Example message

**Status request**
``` json
{
	"mType":"rSMsg",
	"type":"StatusRequest",
	"mId":"696c1eb9-e9bf-411c-8cef-9edd9c48338f",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sS": [
		{ "sCI":"S0024", "n":"status"}
	]
}
```

**Status Response**
``` json
{
	"mType":"rSMsg",
	"type":"StatusResponse",
	"mId":"097edc53-cd4c-4fb8-9ed7-59c77869704b",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sTs":"2016-05-11T13:00:56.432Z",
	"sS": [
		{"sCI":"S0024", "n":"status", "s":"01-20:02-10:", "q":"recent" }
	]
}
```

**Note!**  
All messages should be acknowledged by the other part (The supervision system acknowledges the TLC's messages and vice versa). The acknowledge messages are not presented in the above examples. For more information see the RSMP specification.


## S0025 Time-to-green <a id="S0025"></a>
----------------------

###Description
This status returns the whole commandtable

+ **ObjectType:** Signal Group
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
{
	"mType":"rSMsg",
	"type":"StatusRequest",
	"mId":"4bd1b76d-4be2-4b07-9a3f-48768c960951",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001SG002",
	"sS": [
		{"sCI":"S0025", "n":"startTime"},
		{"sCI":"S0025", "n":"minEndTime"},
		{"sCI":"S0025", "n":"maxEndTime"},
		{"sCI":"S0025", "n":"nextTime"},
		{"sCI":"S0025", "n":"nextMinEndTime"},
		{"sCI":"S0025", "n":"nextMaxEndTime"}
	]
}
```

**Status Response**
``` json
{
	"mType":"rSMsg",
	"type":"StatusResponse",
	"mId":"18e1f203-c2aa-4fb8-b7fe-5babf93f46f8",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001SG002",
	"sTs":"2016-05-11T19:58:02.487Z",
	"sS": [
		{"sCI":"S0025", "n":"startTime", "s":"2016-05-11T21:55:10.231Z", "q":"recent"},
		{"sCI":"S0025", "n":"minEndTime", "s":"2016-05-11T21:55:08.231Z", "q":"recent"},
		{"sCI":"S0025", "n":"maxEndTime", "s":"2016-05-11T21:55:13.231Z", "q":"recent"},
		{"sCI":"S0025", "n":"nextTime", "s":"2016-05-11T21:55:50.231Z", "q":"recent"},
		{"sCI":"S0025", "n":"nextMinEndTime", "s":"2016-05-11T21:55:45.231Z", "q":"recent"},
		{"sCI":"S0025", "n":"nextMaxEndTime", "s":"2016-05-11T21:55:55.231Z", "q":"recent"}
	]
}
```

**Note!**  
All messages should be acknowledged by the other part (The supervision system acknowledges the TLC's messages and vice versa). The acknowledge messages are not presented in the above examples. For more information see the RSMP specification.

## S0026 Week time table <a id="S0026"></a>
------------------------

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
The return string is defined as:

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
each status is separated by a colon (:) E.g. d-t:d-t:

### Example message

**Status request**
``` json
{
	"mType":"rSMsg",
	"type":"StatusRequest",
	"mId":"2af769ea-d715-44aa-af72-cfb666795a46",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sS": [
		{"sCI":"S0026", "n":"status"}
	]
}
```

**Status Response**
``` json
{
	"mType":"rSMsg",
	"type":"StatusResponse",
	"mId":"2ef406ed-17d1-4e50-b952-ebfb8dca18dc",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sTs":"2016-05-11T13:31:41.476Z",
	"sS": [
		{"sCI":"S0026", "n":"status", "s":"0-2:1-3:2-1:3-1:4-1:5-4:6-4:", "q":"recent"}
	]
}
```

**Note!**  
All messages should be acknowledged by the other part (The supervision system acknowledges the TLC's messages and vice versa). The acknowledge messages are not presented in the above examples. For more information see the RSMP specification.  
**Note 2!**  
The TLC should always send the whole week.

## S0027 Time tables <a id="S0027"></a>
--------------------

###Description
This status returns all available time tables in the TLC

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
The return string is defined as:

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
each status is separated by a colon (:) E.g. t-o-h-m:t-o-h-m:  
**Note 2!**  
Hour and minute is using local time (not UTC)

### Example message

**Status request**
``` json
{
	"mType":"rSMsg",
	"type":"StatusRequest",
	"mId":"a82f7796-3cf6-4319-835b-ec8bf21bae69",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sS": [
		{"sCI":"S0027", "n":"status"}
	]
}
```

**Status Response**
``` json
{
	"mType":"rSMsg",
	"type":"StatusResponse",
	"mId":"1ed16ca5-2ea7-4e06-9226-d1b482b16db4",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sTs":"2016-05-11T13:46:57.781Z",
	"sS":[
		{"sCI":"S0027", "n":"status", "s":"1-0-22-30:2-3-06-30:3-14-13-00:4-5-14-00:", "q":"recent"}
	]
}
```

**Note!**  
All messages should be acknowledged by the other part (The supervision system acknowledges the TLC's messages and vice versa). The acknowledge messages are not presented in the above examples. For more information see the RSMP specification.

## M0014 Set command table <a id="M0014"></a>
--------------------------

###Description
This command sends commands to a specific signal group in a specific plan at a specific cycle step
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
The argument is defined as:

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
| 2 | Red |
| 3 | reserved |
| ... | ... |
| 255 | reserved |

**Note!**  
each command is separated by a colon (:) E.g. pp-o-gg-cc:pp-o-gg-cc:
### Argument
+ **Name:** SecurityCode
+ **Command:** SetCommands
+ **Type:** String
+ **Value:** [text]
+ **Comment:** Security code 2

### Example message

**Command request**
``` json
{
	"mType":"rSMsg",
	"type":"CommandRequest",
	"mId":"2840c768-1005-4b2b-a59e-a123b063c430",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"arg": [
		{"cCI":"M0014", "n":"status", "cO":"setCommands", "v":"01-1-01-30:01-1-02-10"},
		{"cCI":"M0014", "n":"securityCode", "cO":"setCommands", "v":"2312"}
	]
}
```

**Command Response**
``` json
{
	"mType":"rSMsg",
	"type":"CommandResponse",
	"mId":"2e8e7ef7-488c-43d9-beac-b7a9cea66cc6",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"cTS":"2016-05-12T12:04:25.199Z",
	"rvs":[
		{"cCI":"M0014", "n":"status", "v":"01-1-01-30:01-1-02-10", "age":"recent"},
		{"cCI":"M0014", "n":"securityCode", "v":"2312", "age":"recent"}
	]
}
```

**Note!**  
All messages should be acknowledged by the other part (The supervision system acknowledges the TLC's messages and vice versa). The acknowledge messages are not presented in the above examples. For more information see the RSMP specification.


## M0015 Set Offset time <a id="M0015"></a>
------------------------

###Description
This command sets offset times of a specific Time plan
+ **ObjectType:** Traffic Controller
+ **Object:** 
+ **CommandCodeId:** M0015
+ **Description:** Set offset time

### Argument
+ **Name:** status
+ **Command:** SetOffset
+ **Type:** integer
+ **Value:** [0-255]
+ **Comment:** Set offset time in seconds

### Argument
+ **Name:** plan
+ **Command:** SetOffset
+ **Type:** integer
+ **Value:** [0-255]
+ **Comment:** Time plan nr

### Argument
+ **Name:** SecurityCode
+ **Command:** SetStop
+ **Type:** String
+ **Value:** [text]
+ **Comment:** Security code 2

### Example message

**Command request**
``` json
{
	"mType":"rSMsg",
	"type":"CommandRequest",
	"mId":"a00cbdc3-65a9-42e4-9658-0af2eb92db60",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"arg": [
		{"cCI":"M0015", "n":"status", "cO":"setOffset", "v":"30"},
		{"cCI":"M0015", "n":"plan", "cO":"setOffset", "v":"1"},
		{"cCI":"M0015", "n":"securityCode", "cO":"setOffset", "v":"2314"}
	]
}
```

**Command Response**
``` json
{
	"mType":"rSMsg",
	"type":"CommandResponse",
	"mId":"77291dd5-468c-42b4-96aa-f1553cf57466",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"cTS":"2016-05-12T12:05:57.558Z",
	"rvs": [
		{"cCI":"M0015", "n":"status", "v":"30", "age":"recent"},
		{"cCI":"M0015", "n":"plan", "v":"1", "age":"recent"},
		{"cCI":"M0015", "n":"securityCode", "v":"2314", "age":"recent"}
	]
}

```

**Note!**  
All messages should be acknowledged by the other part (The supervision system acknowledges the TLC's messages and vice versa). The acknowledge messages are not presented in the above examples. For more information see the RSMP specification.


## M0016 Set week time table <a id="M0016"></a>
----------------------------

###Description
This command sends commands change time plan of specific day
+ **ObjectType:** Traffic Controller
+ **Object:** 
+ **CommandCodeId:** M0016
+ **Description:** Set week time table

### Argument
+ **Name:** Status
+ **Command:** SetWeekTable
+ **Type:** String
+ **Value:** [text]
+ **Comment:** Command table

#### Definition of argument
The argument is defined as:

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
each command is separated by a colon (:) E.g. d-t:d-t:

### Argument
+ **Name:** SecurityCode
+ **Command:** SetStop
+ **Type:** String
+ **Value:** [text]
+ **Comment:** Security code 2

### Example message

**Command request**
``` json
{
	"mType":"rSMsg",
	"type":"CommandRequest",
	"mId":"7fe05b51-1436-4bf4-a1e8-54c946395e95",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"arg": [
		{"cCI":"M0016", "n":"status", "cO":"setWeekTable", "v":"0-2:1-3:2-1:3-1:4-1:5-4:6-4:"},
		{"cCI":"M0016", "n":"securityCode", "cO":"setWeekTable", "v":"2314"}
	]
}
```

**Command Response**
``` json
{
	"mType":"rSMsg",
	"type":"CommandResponse",
	"mId":"3c635519-c745-44e5-ab1d-8da0d0cabb84",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"cTS":"2016-05-12T12:09:47.574Z",
	"rvs": [
		{"cCI":"M0016", "n":"status", "v":"0-2:1-3:2-1:3-1:4-1:5-4:6-4:", "age":"recent"},
		{"cCI":"M0016", "n":"securityCode", "v":"2314", "age":"recent"}
	]
}
```

**Note!**  
All messages should be acknowledged by the other part (The supervision system acknowledges the TLC's messages and vice versa). The acknowledge messages are not presented in the above examples. For more information see the RSMP specification.


## M0017 Set time tables <a id="M0017"></a>
------------------------

###Description
This command changes plans of specific time tables
+ **ObjectType:** Traffic Controller
+ **Object:** 
+ **CommandCodeId:** M0017
+ **Description:** Set time tables

### Argument
+ **Name:** Status
+ **Command:** SetTimeTable
+ **Type:** String
+ **Value:** [text]
+ **Comment:** Defines time tables

#### Definition of argument
The argument is defined as:

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
each status is separated by a colon (:) E.g. t-o-h-m:t-o-h-m:  
**Note 2!**  
Hour and minute is using local time (not UTC)

### Argument
+ **Name:** SecurityCode
+ **Command:** SetStop
+ **Type:** String
+ **Value:** [text]
+ **Comment:** Security code 2

### Example message

**Command request**
``` json
 {
	"mType":"rSMsg",
	"type":"CommandRequest",
	"mId":"0e05974d-223b-47a0-9992-fbe00dd352bd",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"arg": [
		{"cCI":"M0017", "n":"status", "cO":"setTimeTable", "v":"1-0-22-30:2-3-06-30:3-14-13-00:4-5-14-00:"},
		{"cCI" "n":"securityCode", "cO":"setTimeTable", "v":"2321"}
	]
}
```

**Command Response**
``` json
{
	"mType":"rSMsg",
	"type":"CommandResponse",
	"mId":"25b1947b-284a-4fff-b723-448f7c1b80b4",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"cTS":"2016-05-12T12:11:14.105Z",
	"rvs": [
		{"cCI":"M0017", "n":"status", "v":"1-0-22-30:2-3-06-30:3-14-13-00:4-5-14-00:", "age":"recent"},
		{"cCI":"M0017", "n":"securityCode", "v":"2321", "age":"recent"}
	]
}
```

**Note!**  
All messages should be acknowledged by the other part (The supervision system acknowledges the TLC's messages and vice versa). The acknowledge messages are not presented in the above examples. For more information see the RSMP specification.


### Examples

** Example #1 **
In order to change the c-pulses of the TLC using RSMP:

1, Read the command table of the TLC, using RSMP status S0023.
The command table should contain all the c-pulses configured in the TLC.
E.g.
Signal group 4,5 and 6 have a c-pulse at second 65, plan 5  
```
05-1-4-65:05-1-5-65:05-1-6-65:
```
2, Modify the command table to your liking and set the new command table of the
TLC using M0014. M0014 replaces any previous command table already set in the
TLC. The RSMP command table is a separated input source for c-pulses and should
not erase any other c-pulses of the TLC which might have been set using a
non-RSMP method.
E.g.
Signal group 4,5 and 6 have a c-pulse at second 75, plan 5 
``` 
05-1-4-75:05-1-5-75:05-1-6-75:
```

