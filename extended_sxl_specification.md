Copenhagen extended SXL (RSMP++)
================================
Specification

Draft 10

This document defines supplements to the signal exchange list (SXL)
defined for traffic light controllers (TLC).

The SXL extension was initiated by the City of Copenhagen to enable more flexible traffic management using the RSMP protocol.

The extension focuses on four elements:

- Ability to read and modify offset times
- Ability to read and modify green times
- Ability to read and modify time tables
- Ability to get predicted time-to-green / time-to-red

### Added statuses/commands

Below listed statuses and commands are the additions of the SXL from the previous SXL. No statuses, commands or other message types has been removed.

#### Added statuses

+ [S0022](#S0022) - List of time plans
+ [S0023](#S0023) - Command table
+ [S0024](#S0024) - Offset time
+ [S0025](#S0025) - Time-to-green
+ [S0026](#S0026) - Week time table
+ [S0027](#S0027) - Time tables
+ [S0028](#S0028) - Cycle time

#### Added commands

+ [M0014](#M0014) - Set command table
+ [M0015](#M0015) - Set offset time
+ [M0016](#M0016) - Set week time table
+ [M0017](#M0017) - Set time tables
+ [M0018](#M0018) - Set cycle time
+ [M0019](#M0019) - Force input

<a id="S0022"></a>
## S0022 List of time plans 

### Description
This status returns a comma separated list of time plans available in the TLC.

| ObjectType         | Object | StatusCodeId | Description        |
| ------------------ | ------ | ------------ | ------------------ |
| Traffic Controller |        | S0022        | List of time plans |

### Return value

| Name   | Type   | Value  | Comment                                        |
| ------ | ------ | ------ | ---------------------------------------------- |
| status | string | [text] | Comma separated list of configures time plans. |

#### Definition of return string
The return string is defined as:

```
n
```

Where:

| legend | description       |
| ------ | ----------------- |
| n      | index of timeplan |

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

### Description
This status returns the whole commandtable

| ObjectType         | Object | StatusCodeId | Description   |
| ------------------ | ------ | ------------ | ------------- |
| Traffic Controller |        | S0023        | Command table |

### Return value

| Name   | Type   | Value  | Comment                                |
| ------ | ------ | ------ | -------------------------------------- |
| status | string | [text] | Command table. Defines time extensions |

#### Definition of return string
The return string is defined as:

```
pp-dd-ee
```

Where:

| legend | description                       |
| ------ | --------------------------------- |
| pp     | time plan                         |
| dd     | dynamic band number (from 1-10)   |
| ee     | extension in seconds in this band |

**Note!**  
> Each command is separated with a comma.


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
		{"sCI":"S0023", "n":"status", "s":"01-1-30,01-2-10:", "q":"recent"}
	]
}
```

**Note!**  
> All messages should be acknowledged by the other part (The supervision system acknowledges the TLC's messages and vice versa). The acknowledge messages are not presented in the above examples. For more information see the RSMP specification.

<a id="S0024"></a>
## S0024 Offset time

### Description
This status returns the offset times of the whole table.

| ObjectType         | Object | StatusCodeId | Description |
| ------------------ | ------ | ------------ | ----------- |
| Traffic Controller |        | S0024        | Offset time |

### Return value

| Name   | Type   | Value  | Comment      |
| ------ | ------ | ------ | ------------ |
| status | string | [text] | Offset table |

#### Definition of return string
The return string is defined as:

```
pp-tt
```

Where:

| legend | description            |
| ------ | ---------------------- |
| pp     | time plan              |
| tt     | offset time in seconds |

**Note!**  
> each status is separated by a comma (,) E.g. pp-tt,pp-tt

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
		{"sCI":"S0024", "n":"status", "s":"01-20,02-10", "q":"recent" }
	]
}
```

**Note!**  
> All messages should be acknowledged by the other part (The supervision system acknowledges the TLC's messages and vice versa). The acknowledge messages are not presented in the above examples. For more information see the RSMP specification.

<a id="S0025"></a>
## S0025 Time-to-green

### Description
This status returns the whole Time to Green status

| ObjectType   | Object | StatusCodeId | description   |
| ------------ | ------ | ------------ | ------------- |
| Signal Group |        | S0025        | Time-To-Green |

### Return value

| Name           | Type   | Value        | Comment                                                                                                                                      |
| -------------- | ------ | ------------ | -------------------------------------------------------------------------------------------------------------------------------------------- |
| minToGEstimate | string | [time stamp] | Timestamp for the minimum time for the signal group to go to green. If the signal group is green, it is the minimum time for the next green. |

> Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. _2009-10-02T14:34:34.341Z_

### Return value

| Name           | Type   | Value        | Comment                                                                                                                                           |
| -------------- | ------ | ------------ | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| maxToGEstimate | string | [time stamp] | Timestamp for the maximum time time for the signal group to go to green. If the signal group is green, it is the maximum time for the next green. |

> Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. _2009-10-02T14:34:34.341Z_

### Return value

| Name              | Type   | Value        | Comment                                                                                                                                         |
| ----------------- | ------ | ------------ | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| likelyToGEstimate | string | [time stamp] | Timestamp for the most likely time for the signal group to go to green. If the signal group is green, it is the likely time for the next green. |

> Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. _2009-10-02T14:34:34.341Z_

### Return value

| Name          | Type    | Value     | Comment                               |
| ------------- | ------- | --------- | ------------------------------------- |
| ToGConfidence | integer | 0-100 (%) | Confidence of the likelyToGEstatimate |

### Return value

| Name           | Type   | Value        | Comment                                                                                                                                |
| -------------- | ------ | ------------ | -------------------------------------------------------------------------------------------------------------------------------------- |
| minToREstimate | string | [time stamp] | Timestamp for the minimum time for the signal group to go to red. If the signal group is red, it is the minimum time for the next red. |

> Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. _2009-10-02T14:34:34.341Z_

### Return value

| Name           | Type   | Value        | Comment                                                                                                                                |
| -------------- | ------ | ------------ | -------------------------------------------------------------------------------------------------------------------------------------- |
| maxToREstimate | string | [time stamp] | Timestamp for the maximum time for the signal group to go to red. If the signal group is red, it is the maximum time for the next red. |

> Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. _2009-10-02T14:34:34.341Z_

### Return value

| Name              | Type   | Value        | Comment                                                                                                                                   |
| ----------------- | ------ | ------------ | ----------------------------------------------------------------------------------------------------------------------------------------- |
| likelyToREstimate | string | [time stamp] | Timestamp for the most likely time for the signal group to go to red. If the signal group is red, it is the likely time for the next red. |

> Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. _2009-10-02T14:34:34.341Z_

### Return value

| Name          | Type    | Value     | Comment                             |
| ------------- | ------- | --------- | ----------------------------------- |
| ToRConfidence | integer | 0-100 (%) | Confidence of the likelyToREstimate |


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
		{"sCI":"S0025", "n":"minToGEstimate"},
		{"sCI":"S0025", "n":"maxToGEstimate"},
		{"sCI":"S0025", "n":"likelyToGEstimate"},
		{"sCI":"S0025", "n":"ToGConfidence"},
		{"sCI":"S0025", "n":"minToREstimate"},
		{"sCI":"S0025", "n":"maxToREstimate"},
		{"sCI":"S0025", "n":"likelyToREstimate"},
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
		{"sCI":"S0025", "n":"minToGEstimate", "s":"2016-05-11T21:55:10.231Z", "q":"recent"},
		{"sCI":"S0025", "n":"maxToGEstimate", "s":"2016-05-11T21:56:08.231Z", "q":"recent"},
		{"sCI":"S0025", "n":"likelyToGEstimate", "s":"2016-05-11T21:55:13.231Z", "q":"recent"},
		{"sCI":"S0025", "n":"ToGConfidence", "s":"87", "q":"recent"},
		{"sCI":"S0025", "n":"minToREstimate", "s":"2016-05-11T21:57:45.231Z", "q":"recent"},
		{"sCI":"S0025", "n":"maxToREstimate", "s":"2016-05-11T21:57:55.231Z", "q":"recent"},
		{"sCI":"S0025", "n":"likelyToREstimate", "s":"2016-05-11T21:57:45.231Z", "q":"recent"},
		{"sCI":"S0025", "n":"ToRConfidence", "s":"75", "q":"recent"}
	]
}
```

**Note!**  
> All messages should be acknowledged by the other part (The supervision system acknowledges the TLC's messages and vice versa). The acknowledge messages are not presented in the above examples. For more information see the RSMP specification.

<a id="S0026"></a>
## S0026 Week time table

### Description
This status returns time tables to use for each week day.

| ObjectType         | Object | StatusCodeId | Description     |
| ------------------ | ------ | ------------ | --------------- |
| Traffic Controller |        | S0026        | Week time table |

### Return value

| Name   | Type   | Value  | Comment         |
| ------ | ------ | ------ | --------------- |
| status | string | [text] | Week time table |

#### Definition of return string
The return string is defined as:

```
d-t
```

Where:

| legend | description   |
| ------ | ------------- |
| d      | day of week   |
| t      | time table nr |

and day of week legend are defined as:

| legend | Day of week |
| ------ | ----------- |
| 0      | Monday      |
| 1      | Tuesday     |
| 2      | Wednesday   |
| 3      | Thursday    |
| 4      | Friday      |
| 5      | Saturday    |
| 6      | Sunday      |

**Note!**  
> each status is separated by a comma (,) E.g. d-t,d-t

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
		{"sCI":"S0026", "n":"status", "s":"0-2,1-3,2-1,3-1,4-1,5-4,6-4", "q":"recent"}
	]
}
```

**Note!**  
> All messages should be acknowledged by the other part (The supervision system acknowledges the TLC's messages and vice versa). The acknowledge messages are not presented in the above examples. For more information see the RSMP specification.  

**Note 2!**  
> The TLC should always send the whole week.

<a id="S0027"></a>
## S0027 Time tables

### Description
This status returns all available time tables in the TLC

| ObjectType         | Object | StatusCodeId | Description |
| ------------------ | ------ | ------------ | ----------- |
| Traffic Controller |        | S0027        | Time tables |

### Return value

| Name   | Type   | Value  | Comment     |
| ------ | ------ | ------ | ----------- |
| status | string | [text] | Time tables |

#### Definition of return string
The return string is defined as:

```
t-o-h-m
```

Where:

| legend | description             |
| ------ | ----------------------- |
| t      | Time table nr (1-12)    |
| o      | Function                |
| h      | Hour - switching time   |
| m      | Minute - Switching time |

and function legend is defined as:

| legend | Selected plan by time table       |
| ------ | --------------------------------- |
| 0      | No plan is selected by time table |
| 1      | set plan 1                        |
| ...    | ...                               |
| 16     | set plan 16                       |

**Note!**  
> each status is separated by a comma (,) E.g. t-o-h-m,t-o-h-m

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
		{"sCI":"S0027", "n":"status", "s":"1-0-22-30,2-3-06-30,3-14-13-00,4-5-14-00", "q":"recent"}
	]
}
```

**Note!**  
> All messages should be acknowledged by the other part (The supervision system acknowledges the TLC's messages and vice versa). The acknowledge messages are not presented in the above examples. For more information see the RSMP specification.

<a id="S0028"></a>
## S0028 Cycle time

### Description
This status returns cycle times for all time tables in the TLC

| ObjectType         | Object | StatusCodeId | Description       |
| ------------------ | ------ | ------------ | ----------------- |
| Traffic Controller |        | S0028        | Cycle time tables |

### Return value

| Name   | Type   | Value  | Comment           |
| ------ | ------ | ------ | ----------------- |
| status | string | [text] | Cycle time tables |

#### Definition of return string
The return string is defined as:

```
pp-tt
```

Where:

| legend | description           |
| ------ | --------------------- |
| pp     | Time plan             |
| tt     | Cycle time in seconds |


**Note!**  
> each status is separated by a comma (,) E.g. pp-tt,pp-tt

<a id="M0014"></a>
## M0014 Set command table

### Description
This command sends commands to a specific signal group in a specific plan at a specific cycle step

| ObjectType         | Object | CommandCodeId | Description       |
| ------------------ | ------ | ------------- | ----------------- |
| Traffic Controller |        | M0014         | Set command table |

### Argument

| Name   | Command     | Type    | Value   | Comment            |
| ------ | ----------- | ------- | ------- | ------------------ |
| status | setCommands | integer | [0-255] | Plan to be changed |

#### Definition of argument

### Argument

| Name   | Command     | Type   | Value  | Comment       |
| ------ | ----------- | ------ | ------ | ------------- |
| status | setCommands | string | [text] | Command table |

#### Definition of argument
The argument is defined as:

```
dd-ee
```

Where:

| legend | description                       |
| ------ | --------------------------------- |
| dd     | Dynamic band number (from 1-10)   |
| ee     | Extension in seconds in this band |


**Note!**  
> each command is separated by a comma (,) E.g. dd-ee,dd-ee

### Argument

| Name         | Command     | Type   | Value  | Comment         |
| ------------ | ----------- | ------ | ------ | --------------- |
| securityCode | setCommands | String | [text] | Security code 2 |

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
		{"cCI":"M0014", "n":"plan", "cO":"setCommands", "v":"1"},
		{"cCI":"M0014", "n":"status", "cO":"setCommands", "v":"01-01,02-02"},
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
		{"cCI":"M0014", "n":"plan", "v":"1", "age":"recent"},
		{"cCI":"M0014", "n":"status", "v":"01-01,02-02", "age":"recent"},
		{"cCI":"M0014", "n":"securityCode", "v":"2312", "age":"recent"}
	]
}
```

**Note!**  
> All messages should be acknowledged by the other part (The supervision system acknowledges the TLC's messages and vice versa). The acknowledge messages are not presented in the above examples. For more information see the RSMP specification.

<a id="M0015"></a>
## M0015 Set Offset time 

### Description
This command sets offset times of a specific Time plan

| ObjectType         | Object | CommandCodeId | Description     |
| ------------------ | ------ | ------------- | --------------- |
| Traffic Controller |        | M0015         | Set offset time |

### Argument

| Name   | Command   | Type    | Value   | Comment                    |
| ------ | --------- | ------- | ------- | -------------------------- |
| status | setOffset | integer | [0-255] | Set offset time in seconds |

### Argument

| Name | Command | Type | Value | Comment |
| ---- | ------- | ---- | ----- | ------- |
| plan | setOffset | integer | [0-255] | Time plan nr |

### Argument

| Name         | Command   | Type   | Value  | Comment         |
| ------------ | --------- | ------ | ------ | --------------- |
| securityCode | setOffset | string | [text] | Security code 2 |

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

| ObjectType         | Object | CommandCodeId | Description         |
| ------------------ | ------ | ------------- | ------------------- |
| Traffic Controller |        | M0016         | Set week time table |

### Argument

| Name   | Command      | Type   | Value  | Comment       |
| ------ | ------------ | ------ | ------ | ------------- |
| status | setWeekTable | string | [text] | Command table |

#### Definition of argument
The argument is defined as:

```
d-t
```

Where:

| legend | description   |
| ------ | ------------- |
| d      | day of week   |
| t      | time table nr |

and day of week legend are defined as:

| legend | Day of week |
| ------ | ----------- |
| 0      | Monday      |
| 1      | Tuesday     |
| 2      | Wednesday   |
| 3      | Thursday    |
| 4      | Friday      |
| 5      | Saturday    |
| 6      | Sunday      |

**Note!**  
each status is separated by a comma (,) E.g. d-t,d-t

### Argument

| Name         | Command      | Type   | Value  | Comment         |
| ------------ | ------------ | ------ | ------ | --------------- |
| securityCode | setWeekTable | String | [text] | Security code 2 |

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
		{"cCI":"M0016", "n":"status", "cO":"setWeekTable", "v":"0-2,1-3,2-1,3-1,4-1,5-4,6-4"},
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
		{"cCI":"M0016", "n":"status", "v":"0-2,1-3,2-1,3-1,4-1,5-4,6-4", "age":"recent"},
		{"cCI":"M0016", "n":"securityCode", "v":"2314", "age":"recent"}
	]
}
```

**Note!**  
> All messages should be acknowledged by the other part (The supervision system acknowledges the TLC's messages and vice versa). The acknowledge messages are not presented in the above examples. For more information see the RSMP specification.

<a id="M0017"></a>
## M0017 Set time tables 

### Description
This command changes plans of specific time tables

| ObjectType         | Object | CommandCodeId | Description     |
| ------------------ | ------ | ------------- | --------------- |
| Traffic Controller |        | M0017         | Set time tables |

### Argument

| Name   | Command      | Type   | Value  | Comment             |
| ------ | ------------ | ------ | ------ | ------------------- |
| status | setTimeTable | string | [text] | Defines time tables |

#### Definition of argument
The argument is defined as:

```
t-o-h-m
```

Where:

| legend | description             |
| ------ | ----------------------- |
|   t    | Time table nr (1-12)    |
|   o    | Function                |
|   h    | Hour - switching time   |
|   m    | Minute - Switching time |

and function legend is defined as:

| legend | Selected plan by time table       |
| ------ | --------------------------------- |
|   0    | No plan is selected by time table |
|   1    | set plan 1                        |
|  ...   | ...                               |
|   16   | set plan 16                       |

**Note!**  
> each status is separated by a comma (,) E.g. t-o-h-m,t-o-h-m
  
**Note 2!**  
> Hour and minute is using local time (not UTC)

### Argument

| Name         | Command      | Type   | Value  | Comment         |
| ------------ | -------- --- | ------ | ------ | --------------- |
| securityCode | setTimeTable | string | [text] | Security code 2 |

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
		{"cCI":"M0017", "n":"status", "cO":"setTimeTable", "v":"1-1-6-30,1-0-9-0,1-1-15-30,1-0-18-0,2-1-7-0,2-0-9-0"},
		{"cCI":"M0017", "n":"securityCode", "cO":"setTimeTable", "v":"2321"}
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
		{"cCI":"M0017", "n":"status", "v":"1-1-6-30,1-0-9-0,1-1-15-30,1-0-18-0,2-1-7-0,2-0-9-0", "age":"recent"},
		{"cCI":"M0017", "n":"securityCode", "v":"2321", "age":"recent"}
	]
}
```

**Note!**  
> All messages should be acknowledged by the other part (The supervision system acknowledges the TLC's messages and vice versa). The acknowledge messages are not presented in the above examples. For more information see the RSMP specification.

<a id="M0018"></a>
## M0018 Set cycle time

### Description
This command changes cycle time

| ObjectType         | Object | CommandCodeId | Description     |
| ------------------ | ------ | ------------- | --------------- |
| Traffic Controller |        | M0018         | Set cycle time  |

### Argument

| Name   | Command      | Type    | Value   | Comment                   |
| ------ | ------------ | ------- | ------- | ------------------------- |
| status | setCycleTime | integer | [1-255] | Set cycle time in seconds |

### Argument

| Name         | Command      | Type   | Value  | Comment         |
| ------------ | -------- --- | ------ | ------ | --------------- |
| plan         | setCycleTime | string | [text] | Time plan nr    |

### Argument

| Name         | Command      | Type   | Value  | Comment         |
| ------------ | -------- --- | ------ | ------ | --------------- |
| securityCode | setCycleTime | String | [text] | Security code 2 |

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
		{"cCI":"M0018", "n":"status", "cO":"setCycleTime", "v":"2"},
		{"cCI":"M0018", "n":"plan", "cO":"setCycleTime", "v":"80"},
		{"cCI":"M0018", "n":"securityCode", "cO":"setCycleTime", "v":"2321"}
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
		{"cCI":"M0018", "n":"status", "v":"2", "age":"recent"},
		{"cCI":"M0018", "n":"plan", "v":"80", "age":"recent"},
		{"cCI":"M0018", "n":"securityCode", "v":"2321", "age":"recent"}
	]
}
```

**Note!**  
> All messages should be acknowledged by the other part (The supervision system acknowledges the TLC's messages and vice versa). The acknowledge messages are not presented in the above examples. For more information see the RSMP specification.

<a id="M0019"></a>
## M0019 Force input

### Description
This command changes cycle time

| ObjectType         | Object | CommandCodeId | Description     |
| ------------------ | ------ | ------------- | --------------- |
| Traffic Controller |        | M0019         | Force input     |

### Argument

| Name   | Command      | Type    | Value   | Comment                   |
| ------ | ------------ | ------- | ------- | ------------------------- |
| status | setInput     | boolean | <ul><li>False</li><li>True</li></ul> | False: Force input<br>True: Release input |

### Argument

| Name         | Command      | Type   | Value  | Comment         |
| ------------ | -------- --- | ------ | ------ | --------------- |
| securityCode | setInput     | String | [text] | Security code 2 |

### Argument

| Name         | Command      | Type    | Value   | Comment         |
| ------------ | -------- --- | ------- | ------- | --------------- |
| input        | setInput     | ordinal | [1-255] | Number of Input |

### Argument

| Name         | Command      | Type    | Value   | Comment         |
| ------------ | -------- --- | ------- | ------- | --------------- |
| input        | setInput     | ordinal | [1-255] | Number of Input |


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
		{"cCI":"M0018", "n":"status", "cO":"setCycleTime", "v":"2"},
		{"cCI":"M0018", "n":"plan", "cO":"setCycleTime", "v":"80"},
		{"cCI":"M0018", "n":"securityCode", "cO":"setCycleTime", "v":"2321"}
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
		{"cCI":"M0018", "n":"status", "v":"2", "age":"recent"},
		{"cCI":"M0018", "n":"plan", "v":"80", "age":"recent"},
		{"cCI":"M0018", "n":"securityCode", "v":"2321", "age":"recent"}
	]
}
```

**Note!**  
> All messages should be acknowledged by the other part (The supervision system acknowledges the TLC's messages and vice versa). The acknowledge messages are not presented in the above examples. For more information see the RSMP specification.
