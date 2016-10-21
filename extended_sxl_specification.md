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

<a id="S0022"></a>
## S0022 List of time plans 

###Description
This status returns a comma separated list of time plans available in the TLC.

| ObjectType | Object | StatusCodeId | Description |
| ---------- | ------ | ------------ | ----------- |
| Traffic Controller |   | S0022 | List of time plans |

### Return value

| Name | Type | Value | Comment |
| ---- | ---- | ----- | ------- |
| Status | String | [text] | Comma separated list of configures time plans. |

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
> The length of the string, (I.e. number of parameters in string) is defined by number of available time plans in the TLC.  

**Note 2!**  
> All time plans are separated with a comma (,)

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
> All messages should be acknowledged by the other part (The supervision system acknowledges the TLC's messages and vice versa). The acknowledge messages are not presented in the above examples. For more information see the RSMP specification.

<a id="S0023"></a>
## S0023 Command table 

###Description
This status returns the whole commandtable

| ObjectType | Object | StatusCodeId | Description |
| ---------- | ------ | ------------ | ----------- |
| Traffic Controller |   | S0023 | Command table |

### Return value

| Name | Type | Value | Comment |
| ---- | ---- | ----- | ------- |
| Status | String | [text] | Command table. Defines command, e.g. c-pulses. |

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
> Each status is separated by a colon (:) E.g. pp-o-gg-cc:pp-o-gg-cc:


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
> All messages should be acknowledged by the other part (The supervision system acknowledges the TLC's messages and vice versa). The acknowledge messages are not presented in the above examples. For more information see the RSMP specification.

<a id="S0024"></a>
## S0024 Offset time

###Description
This status returns the offset times of the whole table.

| ObjectType | Object | StatusCodeId | Description |
| ---------- | ------ | ------------ | ----------- |
| Traffic Controller |   | S0024 | Offset time |

### Return value

| Name | Type | Value | Comment |
| ---- | ---- | ----- | ------- |
| Status | String | [text] | Offset table |

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
> each status is separated by a colon (:) E.g. pp-tt:pp-tt:

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
> All messages should be acknowledged by the other part (The supervision system acknowledges the TLC's messages and vice versa). The acknowledge messages are not presented in the above examples. For more information see the RSMP specification.

<a id="S0025"></a>
## S0025 Time-to-green

###Description
This status returns the whole Time to Green status

| ObjectType | Object | StatusCodeId | description |
| ---------- | ------ | ------------ | ----------- |
| Signal Group |   | S0025 | Time-To-Green |

### Return value

| Name | Type | Value | Comment |
| ---- | ---- | ----- | ------- |
| MinToGEstimate | String | [time stamp] | Timestamp for the estimated minimum time of next green (During green phase, this value points to the next green phase) |

> Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. _2009-10-02T14:34:34.341Z_

### Return value

| Name | Type | Value | Comment |
| ---- | ---- | ----- | ------- |
| MaxToGEstimate | String | [time stamp] | Timestamp for the estimated maximum time of next green (During green phase, this value points to the next green phase) |

> Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. _2009-10-02T14:34:34.341Z_

### Return value

| Name | Type | Value | Comment |
| ---- | ---- | ----- | ------- |
| LikelyToGEstimate | String | [time stamp] | Timestamp for the estimated likely time of next green (During green phase, this value points to the next green phase) |

> Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. _2009-10-02T14:34:34.341Z_

### Return value

| Name | Type | Value | Comment |
| ---- | ---- | ----- | ------- |
| ToGConfidence | Integer | 0-100 (%) | Current confidence of the Time of Green |

> Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. _2009-10-02T14:34:34.341Z_

### Return value

| Name | Type | Value | Comment |
| ---- | ---- | ----- | ------- |
| MinToREstimate | String | [time stamp] | Timestamp for the estimated minimum time of next red (During red phase, this value points to the next red phase) |

> Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. _2009-10-02T14:34:34.341Z_

### Return value

| Name | Type | Value | Comment |
| ---- | ---- | ----- | ------- |
| MaxToREstimate | String | [time stamp] | Timestamp for the estimated maximum time of next red (During red phase, this value points to the next red phase) |

> Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. _2009-10-02T14:34:34.341Z_

### Return value

| Name | Type | Value | Comment |
| ---- | ---- | ----- | ------- |
| LikelyToREstimate | String | [time stamp] | Timestamp for the estimated likely time of next red (During red phase, this value points to the next red phase) |

> Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. _2009-10-02T14:34:34.341Z_

### Return value

| Name | Type | Value | Comment |
| ---- | ---- | ----- | ------- |
| ToRConfidence | Integer | 0-100 (%) | Current confidence of the Time of Red |

> Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. _2009-10-02T14:34:34.341Z_


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
		{"sCI":"S0025", "n":"MinToGEstimate"},
		{"sCI":"S0025", "n":"MaxToGEstimate"},
		{"sCI":"S0025", "n":"LikelyToGEstimate"},
		{"sCI":"S0025", "n":"ToGConfidence"},
		{"sCI":"S0025", "n":"MinToREstimate"},
		{"sCI":"S0025", "n":"MaxToREstimate"},
		{"sCI":"S0025", "n":"LikelyToREstimate"},
		{"sCI":"S0025", "n":"ToRConfidence"}
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
		{"sCI":"S0025", "n":"MinToGEstimate", "s":"2016-05-11T21:55:10.231Z", "q":"recent"},
		{"sCI":"S0025", "n":"MaxToGEstimate", "s":"2016-05-11T21:56:08.231Z", "q":"recent"},
		{"sCI":"S0025", "n":"LikelyToGEstimate", "s":"2016-05-11T21:55:13.231Z", "q":"recent"},
		{"sCI":"S0025", "n":"ToGConfidence", "s":"87", "q":"recent"},
		{"sCI":"S0025", "n":"MinToREstimate", "s":"2016-05-11T21:57:45.231Z", "q":"recent"},
		{"sCI":"S0025", "n":"MaxToREstimate", "s":"2016-05-11T21:57:55.231Z", "q":"recent"},
		{"sCI":"S0025", "n":"LikelyToREstimate", "s":"2016-05-11T21:57:45.231Z", "q":"recent"},
		{"sCI":"S0025", "n":"ToRConfidence", "s":"75", "q":"recent"}
	]
}
```

**Note!**  
> All messages should be acknowledged by the other part (The supervision system acknowledges the TLC's messages and vice versa). The acknowledge messages are not presented in the above examples. For more information see the RSMP specification.

<a id="S0026"></a>
## S0026 Week time table

###Description
This status returns time tables to use for each week day.

| ObjectType | Object | StatusCodeId | Description |
| ---------- | ------ | ------------ | ----------- |
| Traffic Controller |   | S0026 | Week time table |

### Return value

| Name | Type | Value | Comment |
| ---- | ---- | ----- | ------- |
| Status | String | [text] | Week time table |

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
> each status is separated by a colon (:) E.g. d-t:d-t:

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
> All messages should be acknowledged by the other part (The supervision system acknowledges the TLC's messages and vice versa). The acknowledge messages are not presented in the above examples. For more information see the RSMP specification.  

**Note 2!**  
> The TLC should always send the whole week.

<a id="S0027"></a>
## S0027 Time tables

###Description
This status returns all available time tables in the TLC

| ObjectType | Object | StatusCodeId | Description |
| ---------- | ------ | ------------ | ----------- |
| Traffic Controller |   | S0027 | Time tables |

### Return value

| Name | Type | Value | Comment |
| ---- | ---- | ----- | ------- |
| Status | String | [text] | Time tables |

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
> each status is separated by a colon (:) E.g. t-o-h-m:t-o-h-m:  

**Note 2!**  
> Hour and minute is using local time (not UTC)

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
> All messages should be acknowledged by the other part (The supervision system acknowledges the TLC's messages and vice versa). The acknowledge messages are not presented in the above examples. For more information see the RSMP specification.

<a id="M0014"></a>
## M0014 Set command table

###Description
This command sends commands to a specific signal group in a specific plan at a specific cycle step

| ObjectType | Object | CommandCodeId | Description |
| ---------- | ------ | ------------ | ----------- |
| Traffic Controller |   | M0014 | Set command table |

### Argument

| Name | Command | Type | Value | Comment |
| ---- | ------- | ---- | ----- | ------- |
| Status | SetCommands | String | [text] | Command table |

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
> each command is separated by a colon (:) E.g. pp-o-gg-cc:pp-o-gg-cc:

### Argument

| Name | Command | Type | Value | Comment |
| ---- | ------- | ---- | ----- | ------- |
| SecurityCode | SetStop | String | [text] | Security code 2 |

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
> All messages should be acknowledged by the other part (The supervision system acknowledges the TLC's messages and vice versa). The acknowledge messages are not presented in the above examples. For more information see the RSMP specification.

<a id="M0015"></a>
## M0015 Set Offset time 

###Description
This command sets offset times of a specific Time plan

| ObjectType | Object | CommandCodeId | Description |
| ---------- | ------ | ------------ | ----------- |
| Traffic Controller |   | M0015 | Set offset time |

### Argument

| Name | Command | Type | Value | Comment |
| ---- | ------- | ---- | ----- | ------- |
| Status | SetOffset | integer | [0-255] | Set offset time in seconds |

### Argument

| Name | Command | Type | Value | Comment |
| ---- | ------- | ---- | ----- | ------- |
| plan | SetOffset | integer | [0-255] | Time plan nr |

### Argument

| Name | Command | Type | Value | Comment |
| ---- | ------- | ---- | ----- | ------- |
| SecurityCode | SetStop | String | [text] | Security code 2 |

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
> All messages should be acknowledged by the other part (The supervision system acknowledges the TLC's messages and vice versa). The acknowledge messages are not presented in the above examples. For more information see the RSMP specification.

<a id="M0016"></a>
## M0016 Set week time table 

| ObjectType | Object | CommandCodeId | Description |
| ---------- | ------ | ------------ | ----------- |
| Traffic Controller |   | M0016 | Set week time table |

### Argument

| Name | Command | Type | Value | Comment |
| ---- | ------- | ---- | ----- | ------- |
| Status | SetWeekTable | String | [text] | Command table |

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

| Name | Command | Type | Value | Comment |
| ---- | ------- | ---- | ----- | ------- |
| SecurityCode | SetStop | String | [text] | Security code 2 |

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
> All messages should be acknowledged by the other part (The supervision system acknowledges the TLC's messages and vice versa). The acknowledge messages are not presented in the above examples. For more information see the RSMP specification.

<a id="M0017"></a>
## M0017 Set time tables 

###Description
This command changes plans of specific time tables

| ObjectType | Object | CommandCodeId | Description |
| ---------- | ------ | ------------ | ----------- |
| Traffic Controller |   | M0017 | Set time tables |

### Argument

| Name | Command | Type | Value | Comment |
| ---- | ------- | ---- | ----- | ------- |
| Status | SetTimeTable | String | [text] | Defines time tables |

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
> each status is separated by a colon (:) E.g. t-o-h-m:t-o-h-m:
  
**Note 2!**  
> Hour and minute is using local time (not UTC)

### Argument

| Name | Command | Type | Value | Comment |
| ---- | ------- | ---- | ----- | ------- |
| SecurityCode | SetStop | String | [text] | Security code 2 |

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
> All messages should be acknowledged by the other part (The supervision system acknowledges the TLC's messages and vice versa). The acknowledge messages are not presented in the above examples. For more information see the RSMP specification.


## Examples

###Example #1 - Scenario for extending the green time in one direction
 
This is an example of how to extend the green time of one signal group in one intersection. In this example the intersection is a simple intersecion with the following data:

- 4 signal groups
- 1 time plan

The result of this example is that one signal group gets a 2 seconds longer green time. 

#### Flowchart
![alt text](https://github.com/cityofcph/rsmp/blob/master/FlowChart_Extending_Green.png?raw=true "Flowchart Extending Green")

#### Request command table
This action is performed in the **Management system.**

The Management system sends a status request for status S0023 - Command table

#### RSMP message #1
The RSMP message for requesting command table is as follows:

**Direction:** Management system -> TLC
``` json
	{
		"mType":"rSMsg",
		"type":"StatusRequest",
		"mId":"38a0aec9-8b50-4da2-bb69-fc0bb821c47f",
		"ntsOId":"AA+BBCCC=DDDEEFFF",
		"xNId":"",
		"cId":"AA+BBCCC=DDDEEFFF",
		"sS":[{"sCI":"S0023",
		"n":"status"}]
	}
```

**Direction:** TLC -> Management system
``` json
	{
		"mType":"rSMsg",
		"type":"MessageAck",
		"oMId":"38a0aec9-8b50-4da2-bb69-fc0bb821c47f"
	}
```

#### Send Command table
This action is performed in the **TLC**

The TLC sends the **whole** command table. The return value is a colon separated list of all C-pulses, for all time plans. See description for S0023 for more details of this status.

#### RSMP message #2
Below is an example return value. This is a very simple intersection with only one time plan and four signal groups. 

**Direction:** TLC -> Management system
``` json
	{
		"mType":"rSMsg",
		"type":"StatusResponse",
		"mId":"21496e12-63bf-43ed-9bfe-7db4bc90fe69",
		"ntsOId":"AA+BBCCC=DDDEEFFF",
		"xNId":"",
		"cId":"AA+BBCCC=DDDEEFFF",
		"sTs":"2016-05-30T11:43:32.904Z",
		"sS":[{"sCI":"S0023",
		"n":"status",
		"s":"01-1-01-02:01-1-02-02:01-2-01-35:01-2-02-35:01-1-03-38:01-1-04-38:01-2-03-52:01-2-04-55:01-1-01-56:01-1-02-56",
		"q":"recent"}]
	}
```

**Direction:** Management system -> TLC
``` json
	{
		"mType":"rSMsg",
		"type":"MessageAck",
		"oMId":"21496e12-63bf-43ed-9bfe-7db4bc90fe69"
	}
```

From this messages the management system can extract the contents of the command table of the TLC. In the table listed below is the data extracted.

| Time plan | Command | group number (Signal group) | cycle step |
|-----------|---------|-----------------------------|------------|
| 01 | Give green to group | Signal group 1 | 02 |
| 01 | Give green to group | Signal group 2 | 02 |
| 01 | Red | Signal group 1 | 35 |
| 01 | Red | Signal group 2 | 35 |
| 01 | Give green to group | Signal group 3 | 38 |
| 01 | Give green to group | Signal group 4 | 38 |
| 01 | Red | Signal group 3 | 52 |
| 01 | Red | Signal group 4 | 55 |
| 01 | Give green to group | Signal group 1 | 56 |
| 01 | Give green to group | Signal group 2 | 56 |

This can be translated into the sequence diagram below
```
				------------------------------------------------------------
Signal Group 1 |##                                ######################    | 
Signal Group 2 |##                                ######################    |
Signal Group 3 |#####################################            ###########|
Signal Group 4 |#####################################                 ######|
			    ------------------------------------------------------------
			  0    5    10   15   20   25   30   35   40   45   50   55    60
```

#### Receive Command table
This action is performed in the **Management system**

The Management system Receives the command table.

#### Alter the command table
This action is performed in the **Management system**

Changes to the command table is performed in oder to extend the green time.

#### Send new Command table
This action is performed in the **Management system**

The management system sends the alterd command table to the TLC.

#### RSMP message #3
The RSMP message for sending the altered command table to the TLC is listed below:

**Direction:** Management system -> TLC
``` json
	{
		"mType":"rSMsg",
		"type":"CommandRequest",
		"mId":"12d5ca83-9cc0-400c-9048-e964137cdf46",
		"ntsOId":"AA+BBCCC=DDDEEFFF",
		"xNId":"",
		"cId":"AA+BBCCC=DDDEEFFF",
		"arg":[{"cCI":"M0014",
		"n":"status",
		"cO":"setCommands",
		"v":"01-1-01-02:01-1-02-02:01-2-01-35:01-2-02-35:01-1-03-38:01-1-04-38:01-2-03-54:01-2-04-55:01-1-01-56:01-1-02-56"},{"cCI":"M0014",
		"n":"securityCode",
		"cO":"setCommands",
		"v":"1234"}]
	}
```

#### Receive the new command table
This action is performed in the **TLC**

The TLC Receives the new, alterd, command table. In this example there have been a change in green time of Signal Group 3. The new Command table is listed below with the changed value highlighed in bold.

| Time plan | Command | group number (Signal group) | cycle step |
|-----------|---------|-----------------------------|------------|
| 01 | Give green to group | Signal group 1 | 02 |
| 01 | Give green to group | Signal group 2 | 02 |
| 01 | Red | Signal group 1 | 35 |
| 01 | Red | Signal group 2 | 35 |
| 01 | Give green to group | Signal group 3 | 38 |
| 01 | Give green to group | Signal group 4 | 38 |
| 01 | Red | Signal group 3 | **54** |
| 01 | Red | Signal group 4 | 55 |
| 01 | Give green to group | Signal group 1 | 56 |
| 01 | Give green to group | Signal group 2 | 56 |

This can be translated into the sequence diagram below
```
				------------------------------------------------------------
Signal Group 1 |##                                ######################    | 
Signal Group 2 |##                                ######################    |
Signal Group 3 |#####################################                #######|
Signal Group 4 |#####################################                 ######|
			    ------------------------------------------------------------
			  0    5    10   15   20   25   30   35   40   45   50   55    60
```

#### Check Validity
This action is performed in the **TLC**

The TLC Checks if the changed value is allowed to be changed. 

#### decision IF OK
This action is performed in the **TLC**

If the command table is allowed to be altered according to the Received command table the TLC sends Acknowledgment to the management system. (See description below) If the command table is **Not** allowed to be changed the TLC sends an **not Acknowledgment** to the management system. (See below)

#### Perform Changes
This action is performed in the **TLC** 

This action is performed if the changes in the command table is allowed to be performed. 

The command table in the TLC is alterd according to the recived command table.

#### Send ACK
This action is performed in the **TLC** 

This action is performed if the changes in the command table is allowed to be performed. 

The TLC sends a message Acknowledgment .

#### RSMP Message #4a

**Direction:** TLC -> Management system
``` json
	{
		"mType":"rSMsg",
		"type":"MessageAck",
		"oMId":"12d5ca83-9cc0-400c-9048-e964137cdf46"
	}
```

#### Send NACK
This action is performed in the **TLC** 

This action is performed if the changes in the command table is **Not** allowed to be performed.

The TLC sends a **not Acknowledged** .

#### RSMP Message #4b

**Direction:** TLC -> Management system
``` json
	{
		"mType":"rSMsg",
		"type":"MessageNotAck",
		"oMId":"12d5ca83-9cc0-400c-9048-e964137cdf46",
		"rea": "alarmCode: Changes to command table could not be performed"
	}
```

#### Send Command Response
This action is performed in the **TLC**

> I have to verify that this step is to be performed if the TLC Sends an NACK. I am not sure that is supposed to be performed if the command table was not altered.
> Karl-Fredrik

The TLC sends a CommandResponse to the management system.

#### RSMP Message #5
Below is an Command response. 

> I have to verify that this step is to be performed if the TLC Sends an NACK. I am not sure that is supposed to be performed if the command table was not altered.
> Karl-Fredrik

**Direction:** TLC -> Management system
``` json
	{
		"mType":"rSMsg",
		"type":"CommandResponse",
		"mId":"49da577a-6d68-48b7-9180-9653007e92c4",
		"ntsOId":"AA+BBCCC=DDDEEFFF",
		"xNId":"",
		"cId":"AA+BBCCC=DDDEEFFF",
		"cTS":"2016-05-30T12:27:25.906Z",
		"rvs":[{"cCI":"M0014",
		"n":"status",
		"v":"01-1-01-02:01-1-02-02:01-2-01-35:01-2-02-35:01-1-03-38:01-1-04-38:01-2-03-54:01-2-04-55:01-1-01-56:01-1-02-56",
		"age":"recent"},{"cCI":"M0014",
		"n":"securityCode",
		"v":"1234",
		"age":"recent"}]
	}
```

**Direction:** Management system -> TLC
``` json
	{
		"mType":"rSMsg",
		"type":"MessageAck",
		"oMId":"49da577a-6d68-48b7-9180-9653007e92c4"
	}
```
