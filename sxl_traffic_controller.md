# Signal Exchange List
+ **Plant Id**: Plant id
+ **Plant Name**: Plant name
+ **Constructor**: David Otterdahl
+ **Reviewed**:
+ **Approved**:
+ **Created date**: 2010-04-20
+ **SXL revision**: 1.0.7
+ **Revision date**: 2012-10-04
+ **RSMP version**: 3.1.2

Sections
--------
+ [Object types](#object_types)
+ [Aggregated status](#aggregated_status)
+ [Alarms](#alarms)
+ [Status](#status)
+ [Commands](#commands)
<a id="object_types"></a>

Object Types
============

Grouped objects
---------------
|ObjectType|Description|
|----------|-----------|
|Traffic Controller||

Single objects
--------------
|ObjectType|Description|
|----------|-----------|
|Signal group||
|Detector logic||
<a id="aggregated_status"></a>

Aggregated status per grouped object
====================================
|ObjectType|Status|functionalPosition|functionalState|Description|
|----------|------|------------------|---------------|-----------|
|Traffic Controller|See state-bit definitions below||||

|State- Bit nr (12345678)|Description|Comment|
|------------------------|-----------|-------|
|1|Local mode|Traffic Controller is in local mode. NTS has no control.|
|2|No communications||
|3|High priority fault|Traffic Controller is in fail safe mode; e.g. yellow flash or dark mode|
|4|Medium priority fault|Traffic Controller has a medium priority fault, but not in fail safe mode.<br>E.g. several lamp faults or detector fault|
|5|Low priority fault|Traffic Controller has a low priority fault. E.g. Detector fault|
|6|Connected / Normal - In Use||
|7|Connected / Normal - Idle|Traffic Controller dark according to configuration.<br>NOTE! When dark according to configuration the controller is considered to be in use|
|8|Not Connected||
<a id="alarms"></a>

# Alarms
| ObjectType | Object (optional) | alarmCodeId | Description | externalAlarmCodeId | externalNtsAlarmCodeId | Priority | Category |
| ---------- | ----------------- |:-----------:| ----------- | ------------------- | ---------------------- |:--------:|:--------:|
|Traffic Controller||A0001|Serious hardware error|Defined by manufacturer||2|D|
|Traffic Controller||A0002|Less serious hardware error|Defined by manufacturer||3|D|
|Traffic Controller||A0003|Serious configuration error|Defined by manufacturer||2|D|
|Traffic Controller||A0004|Less serious configuration error|Defined by manufacturer||3|D|
|Traffic Controller||A0005|Communication error between traffic controllers / synchronisation error|Defined by manufacturer||3|D|
|Traffic Controller||A0006|Safety error|Defined by manufacturer||2|D|
|Traffic Controller||A0007|Communication error between one or multiple traffic controllers and central control system|Defined by manufacturer||3|D|
|Signal group||[A0008](#A0008)|Dead lock error|Defined by manufacturer||2|D|
|Traffic Controller||A0009|Other error|Defined by manufacturer||3|D|
|Signal group||A0101|Pushbutton error|Defined by manufacturer||3|D|
|Signal group||[A0201](#A0201)|Serious lamp error|Defined by manufacturer||2|D|
|Signal group||[A0202](#A0202)|Less serious hardware error|Defined by manufacturer||3|D|
|Detector logic||[A0301](#A0301)|Detector error (hardware)|Defined by manufacturer||3|D|
|Detector logic||[A0302](#A0302)|Detector error (logic error)|Defined by manufacturer||3|D|

<a id="A0008"></a>
## Return Values for A0008
|Name|Type|Value|Comment|
|----|----|-----|-------|
|timeplan|ordinal|[designation]|Current time plan|

<a id="A0201"></a>
## Return Values for A0201
|Name|Type|Value|Comment|
|----|----|-----|-------|
|color|string|<ul><li>red</li><li>yellow</li><li>green</li></ul>|Color of lamp|

<a id="A0202"></a>
## Return Values for A0202
|Name|Type|Value|Comment|
|----|----|-----|-------|
|color|string|<ul><li>red</li><li>yellow</li><li>green</li></ul>|Color of lamp|

<a id="A0301"></a>
## Return Values for A0301
|Name|Type|Value|Comment|
|----|----|-----|-------|
|detector|ordinal|[designation]|Designation of the detector|
|type|string|<ul><li>loop</li><li>input</li></ul>|Type of detector.<br>loop: Inductive detector loop<br>input: External input|
|errormode|string|<ul><li>on</li><li>off</li></ul>|Dectector forced on/off while detector error|
|manual|boolean|<ul><li>True</li><li>False</li></ul>|Manually controlled detector logic (True/False)|

<a id="A0302"></a>
## Return Values for A0302
|Name|Type|Value|Comment|
|----|----|-----|-------|
|detector|ordinal|[designation]|Designation of the detector|
|type|string|<ul><li>loop</li><li>input</li></ul>|Type of detector.<br>loop: Inductive detector loop<br>input: External input|
|errormode|string|<ul><li>on</li><li>off</li></ul>|Dectector forced on/off while detector error|
|manual|boolean|<ul><li>True</li><li>False</li></ul>|Manually controlled detector logic (True/False)|
|logicerror|string|<ul><li>always_off</li><li>always_on</li><li>intermittent</li></ul>|Type of logic error<br>always_off: no detection during prefined max time<br>always on: detection constantly on during predefined max time<br>intermittent: intermittent logic fault (flutter)|
<a id="status"></a>

# Status
| ObjectType | Object (optional) | statusCodeId | Description |
| ---------- | ----------------- |:------------:| ----------- |
|Traffic Controller||[S0001](#S0001)|Signal group status|
|Traffic Controller||[S0002](#S0002)|Detector logic status|
|Traffic Controller||[S0003](#S0003)|Input status|
|Traffic Controller||[S0004](#S0004)|Outputstatus|
|Traffic Controller||[S0005](#S0005)|Traffic Controller starting|
|Traffic Controller||[S0006](#S0006)|Emergency stage|
|Traffic Controller||[S0007](#S0007)|Controller switched on|
|Traffic Controller||[S0008](#S0008)|Manual control|
|Traffic Controller||[S0009](#S0009)|Fixed time control|
|Traffic Controller||[S0010](#S0010)|Isolated control|
|Traffic Controller||[S0011](#S0011)|Yellow flash|
|Traffic Controller||[S0012](#S0012)|All red|
|Traffic Controller||[S0013](#S0013)|Police key|
|Traffic Controller||[S0014](#S0014)|Current time plan|
|Traffic Controller||[S0015](#S0015)|Current traffic situation|
|Traffic Controller||[S0016](#S0016)|Number of detector logics|
|Traffic Controller||[S0017](#S0017)|Number of signal groups|
|Traffic Controller||[S0018](#S0018)|Number of time plans|
|Traffic Controller||[S0019](#S0019)|Number of traffic situations|
|Traffic Controller||[S0020](#S0020)|Control mode|
|Traffic Controller||[S0021](#S0021)|Manually set detector logic|
|Traffic Controller||[S0091](#S0091)|Operator logged in/out OP-panel|
|Traffic Controller||[S0092](#S0092)|Operator logged in/out web-interface|
|Traffic Controller||[S0095](#S0095)|Version av Traffic Controller|
|Traffic Controller||[S0096](#S0096)|Current date and time|
|Detector logic||[S0201](#S0201)|Traffic Counting: Number of vehicles|
|Detector logic||[S0202](#S0202)|Traffic Counting: Vehicle speed|
|Detector logic||[S0203](#S0203)|Traffic Counting: Occupancy|
|Detector logic||[S0204](#S0204)|Traffic Counting: Number of vehicles of given classification|

<a id="S0001"></a>
## Return Values for S0001
|Name|Type|Value|Comment|
|----|----|-----|-------|
|signalgroupstatus|string|[text]|Signal group status as text field|
|cyclecounter|unit|[0-999]|Cycle counter|
|basecyclecounter|unit|[0-999]|Base cycle counter|
|stage|integer|[0-999]|Current stage (isolated)|

<a id="S0002"></a>
## Return Values for S0002
|Name|Type|Value|Comment|
|----|----|-----|-------|
|detectorlogicstatus|string|[text]|Detector logic status as text field|

<a id="S0003"></a>
## Return Values for S0003
|Name|Type|Value|Comment|
|----|----|-----|-------|
|inputstatus|string|[text]|Input status as text field|
|extendedinputstatus|string|[text]|Extended input status as text field|

<a id="S0004"></a>
## Return Values for S0004
|Name|Type|Value|Comment|
|----|----|-----|-------|
|outputstatus|string|[text]|Output status as text field|
|extendedoutputstatus|string|[text]|Extended output status as text field|

<a id="S0005"></a>
## Return Values for S0005
|Name|Type|Value|Comment|
|----|----|-----|-------|
|status|boolean|<ul><li>False</li><li>True</li></ul>|False: Controller is not in start up mode<br>True: Controller is currently in start up mode|

<a id="S0006"></a>
## Return Values for S0006
|Name|Type|Value|Comment|
|----|----|-----|-------|
|status|boolean|<ul><li>False</li><li>True</li></ul>|False: Emergency stage inactive<br>True: Emergency stage active|
|emergencystage|ordinal|[1-255]|Number of emergency stage|

<a id="S0007"></a>
## Return Values for S0007
|Name|Type|Value|Comment|
|----|----|-----|-------|
|intersection|ordinal|[1-255]|Intersection number|
|status|boolean|<ul><li>False</li><li>True</li></ul>|False: Traffic Controller in dark mode<br>True: Traffic Controller not in dark mode|

<a id="S0008"></a>
## Return Values for S0008
|Name|Type|Value|Comment|
|----|----|-----|-------|
|intersection|ordinal|[1-255]|Intersection number|
|status|boolean|<ul><li>False</li><li>True</li></ul>|False: Manual control inactive<br>True: Manual control active|

<a id="S0009"></a>
## Return Values for S0009
|Name|Type|Value|Comment|
|----|----|-----|-------|
|intersection|ordinal|[1-255]|Intersection number|
|status|boolean|<ul><li>False</li><li>True</li></ul>|False:  Fixed time control inactive<br>True:  Fixed time control active|

<a id="S0010"></a>
## Return Values for S0010
|Name|Type|Value|Comment|
|----|----|-----|-------|
|intersection|ordinal|[1-255]|Intersection number|
|status|boolean|<ul><li>False</li><li>True</li></ul>|False: Isolated control disabled<br>True: Isolated control enabled (Vehicle actuated control or Fixed time control)|

<a id="S0011"></a>
## Return Values for S0011
|Name|Type|Value|Comment|
|----|----|-----|-------|
|intersection|ordinal|[1-255]|Intersection number|
|status|boolean|<ul><li>False</li><li>True</li></ul>|False: Yellow flash disabled<br>True: Yellow flash enabled|

<a id="S0012"></a>
## Return Values for S0012
|Name|Type|Value|Comment|
|----|----|-----|-------|
|intersection|ordinal|[1-255]|Intersection number|
|status|boolean|<ul><li>False</li><li>True</li></ul>|False: All red disabled<br>True: All red enabled|

<a id="S0013"></a>
## Return Values for S0013
|Name|Type|Value|Comment|
|----|----|-----|-------|
|intersection|ordinal|[1-255]|Intersection number|
|status|integer|<ul><li>0</li><li>1</li><li>2</li></ul>|0: disabled<br>1: dark mode<br>2: yellow flash|

<a id="S0014"></a>
## Return Values for S0014
|Name|Type|Value|Comment|
|----|----|-----|-------|
|status|ordinal|[1-255]|Current time plan|

<a id="S0015"></a>
## Return Values for S0015
|Name|Type|Value|Comment|
|----|----|-----|-------|
|status|ordinal|[1-255]|Current traffic situation|

<a id="S0016"></a>
## Return Values for S0016
|Name|Type|Value|Comment|
|----|----|-----|-------|
|number|long|[1-65025]|Number of detector logics|

<a id="S0017"></a>
## Return Values for S0017
|Name|Type|Value|Comment|
|----|----|-----|-------|
|number|long|[1-65025]|Number of signal groups|

<a id="S0018"></a>
## Return Values for S0018
|Name|Type|Value|Comment|
|----|----|-----|-------|
|number|long|[1-65025]|Number of time plans|

<a id="S0019"></a>
## Return Values for S0019
|Name|Type|Value|Comment|
|----|----|-----|-------|
|number|long|[1-65025]|Number of traffic situations|

<a id="S0020"></a>
## Return Values for S0020
|Name|Type|Value|Comment|
|----|----|-----|-------|
|intersection|ordinal|[1-255]|Intersection number|
|controlmode|string|<ul><li>startup</li><li>control</li><li>standby</li><li>failure</li><li>test</li></ul>|Startup mode<br>Normal control<br>Standby mode<br>Failure mode<br>Test mode|

<a id="S0021"></a>
## Return Values for S0021
|Name|Type|Value|Comment|
|----|----|-----|-------|
|detectorlogics|string|[text]|Manually set detector logics (1/0) as text field|

<a id="S0091"></a>
## Return Values for S0091
|Name|Type|Value|Comment|
|----|----|-----|-------|
|user|string|<ul><li>[username]</li><li>[nobody]</li></ul>|username: User currently logged in<br>nobody: No one logged in|
|status|string|<ul><li>login</li><li>logout</li></ul>|login: Somebody currently logged in<br>logout: Nobody currently logged in|

<a id="S0092"></a>
## Return Values for S0092
|Name|Type|Value|Comment|
|----|----|-----|-------|
|user|string|<ul><li>[username]</li><li>[nobody]</li></ul>|username: User currently logged in<br>nobody: No one logged in|
|status|string|<ul><li>login</li><li>logout</li></ul>|login: Somebody currently logged in<br>logout: Nobody currently logged in|

<a id="S0095"></a>
## Return Values for S0095
|Name|Type|Value|Comment|
|----|----|-----|-------|
|status|string|[text]|Manufacturer, product name and version of traffic controller|

<a id="S0096"></a>
## Return Values for S0096
|Name|Type|Value|Comment|
|----|----|-----|-------|
|year|integer|YYYY|Year according to format YYYY. NOTE: UTC is used|
|month|integer|MM|Month (01-12) according to format MM. Note: UTC is used|
|day|integer|DD|Day of month (01-31) according to format DD.  Note: UTC is used|
|hour|integer|HH|Hour of day (00-23) according to format DD. Note: UTC is used|
|minute|integer|MM|Minute (00-59) according to format MM. Note: UTC is used|
|second|integer|SS|Second (00-59) according to format SS. Note: UTC is used|

<a id="S0201"></a>
## Return Values for S0201
|Name|Type|Value|Comment|
|----|----|-----|-------|
|starttime|string|[time stamp]|Time stamp for start of measuring. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z|
|vehicles|long|[number]|Number of vehicles on a given detector logic (since last update)|

<a id="S0202"></a>
## Return Values for S0202
|Name|Type|Value|Comment|
|----|----|-----|-------|
|starttime|string|[time stamp]|Time stamp for start of measuring. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z|
|speed|unit|[speed]|Average speed in km/h (integer)|

<a id="S0203"></a>
## Return Values for S0203
|Name|Type|Value|Comment|
|----|----|-----|-------|
|starttime|string|[time stamp]|Time stamp for start of measuring. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z|
|occupancy|scale|[0-100]|Occupancy in percent (0-100%) (integer)|

<a id="S0204"></a>
## Return Values for S0204
|Name|Type|Value|Comment|
|----|----|-----|-------|
|starttime|string|[time stamp]|Time stamp for start of measuring. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z|
|P|long|[number]|Number of cars|
|PS|long|[number]|Number of cars with trailers|
|L|long|[number]|Number of trucks|
|LS|long|[number]|Number of trucks with trailers|
|B|long|[antal]|Number of busses|
|SP|long|[number]|Number of trams|
|MC|long|[number]|Number of motor cycles|
|C|long|[number]|Number of bicycles|
|F|long|[number]|Number of pedestrians|
<a id="commands"></a>

# Commands
| ObjectType | Object (optional) | commandCodeId | Description |
| ---------- | ----------------- |:-------------:| ----------- |
|Traffic Controller||[M0001](#M0001)|Sets functional position<br>Requires security code 2|
|Traffic Controller||[M0002](#M0002)|Sets current time plan<br>Requires security code 2|
|Traffic Controller||[M0003](#M0003)|Sets traffic situation the controller uses.<br>Requires security code 2|
|Traffic Controller||[M0004](#M0004)|Restarts Traffic Controller<br>Requires security code 2|
|Traffic Controller||[M0005](#M0005)|Activate emergency route<br>Requires security code 2|
|Traffic Controller||[M0006](#M0006)|Activate input<br>Requires security code 2|
|Traffic Controller||[M0007](#M0007)|Activate fixed time control<br>Requires security code 2|
|Detector logic||[M0008](#M0008)|Sets manual activation of detector logic.<br>Requires security code 2|
|Signal group||[M0010](#M0010)|Start of signal group. Orders a signal group to green. Requires security code 2|
|Signal group||[M0011](#M0011)|Stop of signal group. Orders a signal group to red. Requires security code 2|
|Traffic Controller||[M0103](#M0103)|Set security code|
|Traffic Controller||[M0104](#M0104)|Set clock|

<a id="M0001"></a>
## Arguments for M0001
|Name|Command|Type|Value|Comment|
|----|-------|----|-----|-------|
|status|setValue|string|<ul><li>NormalControl</li><li>YellowFlash</li><li>Dark</li></ul>|NormalControl: Normal Control<br>YellowFlash: Enables yellow flash<br>Dark: Enables dark mode|
|securityCode|setValue|string|[text]|Security code 2 |
|timeout|setValue|unit|[0-1440]|Time in minutes until controller automatically reverts to previous functional position.<br>0=no automatic return|
|intersection|setValue|ordinal|[1-255]|Intersection number|

<a id="M0002"></a>
## Arguments for M0002
|Name|Command|Type|Value|Comment|
|----|-------|----|-----|-------|
|status|setPlan|boolean|<ul><li>False</li><li>True</li></ul>|False: Controller uses time plan according to programming<br>True: Contoller uses time plan according to command|
|securityCode|setPlan|string|[text]|Security code 2|
|timeplan|setPlan|ordinal|[1-255]|designation på time plan|

<a id="M0003"></a>
## Arguments for M0003
|Name|Command|Type|Value|Comment|
|----|-------|----|-----|-------|
|status|setTrafficSituation|boolean|<ul><li>False</li><li>True</li></ul>|False: Controller uses traffic situation according to own programming<br>True: Contoller uses traffic situation according to command|
|securityCode|setTrafficSituation|string|[text]|Security code 2|
|traficsituation|setTrafficSituation|ordinal|[1-255]|designation of traficsituation|

<a id="M0004"></a>
## Arguments for M0004
|Name|Command|Type|Value|Comment|
|----|-------|----|-----|-------|
|status|setRestart|boolean|True|True: Restart controller|
|securityCode|setRestart|string|[text]|Security code 2|

<a id="M0005"></a>
## Arguments for M0005
|Name|Command|Type|Value|Comment|
|----|-------|----|-----|-------|
|status|setEmergency|boolean|<ul><li>False</li><li>True</li></ul>|False: Activate emergency route<br>True: Deactivate emergency route|
|securityCode|setEmergency|string|[text]|Security code 2|
|emergencyroute|setEmergency|ordinal|[1-255]|Number of emergency route|

<a id="M0006"></a>
## Arguments for M0006
|Name|Command|Type|Value|Comment|
|----|-------|----|-----|-------|
|status|setInput|boolean|<ul><li>False</li><li>True</li></ul>|False: Deactivate input<br>True: Activate input|
|securityCode|setInput|string|[text]|Security code 2|
|input|setInput|ordinal|[1-255]|Number of Input|

<a id="M0007"></a>
## Arguments for M0007
|Name|Command|Type|Value|Comment|
|----|-------|----|-----|-------|
|status|setFixedTime|boolean|<ul><li>False</li><li>True</li></ul>|False: Deactivate fixed time control<br>True: Activate fixed time control|
|securityCode|setFixedTime|string|[text]|Security code 2|

<a id="M0008"></a>
## Arguments for M0008
|Name|Command|Type|Value|Comment|
|----|-------|----|-----|-------|
|status|setForceDetectorLogic|boolean|<ul><li>False</li><li>True</li></ul>|False: Deactivate manual control of detector logic<br>True: Activate manual control of detector logic|
|securityCode|setForceDetectorLogic|string|[text]|Security code 2|
|mode|setForceDetectorLogic|boolean|<ul><li>False</li><li>True</li></ul>|False: Deactivate detector logic<br>True: Activate detector logic|

<a id="M0010"></a>
## Arguments for M0010
|Name|Command|Type|Value|Comment|
|----|-------|----|-----|-------|
|status|setStart|boolean|<ul><li>False</li><li>True</li></ul>|False: No command (default)<br>True: Order a signal group to green|
|securityCode|setStart|string|[text]|Security code 2|

<a id="M0011"></a>
## Arguments for M0011
|Name|Command|Type|Value|Comment|
|----|-------|----|-----|-------|
|status|setStop|boolean|<ul><li>False</li><li>True</li></ul>|False: No command (default)<br>True: Order a signal group to red|
|securityCode|setStop|string|[text]|Security code 2|

<a id="M0103"></a>
## Arguments for M0103
|Name|Command|Type|Value|Comment|
|----|-------|----|-----|-------|
|status|setSecurityCode|string|<ul><li>Level1</li><li>Level2</li></ul>|Level1: Change security code 1<br>Level2: Change security code 2|
|oldSecurityCode|setSecurityCode|string|[text]|Previous security code|
|newSecurityCode|setSecurityCode|string|[text]|New security code|

<a id="M0104"></a>
## Arguments for M0104
|Name|Command|Type|Value|Comment|
|----|-------|----|-----|-------|
|securityCode|setDate|string|[text]|Security code 1|
|year|setDate|integer|YYYY|Changes internal clock. Note: UTC is used<br>Year according to YYYY|
|month|setDate|integer|MM|Changes internal clock. Note: UTC is used<br>Month according to MM (01-12)|
|day|setDate|integer|DD|Changes internal clock. Note: UTC is used<br>Day in month according to DD (01-31)|
|hour|setDate|integer|HH|Changes internal clock. Note: UTC is used<br>Hour according to HH (00-23)|
|minute|setDate|integer|MM|Changes internal clock. Note: UTC is used<br>Minute according to MM (00-23)|
|second|setDate|integer|SS|Changes internal clock. Note: UTC is used<br>Second according to SS (00-59)|

