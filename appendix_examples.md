Appendix - Examples
===================

This document contains examples for all message types.

#### Alarms

+ [A0001](#A0001) - Serious hardware error
+ [A0002](#A0002) - Less serious hardware error
+ [A0003](#A0003) - Serious configuration error
+ [A0004](#A0004) - Less serious configuration error
+ [A0005](#A0005) - Communication error between traffic controllers / synchronisation error
+ [A0006](#A0006) - Safety error
+ [A0007](#A0007) - Communication error between one or multiple traffic controllers and central control system
+ [A0008](#A0008) - Dead lock error
+ [A0009](#A0009) - Other error
+ [A0010](#A0010) - Door open
+ [A0101](#A0101) - Pushbutton error
+ [A0201](#A0201) - Serious lamp error
+ [A0202](#A0202) - Less serious lamp error
+ [A0301](#A0301) - Detector error (hardware)
+ [A0302](#A0302) - Detector error (logic error)

#### Statuses

+ [S0001](#S0001) - Signal group status
+ [S0002](#S0002) - Detector logic status
+ [S0003](#S0003) - Input status
+ [S0004](#S0004) - Output status
+ [S0005](#S0005) - Traffic Controller starting
+ [S0006](#S0006) - Emergency stage
+ [S0007](#S0007) - Controller switched on
+ [S0008](#S0008) - Manual control
+ [S0009](#S0009) - Fixed time control
+ [S0010](#S0010) - Isolated control
+ [S0011](#S0011) - Yellow flash
+ [S0012](#S0012) - All red
+ [S0013](#S0013) - Police key
+ [S0014](#S0014) - Current time plan
+ [S0015](#S0015) - Current traffic situation
+ [S0016](#S0016) - Number of detector logics
+ [S0017](#S0017) - Number of signal groups
+ [S0018](#S0018) - Number of time plans
+ [S0019](#S0019) - Number of traffic situations
+ [S0020](#S0020) - Control mode
+ [S0021](#S0021) - Manually set detector logic
+ [S0022](#S0022) - List of time plans
+ [S0023](#S0023) - Command table
+ [S0024](#S0024) - Offset time
+ [S0025](#S0025) - Time-to-green
+ [S0026](#S0026) - Week time table
+ [S0027](#S0027) - Time tables
+ [S0028](#S0028) - Cycle time
+ [S0029](#S0029) - Forced input status

#### Commands

+ [M0014](#M0014) - Set command table
+ [M0015](#M0015) - Set offset time
+ [M0016](#M0016) - Set week time table
+ [M0017](#M0017) - Set time tables
+ [M0018](#M0018) - Set cycle time
+ [M0019](#M0019) - Force input

<a id="A0001"></a>
## A0001 Serious hardware error

``` json
{
	"mType":"rSMsg",
	"type":"Alarm",
	"mId":"f9b27ba1-c342-4018-baf9-b7629d8df0af",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"aCId":"A0001",
	"xACId":"Defined by manufacturer",
	"xNACId":"",
	"aSp":"Issue",
	"ack":"notAcknowledged",
	"aS":"Active",
	"sS":"notSuspended",
	"aTs":"2019-09-26T12:43:49.889Z",
	"cat":"D",
	"pri":"2",
	"rvs":[]
}
```

<a id="A0002"></a>
## A0002 Less serious hardware error

``` json
{
	"mType":"rSMsg",
	"type":"Alarm",
	"mId":"ee6c1417-a376-4401-8bc0-120faaef5962",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"aCId":"A0002",
	"xACId":"Defined by manufacturer",
	"xNACId":"",
	"aSp":"Issue",
	"ack":"notAcknowledged",
	"aS":"Active",
	"sS":"notSuspended",
	"aTs":"2019-09-26T12:47:16.683Z",
	"cat":"D",
	"pri":"3",
	"rvs":[]
}
```

<a id="A0003"></a>
## A0003 Serious configuration error

``` json
{
	"mType":"rSMsg",
	"type":"Alarm",
	"mId":"843d9fd4-29a6-40c5-b325-d3ba430cc679",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"aCId":"A0003",
	"xACId":"Defined by manufacturer",
	"xNACId":"",
	"aSp":"Issue",
	"ack":"notAcknowledged",
	"aS":"Active",
	"sS":"notSuspended",
	"aTs":"2019-09-26T12:48:00.285Z",
	"cat":"D",
	"pri":"2",
	"rvs":[]}
```

<a id="A0004"></a>
## A0004 Less serious configuration error

``` json
{
	"mType":"rSMsg",
	"type":"Alarm",
	"mId":"13889d3e-a1ca-400b-8212-276d15bcfa5b",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"aCId":"A0004",
	"xACId":"Defined by manufacturer",
	"xNACId":"",
	"aSp":"Issue",
	"ack":"notAcknowledged",
	"aS":"Active",
	"sS":"notSuspended",
	"aTs":"2019-09-26T12:48:38.277Z",
	"cat":"D",
	"pri":"3",
	"rvs":[]
}
```

<a id="A0005"></a>
## A0005 Communication error between traffic controllers / synchronisation error

``` json
{
	"mType":"rSMsg",
	"type":"Alarm",
	"mId":"9d29620a-0432-4eeb-826c-b9e4b08892a3",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"aCId":"A0005",
	"xACId":"Defined by manufacturer",
	"xNACId":"",
	"aSp":"Issue",
	"ack":"notAcknowledged",
	"aS":"Active",
	"sS":"notSuspended",
	"aTs":"2019-09-26T12:49:05.721Z",
	"cat":"D",
	"pri":"3",
	"rvs":[]
}
```

<a id="A0006"></a>
## A0006 Safety error

``` json
{
	"mType":"rSMsg",
	"type":"Alarm",
	"mId":"625dc28c-4f91-4218-81c4-3094c438688d",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"aCId":"A0006",
	"xACId":"Defined by manufacturer",
	"xNACId":"",
	"aSp":"Issue",
	"ack":"notAcknowledged",
	"aS":"Active",
	"sS":"notSuspended",
	"aTs":"2019-09-26T12:49:47.590Z",
	"cat":"D",
	"pri":"2",
	"rvs":[]
}
```

<a id="A0007"></a>
## A0007 Communication error between one or multiple traffic controllers and central control system

``` json
{
	"mType":"rSMsg",
	"type":"Alarm",
	"mId":"82f80c09-5320-4465-a45d-a8931bfc223d",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"aCId":"A0007",
	"xACId":"Defined by manufacturer",
	"xNACId":"",
	"aSp":"Issue",
	"ack":"notAcknowledged",
	"aS":"Active",
	"sS":"notSuspended",
	"aTs":"2019-09-26T12:50:12.402Z",
	"cat":"D",
	"pri":"3",
	"rvs":[]
}
```

<a id="A0008"></a>
## A0008 Dead lock error

``` json
{
	"mType":"rSMsg",
	"type":"Alarm",
	"mId":"148c4a38-d0ca-4a5e-81d4-951bcfc14df8",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001SG001",
	"aCId":"A0008",
	"xACId":"Defined by manufacturer",
	"xNACId":"",
	"aSp":"Issue",
	"ack":"notAcknowledged",
	"aS":"Active",
	"sS":"notSuspended",
	"aTs":"2019-09-26T12:51:08.171Z",
	"cat":"D",
	"pri":"2",
	"rvs":[{
		"n":"timeplan",
		"v":"[designation]"
	}]
}
```

<a id="A0009"></a>
## A0009 Other error

``` json
{
	"mType":"rSMsg",
	"type":"Alarm",
	"mId":"46d837c5-846b-43bb-adf9-e97e1c22bf08",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"aCId":"A0009",
	"xACId":"Defined by manufacturer",
	"xNACId":"",
	"aSp":"Issue",
	"ack":"notAcknowledged",
	"aS":"Active",
	"sS":"notSuspended",
	"aTs":"2019-09-26T12:50:37.701Z",
	"cat":"D",
	"pri":"3",
	"rvs":[]
}
```

<a id="A0010"></a>
## A0010 Door open

<a id="A0101"></a>
## A0101 Pushbutton error

``` json
{
	"mType":"rSMsg",
	"type":"Alarm",
	"mId":"3dca0e6e-beab-47af-8860-bcc2699b6d06",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001SG001",
	"aCId":"A0101",
	"xACId":"Defined by manufacturer",
	"xNACId":"",
	"aSp":"Issue",
	"ack":"notAcknowledged",
	"aS":"Active",
	"sS":"notSuspended",
	"aTs":"2019-09-26T12:53:03.836Z",
	"cat":"D",
	"pri":"3",
	"rvs":[]
}
```

<a id="A0201"></a>
## A0201 Serious lamp error

``` json
{
	"mType":"rSMsg",
	"type":"Alarm",
	"mId":"34a3f91b-e5b7-42ae-aee3-c9ce8577358a",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001SG001",
	"aCId":"A0201",
	"xACId":"Defined by manufacturer",
	"xNACId":"",
	"aSp":"Issue",
	"ack":"notAcknowledged",
	"aS":"Active",
	"sS":"notSuspended",
	"aTs":"2019-09-26T12:54:03.598Z",
	"cat":"D",
	"pri":"2",
	"rvs":[{
		"n":"color",
		"v":"red"
	}]
}
```

<a id="A0202"></a>
## A0202 Less serious lamp error

``` json
{
	"mType":"rSMsg",
	"type":"Alarm",
	"mId":"6b4bfd63-4aee-4a58-b58a-7c1c0d6a7b7f",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001SG001",
	"aCId":"A0202",
	"xACId":"Defined by manufacturer",
	"xNACId":"",
	"aSp":"Issue",
	"ack":"notAcknowledged",
	"aS":"Active",
	"sS":"notSuspended",
	"aTs":"2019-09-26T12:54:54.066Z",
	"cat":"D",
	"pri":"3",
	"rvs":[{
		"n":"color",
		"v":"red"
	}]
}
```

<a id="A0301"></a>
## A0301 Detector error (hardware)

``` json
{
	"mType":"rSMsg",
	"type":"Alarm",
	"mId":"ebeae300-c074-4658-a000-243265c3398f",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001DL001",
	"aCId":"A0301",
	"xACId":"Defined by manufacturer",
	"xNACId":"",
	"aSp":"Issue",
	"ack":"notAcknowledged",
	"aS":"Active",
	"sS":"notSuspended",
	"aTs":"2019-09-26T12:56:09.935Z",
	"cat":"D",
	"pri":"3",
	"rvs":[{
		"n":"detector",
		"v":"D1"
	},{
		"n":"type",
		"v":"loop"
	},{
		"n":"errormode",
		"v":"on"
	},{
		"n":"manual",
		"v":"True"
	}]
}
```

<a id="A0302"></a>
## A0302 Detector error (logic error)

``` json
{
	"mType":"rSMsg",
	"type":"Alarm",
	"mId":"b8ec9178-fe18-4386-9570-225a8e690b50",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001DL001",
	"aCId":"A0302",
	"xACId":"Defined by manufacturer",
	"xNACId":"",
	"aSp":"Issue",
	"ack":"notAcknowledged",
	"aS":"Active",
	"sS":"notSuspended",
	"aTs":"2019-09-26T12:56:40.387Z",
	"cat":"D",
	"pri":"3",
	"rvs":[{
		"n":"detector",
		"v":"D1"
	},{
		"n":"type",
		"v":"loop"
	},{
		"n":"errormode",
		"v":"on"
	},{
		"n":"manual",
		"v":"True"
	},{
		"n":"logicerror",
		"v":"always_off"
	}]
}
```

<a id="S0001"></a>
## S0001 Signal group status

``` json
{
	"mType":"rSMsg",
	"type":"StatusRequest",
	"mId":"2f9cb731-be46-4abe-88cb-c0f06e24b903",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sS":[{
		"sCI":"S0001",
		"n":"signalgroupstatus"
	},{
		"sCI":"S0001",
		"n":"cyclecounter"
	},{
		"sCI":"S0001",
		"n":"basecyclecounter"
	},{
		"sCI":"S0001",
		"n":"stage"
	}]
}
```

``` json
{
	"mType":"rSMsg",
	"type":"StatusResponse",
	"mId":"e8c14802-e4a0-47b7-b360-c0e611718387",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sTs":"2019-09-26T13:00:51.642Z",
	"sS":[{
		"sCI":"S0001",
		"n":"signalgroupstatus",
		"s":"FA0",
		"q":"recent"
	},{
		"sCI":"S0001",
		"n":"cyclecounter",
		"s":"0",
		"q":"recent"
	},{
		"sCI":"S0001",
		"n":"basecyclecounter",
		"s":"0",
		"q":"recent"
	},{
		"sCI":"S0001",
		"n":"stage",
		"s":"0",
		"q":"recent"
	}]
}
```

<a id="S0002"></a>
## S0002 Signal group status

``` json
{
	"mType":"rSMsg",
	"type":"StatusRequest",
	"mId":"09204009-3853-49c9-a204-6955a7d752e3",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sS":[{
		"sCI":"S0002",
		"n":"detectorlogicstatus"
	}]
}
```

``` json
{
	"mType":"rSMsg",
	"type":"StatusResponse",
	"mId":"871383a4-3078-4767-a9ce-bdc916e893f9",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sTs":"2019-09-26T13:02:59.156Z",
	"sS":[{
		"sCI":"S0002",
		"n":"detectorlogicstatus",
		"s":"11010101",
		"q":"recent"
	}]
}
```

<a id="S0003"></a>
## S0003 Input status

``` json
{
	"mType":"rSMsg",
	"type":"StatusRequest",
	"mId":"397de512-0df0-4c9f-8094-0da5ab0c95dc",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sS":[{
		"sCI":"S0003",
		"n":"inputstatus"
	},{
		"sCI":"S0003",
		"n":"extendedinputstatus"
	}]
}
```

``` json
{
	"mType":"rSMsg",
	"type":"StatusResponse",
	"mId":"830c5261-b5d1-41f9-abf9-a7653d9af8f2",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sTs":"2019-09-26T13:04:14.310Z",
	"sS":[{
		"sCI":"S0003",
		"n":"inputstatus",
		"s":"1010101",
		"q":"recent"
	},{
		"sCI":"S0003",
		"n":"extendedinputstatus",
		"s":"0",
		"q":"recent"
	}]
}
```

<a id="S0004"></a>
## S0004 Output status

``` json
{
	"mType":"rSMsg",
	"type":"StatusRequest",
	"mId":"cbcf6e98-ad60-413e-9f4c-a1351c44dd8e",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sS":[{
		"sCI":"S0004",
		"n":"outputstatus"
	},{
		"sCI":"S0004",
		"n":"extendedoutputstatus"
	}]
}
```

``` json
{"mType":"rSMsg",
	"type":"StatusResponse",
	"mId":"3d7bc8ea-d658-47cb-b7a3-07b6d6842934",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sTs":"2019-09-26T13:05:52.387Z",
	"sS":[{
		"sCI":"S0004",
		"n":"outputstatus",
		"s":"1010101",
		"q":"recent"
	},{
		"sCI":"S0004",
		"n":"extendedoutputstatus",
		"s":"0",
		"q":"recent"
	}]
}
```

<a id="S0005"></a>
## S0005 Traffic Controller starting

``` json
{
	"mType":"rSMsg",
	"type":"StatusRequest",
	"mId":"4abdf9b7-f915-41e9-bb8e-cb908fdd1f8d",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sS":[{
		"sCI":"S0005",
		"n":"status"
	}]
}
```

``` json
{
	"mType":"rSMsg",
	"type":"StatusResponse",
	"mId":"cfab4504-7d02-4c2e-92e9-b7d1a67fadc7",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sTs":"2019-09-26T13:06:48.807Z",
	"sS":[{
		"sCI":"S0005",
		"n":"status",
		"s":"False",
		"q":"recent"
	}]
}
```

<a id="S0006"></a>
## S0006 Emergency stage

``` json
{
	"mType":"rSMsg",
	"type":"StatusRequest",
	"mId":"1cf1a709-41fe-4072-94ea-75976229bf61",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sS":[{
		"sCI":"S0006",
		"n":"status"
	},{
		"sCI":"S0006",
		"n":"emergencystage"
	}]
}
```

``` json
{
	"mType":"rSMsg",
	"type":"StatusResponse",
	"mId":"8f1cc2aa-06fa-45e6-9448-3d6207e12ece",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sTs":"2019-09-26T13:08:27.792Z",
	"sS":[{
		"sCI":"S0006",
		"n":"status",
		"s":"True",
		"q":"recent"
	},{
		"sCI":"S0006",
		"n":"emergencystage",
		"s":"0",
		"q":"recent"
	}]
}
```

<a id="S0007"></a>
## S0007 Controller switched on

``` json
{
	"mType":"rSMsg",
	"type":"StatusRequest",
	"mId":"71ba2859-05cd-4ae3-91b6-72e0ec80b9ff",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sS":[{
		"sCI":"S0007",
		"n":"intersection"
	},{
		"sCI":"S0007",
		"n":"status"
	}]
}
```

``` json
{
	"mType":"rSMsg",
	"type":"StatusResponse",
	"mId":"0eda8f5e-3bb9-452e-9890-4f7d0f343cab",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sTs":"2019-09-26T13:09:30.860Z",
	"sS":[{
		"sCI":"S0007",
		"n":"intersection",
		"s":"True",
		"q":"recent"
	},{
		"sCI":"S0007",
		"n":"status",
		"s":"0",
		"q":"recent"
	}]
}
```

<a id="S0008"></a>
## S0008 Manual control

``` json
{
	"mType":"rSMsg",
	"type":"StatusRequest",
	"mId":"81194636-cd7c-49fe-a00f-1c7a54de071c",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sS":[{
		"sCI":"S0008",
		"n":"intersection"
	},{
		"sCI":"S0008",
		"n":"status"
	}]
}
```

``` json
{
	"mType":"rSMsg",
	"type":"StatusResponse",
	"mId":"aa74fdc8-4e3e-40c0-a05d-9034b67e27c6",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sTs":"2019-09-26T13:11:16.262Z",
	"sS":[{
		"sCI":"S0008",
		"n":"intersection",
		"s":"0",
		"q":"recent"
	},{
		"sCI":"S0008",
		"n":"status",
		"s":"True",
		"q":"recent"
	}]
}
```

<a id="S0009"></a>
## S0009 Fixed time control

``` json
{
	"mType":"rSMsg",
	"type":"StatusRequest",
	"mId":"1f5172e1-bacb-433f-bc7c-6810e16b5cea",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sS":[{
		"sCI":"S0009",
		"n":"intersection"
	},{
		"sCI":"S0009",
		"n":"status"
	}]
}
```

``` json
{
	"mType":"rSMsg",
	"type":"StatusResponse",
	"mId":"3cf01c8f-2faa-4db1-9fb7-9c3323a9c66c",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sTs":"2019-09-26T13:12:26.610Z",
	"sS":[{
		"sCI":"S0009",
		"n":"intersection",
		"s":"0",
		"q":"recent"
	},{
		"sCI":"S0009",
		"n":"status",
		"s":"True",
		"q":"recent"
	}]
}
```

<a id="S0010"></a>
## S0010 Isolated control

``` json
{
	"mType":"rSMsg",
	"type":"StatusRequest",
	"mId":"5d1be301-0746-4ac0-9e57-6533eef4e58a",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sS":[{
		"sCI":"S0010",
		"n":"intersection"
	},{
		"sCI":"S0010",
		"n":"status"
	}]
}
```

``` json
{
	"mType":"rSMsg",
	"type":"StatusResponse",
	"mId":"01cc4a27-2d6b-403b-9b99-c8eaa00fa8e9",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sTs":"2019-09-26T13:13:49.966Z",
	"sS":[{
		"sCI":"S0010",
		"n":"intersection",
		"s":"0",
		"q":"recent"
	},{
		"sCI":"S0010",
		"n":"status",
		"s":"True",
		"q":"recent"
	}]
}
```

<a id="S0011"></a>
## S0011 Yellow flash

``` json
{
	"mType":"rSMsg",
	"type":"StatusRequest",
	"mId":"7f4e61c8-8908-4bca-b079-8a063cb4cdaf",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sS":[{
		"sCI":"S0011",
		"n":"intersection"
	},{
		"sCI":"S0011",
		"n":"status"
	}]
}
```

``` json
{
	"mType":"rSMsg",
	"type":"StatusResponse",
	"mId":"477b4aef-84dc-441d-89c3-7635e548326b",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sTs":"2019-09-26T13:15:48.662Z",
	"sS":[{
		"sCI":"S0011",
		"n":"intersection",
		"s":"0",
		"q":"recent"
	},{
		"sCI":"S0011",
		"n":"status",
		"s":"True",
		"q":"recent"
	}]
}
```

<a id="S0012"></a>
## S0012 All red

``` json
{
	"mType":"rSMsg",
	"type":"StatusRequest",
	"mId":"0ae9b9cd-d556-48d1-9c18-3a82a711d4fd",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sS":[{
		"sCI":"S0012",
		"n":"intersection"
	},{
		"sCI":"S0012",
		"n":"status"
	}]
}
```

``` json
{
	"mType":"rSMsg",
	"type":"StatusResponse",
	"mId":"5a203ef7-7608-47ac-b41e-cc1e55438334",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sTs":"2019-09-26T13:16:49.285Z",
	"sS":[{
		"sCI":"S0012",
		"n":"intersection",
		"s":"0",
		"q":"recent"
	},{
		"sCI":"S0012",
		"n":"status",
		"s":"True",
		"q":"recent"
	}]
}
```

<a id="S0013"></a>
## S0013 Police key

``` json
{
	"mType":"rSMsg",
	"type":"StatusRequest",
	"mId":"1872aee6-98ca-43ad-a009-a4122f490235",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sS":[{
		"sCI":"S0013",
		"n":"intersection"
	},{
		"sCI":"S0013",
		"n":"status"
	}]
}
```

``` json
{
	"mType":"rSMsg",
	"type":"StatusResponse",
	"mId":"b014e57b-d00e-4ac1-9b91-57b85153c887",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sTs":"2019-09-26T13:18:04.612Z",
	"sS":[{
		"sCI":"S0013",
		"n":"intersection",
		"s":"0",
		"q":"recent"
	},{
		"sCI":"S0013",
		"n":"status",
		"s":"0",
		"q":"recent"
	}]
}
```

<a id="S0014"></a>
## S0014 Current time plan

``` json
{
	"mType":"rSMsg",
	"type":"StatusRequest",
	"mId":"0b9880ab-9b41-4033-bda3-0cddae610b8e",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sS":[{
		"sCI":"S0014",
		"n":"status"
	}]
}
```

``` json
{
	"mType":"rSMsg",
	"type":"StatusResponse",
	"mId":"ff9d1115-4463-40be-b3cd-77383489e594",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sTs":"2019-09-26T13:19:26.671Z",
	"sS":[{
		"sCI":"S0014",
		"n":"status",
		"s":"9",
		"q":"recent"
	}]
}
```

<a id="S0015"></a>
## S0015 Current traffic situation

``` json
{
	"mType":"rSMsg",
	"type":"StatusRequest",
	"mId":"aa2198da-54c6-4628-932b-6ae85fcce7c5",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sS":[{
		"sCI":"S0015",
		"n":"status"
	}]
}
```

``` json
{
	"mType":"rSMsg",
	"type":"StatusResponse",
	"mId":"823f2eb2-176b-4bcf-9b86-0c70297eb777",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sTs":"2019-09-26T13:21:45.239Z",
	"sS":[{
		"sCI":"S0015",
		"n":"status",
		"s":"2",
		"q":"recent"
	}]
}
```

<a id="S0016"></a>
## S0016 Number of detector logics

``` json
{
	"mType":"rSMsg",
	"type":"StatusRequest",
	"mId":"1f19c581-be88-4c2d-bde0-52e00f96ea9b",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sS":[{
		"sCI":"S0016",
		"n":"number"
	}]
}
```

``` json
{
	"mType":"rSMsg",
	"type":"StatusResponse",
	"mId":"0d9ffb6b-d053-469f-b8da-cb871ec3c3ef",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sTs":"2019-09-26T13:22:41.503Z",
	"sS":[{
		"sCI":"S0016",
		"n":"number",
		"s":"20",
		"q":"recent"
	}]
}
```

<a id="S0017"></a>
## S0017 Number of signal groups

``` json
{
	"mType":"rSMsg",
	"type":"StatusRequest",
	"mId":"cb23e177-c16d-4de0-b843-355170176d3d",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sS":[{
		"sCI":"S0017",
		"n":"number"
	}]
}
```

``` json
{
	"mType":"rSMsg",
	"type":"StatusResponse",
	"mId":"109c9f19-bb4b-4801-a7ea-4eca8f93534b",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sTs":"2019-09-26T13:23:46.634Z",
	"sS":[{
		"sCI":"S0017",
		"n":"number",
		"s":"16",
		"q":"recent"
	}]
}
```

<a id="S0018"></a>
## S0018 Number of time plans

``` json
{
	"mType":"rSMsg",
	"type":"StatusRequest",
	"mId":"005f9630-7800-4daa-82a8-ba1c74b7c293",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sS":[{
		"sCI":"S0018",
		"n":"number"
	}]
}
```

``` json
{
	"mType":"rSMsg",
	"type":"StatusResponse",
	"mId":"f4029f3c-0f48-4af5-b1b9-a957b42ab165",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sTs":"2019-09-26T13:24:55.915Z",
	"sS":[{
		"sCI":"S0018",
		"n":"number",
		"s":"10",
		"q":"recent"
	}]
}
```

<a id="S0019"></a>
## S0019 Number of traffic situations

``` json
{
	"mType":"rSMsg",
	"type":"StatusRequest",
	"mId":"9ef925e5-a98a-4571-890c-eba174d89958",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sS":[{
		"sCI":"S0019",
		"n":"number"
	}]
}
```

``` json
{
	"mType":"rSMsg",
	"type":"StatusResponse",
	"mId":"0d453770-bf97-4f23-a1e7-4413c1c8306c",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sTs":"2019-09-26T13:26:12.886Z",
	"sS":[{
		"sCI":"S0019",
		"n":"number",
		"s":"4",
		"q":"recent"
	}]
}
```

<a id="S0020"></a>
## S0020 Control mode

``` json
{
	"mType":"rSMsg",
	"type":"StatusRequest",
	"mId":"4e63d17b-106c-421d-ad88-783d4c753b0f",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sS":[{
		"sCI":"S0020",
		"n":"intersection"
	},{
		"sCI":"S0020",
		"n":"controlmode"
	}]
}
```

``` json
{
	"mType":"rSMsg",
	"type":"StatusResponse",
	"mId":"063906d5-ecfd-44df-8b39-136d1b8d8214",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sTs":"2019-09-26T13:27:42.844Z",
	"sS":[{
		"sCI":"S0020",
		"n":"intersection",
		"s":"0",
		"q":"recent"
	},{
		"sCI":"S0020",
		"n":"controlmode",
		"s":"startup",
		"q":"recent"
	}]
}
```

<a id="S0021"></a>
## S0021 Manually set detector logic

``` json
{
	"mType":"rSMsg",
	"type":"StatusRequest",
	"mId":"fb092f10-ec2d-4ee1-83b7-c3e640f2ebb2",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sS":[{
		"sCI":"S0021",
		"n":"detectorlogics"
	}]
}
```

``` json
{
	"mType":"rSMsg",
	"type":"StatusResponse",
	"mId":"e5688e53-c51e-408a-8075-c3c018a67f56",
	"ntsOId":"KK+AG0503=001TC000",
	"xNId":"",
	"cId":"KK+AG0503=001TC000",
	"sTs":"2019-09-26T13:31:32.114Z",
	"sS":[{
		"sCI":"S0021",
		"n":"detectorlogics",
		"s":"11010011",
		"q":"recent"
	}]
}
```

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

{"mType":"rSMsg",
                "type":"StatusRequest",
                "mId":"9b6591b4-5633-401f-b882-e393393e97fe",
                "ntsOId":"KK+AG0503=001TC000",
                "xNId":"",
                "cId":"KK+AG0503=001TC000",
                "sS":[{"sCI":"S0091",
                "n":"user"},{"sCI":"S0091",
                "n":"status"}]}

2019-09-26 15:34:31.475 Rx <-   {"mType":"rSMsg",
                "type":"StatusResponse",
                "mId":"a58b40b3-ba7f-4f09-8be5-bbf4598caafe",
                "ntsOId":"KK+AG0503=001TC000",
                "xNId":"",
                "cId":"KK+AG0503=001TC000",
                "sTs":"2019-09-26T13:34:31.402Z",
                "sS":[{"sCI":"S0091",
                "n":"user",
                "s":"admin",
                "q":"recent"},{"sCI":"S0091",
                "n":"status",
                "s":"login",
                "q":"recent"}]}


{"mType":"rSMsg",
                "type":"StatusRequest",
                "mId":"7e14e715-d7eb-4aed-a899-fa21fb0d3f4e",
                "ntsOId":"KK+AG0503=001TC000",
                "xNId":"",
                "cId":"KK+AG0503=001TC000",
                "sS":[{"sCI":"S0092",
                "n":"user"},{"sCI":"S0092",
                "n":"status"}]}

2019-09-26 15:35:06.630 Rx <-   {"mType":"rSMsg",
                "type":"StatusResponse",
                "mId":"f1fbc4ac-921c-43be-ad0c-36c54e666ef3",
                "ntsOId":"KK+AG0503=001TC000",
                "xNId":"",
                "cId":"KK+AG0503=001TC000",
                "sTs":"2019-09-26T13:35:06.573Z",
                "sS":[{"sCI":"S0092",
                "n":"user",
                "s":"admin",
                "q":"recent"},{"sCI":"S0092",
                "n":"status",
                "s":"login",
                "q":"recent"}]}

{"mType":"rSMsg",
                "type":"StatusRequest",
                "mId":"aef9678f-60b9-47a0-8470-70af4632a01d",
                "ntsOId":"KK+AG0503=001TC000",
                "xNId":"",
                "cId":"KK+AG0503=001TC000",
                "sS":[{"sCI":"S0095",
                "n":"status"}]}

2019-09-26 15:37:23.101 Rx <-   {"mType":"rSMsg",
                "type":"StatusResponse",
                "mId":"9ba06a0a-28d5-4236-86e5-d83a212ced09",
                "ntsOId":"KK+AG0503=001TC000",
                "xNId":"",
                "cId":"KK+AG0503=001TC000",
                "sTs":"2019-09-26T13:37:23.031Z",
                "sS":[{"sCI":"S0095",
                "n":"status",
                "s":"TLC product 13, version 5",
                "q":"recent"}]}

{"mType":"rSMsg",
                "type":"StatusRequest",
                "mId":"66a6f25e-930a-40c7-9957-04075716e2e8",
                "ntsOId":"KK+AG0503=001TC000",
                "xNId":"",
                "cId":"KK+AG0503=001TC000",
                "sS":[{"sCI":"S0096",
                "n":"year"},{"sCI":"S0096",
                "n":"month"},{"sCI":"S0096",
                "n":"day"},{"sCI":"S0096",
                "n":"hour"},{"sCI":"S0096",
                "n":"minute"},{"sCI":"S0096",
                "n":"second"}]}
{"mType":"rSMsg",
                "type":"StatusResponse",
                "mId":"b9c8a436-f8ae-4d45-9af4-264032c0a0a1",
                "ntsOId":"KK+AG0503=001TC000",
                "xNId":"",
                "cId":"KK+AG0503=001TC000",
                "sTs":"2019-09-26T13:40:30.826Z",
                "sS":[{"sCI":"S0096",
                "n":"year",
                "s":"2017",
                "q":"recent"},{"sCI":"S0096",
                "n":"month",
                "s":"0",
                "q":"recent"},{"sCI":"S0096",
                "n":"day",
                "s":"0",
                "q":"recent"},{"sCI":"S0096",
                "n":"hour",
                "s":"0",
                "q":"recent"},{"sCI":"S0096",
                "n":"minute",
                "s":"0",
                "q":"recent"},{"sCI":"S0096",
                "n":"second",
                "s":"0",
                "q":"recent"}]}

{"mType":"rSMsg",
                "type":"StatusRequest",
                "mId":"6e8c41c7-032b-4d7f-a6ce-9ecec9d1ce1b",
                "ntsOId":"KK+AG0503=001TC000",
                "xNId":"",
                "cId":"KK+AG0503=001TC000",
                "sS":[{"sCI":"S0205",
                "n":"start"},{"sCI":"S0205",
                "n":"vehicles"},{"sCI":"S0206",
                "n":"start"},{"sCI":"S0206",
                "n":"speed"},{"sCI":"S0207",
                "n":"start"},{"sCI":"S0207",
                "n":"occupancy"},{"sCI":"S0208",
                "n":"start"},{"sCI":"S0208",
                "n":"P"},{"sCI":"S0208",
                "n":"PS"},{"sCI":"S0208",
                "n":"L"},{"sCI":"S0208",
                "n":"LS"},{"sCI":"S0208",
                "n":"B"},{"sCI":"S0208",
                "n":"SP"},{"sCI":"S0208",
                "n":"MC"},{"sCI":"S0208",
                "n":"C"},{"sCI":"S0208",
                "n":"F"}]}

{"mType":"rSMsg",
                "type":"StatusResponse",
                "mId":"41d59f04-0713-416a-9583-7f7a1c25a629",
                "ntsOId":"KK+AG0503=001TC000",
                "xNId":"",
                "cId":"KK+AG0503=001TC000",
                "sTs":"2019-09-26T13:47:26.943Z",
                "sS":[{"sCI":"S0205",
                "n":"start",
                "s":"0",
                "q":"recent"},{"sCI":"S0205",
                "n":"vehicles",
                "s":"0",
                "q":"recent"},{"sCI":"S0206",
                "n":"start",
                "s":"0",
                "q":"recent"},{"sCI":"S0206",
                "n":"speed",
                "s":"0",
                "q":"recent"},{"sCI":"S0207",
                "n":"start",
                "s":"0",
                "q":"recent"},{"sCI":"S0207",
                "n":"occupancy",
                "s":"0",
                "q":"recent"},{"sCI":"S0208",
                "n":"start","s":"0",
                "q":"recent"},{"sCI":"S0208",
                "n":"P",
                "s":"0",
                "q":"recent"},{"sCI":"S0208",
                "n":"PS",
                "s":"0",
                "q":"recent"},{"sCI":"S0208",
                "n":"L",
                "s":"0",
                "q":"recent"},{"sCI":"S0208",
                "n":"LS",
                "s":"0",
                "q":"recent"},{"sCI":"S0208",
                "n":"B",
                "s":"0",
                "q":"recent"},{"sCI":"S0208",
                "n":"SP",
                "s":"0",
                "q":"recent"},{"sCI":"S0208",
                "n":"MC",
                "s":"0",
                "q":"recent"},{"sCI":"S0208",
                "n":"C",
"s":"0",
                "q":"recent"},{"sCI":"S0208",
                "n":"F",
                "s":"0",
                "q":"recent"}]}


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
		{"cCI":"M0018", "n":"securityCode", "cO":"setInput", "v":"2321"},
		{"cCI":"M0018", "n":"input", "cO":"setInput", "v":"2"},
		{"cCI":"M0018", "n":"inputValue", "cO":"setInput", "v":"True"}
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
		{"cCI":"M0018", "n":"securityCode", "v":"2321", "age":"recent"},
		{"cCI":"M0018", "n":"input", "v":"2", "age":"recent"},
		{"cCI":"M0018", "n":"inputValue", "v":"2321", "age":"True"}
	]
}
```
