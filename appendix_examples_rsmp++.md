Examples for RSMP++
===================

This document contains examples for the added statuses and commands in version 1.0.13 (RSMP++)

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
<a id="S0023"></a>
## S0023 Command table 

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
<a id="S0024"></a>
## S0024 Offset time

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

<a id="S0025"></a>
## S0025 Time-to-green

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
<a id="S0026"></a>
## S0026 Week time table

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
<a id="S0027"></a>
## S0027 Time tables

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

<a id="S0028"></a>
## S0028 Cycle time

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
		{"sCI":"S0028", "n":"status"}
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
		{"sCI":"S0028", "n":"status", "s":"01-80,02-80,03-75", "q":"recent"}
	]
}
```

<a id="S0029"></a>
## S0029 Forced input status

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
		{"sCI":"S0029", "n":"status"}
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
		{"sCI":"S0029", "n":"status", "s":"000000100010000010", "q":"recent"}
	]
}
```

<a id="M0014"></a>
## M0014 Set command table

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

<a id="M0015"></a>
## M0015 Set Offset time 

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
<a id="M0016"></a>
## M0016 Set week time table 

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

<a id="M0017"></a>
## M0017 Set time tables 

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

<a id="M0018"></a>
## M0018 Set cycle time

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

<a id="M0019"></a>
## M0019 Force input

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
		{"cCI":"M0018", "n":"status", "cO":"setInput", "v":"True"},
		{"cCI":"M0018", "n":"securityCode", "cO":"setInput", "v":"2321"}
		{"cCI":"M0018", "n":"input", "cO":"setInput", "v":"2"},
		{"cCI":"M0018", "n":"inputValue", "cO":"setInput", "v":"True"},
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
		{"cCI":"M0018", "n":"status", "v":"True", "age":"recent"},
		{"cCI":"M0018", "n":"securityCode", "v":"2321", "age":"recent"}
		{"cCI":"M0018", "n":"input", "v":"2", "age":"recent"},
		{"cCI":"M0018", "n":"inputValue", "v":"2321", "age":"True"}
	]
}
```
