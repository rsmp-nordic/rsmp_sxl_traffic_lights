# Signal Exchange List
+ **Plant Id**: Plant id
+ **Plant Name**: Plant name
+ **Constructor**: David Otterdahl
+ **Reviewed**:
+ **Approved**:
+ **Created date**: 2010-04-20
+ **SXL revision**: 1.0.15-draft
+ **Revision date**: 2019-xx-xx
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
|3|High priority fault|Traffic Controller is in fail safe mode<br> e.g. yellow flash or dark mode|
|4|Medium priority fault|Traffic Controller has a medium priority fault, but not in fail safe mode.<br>E.g. several lamp faults or detector fault|
|5|Low priority fault|Traffic Controller has a low priority fault. E.g. Detector fault|
|6|Connected / Normal - In Use||
|7|Connected / Normal - Idle|Traffic Controller dark according to configuration.<br>NOTE! When dark according to configuration the controller is considered to be in use|
|8|Not Connected||

<a id="alarms"></a>
# Alarms
| ObjectType | alarmCodeId | Description | externalAlarmCodeId | Priority | Category |
| ---------- |:-----------:| ----------- | ------------------- |:--------:|:--------:|
|Traffic Controller|A0001|Serious hardware error|Defined by manufacturer|2|D|
|Traffic Controller|A0002|Less serious hardware error|Defined by manufacturer|3|D|
|Traffic Controller|A0003|Serious configuration error|Defined by manufacturer|2|D|
|Traffic Controller|A0004|Less serious configuration error|Defined by manufacturer|3|D|
|Traffic Controller|A0005|Communication error between traffic controllers / synchronisation error|Defined by manufacturer|3|D|
|Traffic Controller|A0006|Safety error|Defined by manufacturer|2|D|
|Traffic Controller|A0007|Communication error between one or multiple traffic controllers and central control system|Defined by manufacturer|3|D|
|Signal group|[A0008](#A0008)|Dead lock error|Defined by manufacturer|2|D|
|Traffic Controller|A0009|Other error|Defined by manufacturer|3|D|
|Signal group|A0101|Pushbutton error|Defined by manufacturer|3|D|
|Signal group|[A0201](#A0201)|Serious lamp error|Defined by manufacturer|2|D|
|Signal group|[A0202](#A0202)|Less serious lamp error|Defined by manufacturer|3|D|
|Detector logic|[A0301](#A0301)|Detector error (hardware)|Defined by manufacturer|3|D|
|Detector logic|[A0302](#A0302)|Detector error (logic error)|Defined by manufacturer|3|D|

## Return values

<a id="A0008"></a>
### A0008
Dead lock error

|Name|Type|Value|Comment|
|----|----|-----|-------|
|timeplan|ordinal|[designation]|Current time plan|

<a id="A0201"></a>
### A0201
Serious lamp error

|Name|Type|Value|Comment|
|----|----|-----|-------|
|color|string|<ul><li>red</li><li>yellow</li><li>green</li></ul>|Color of lamp|

<a id="A0202"></a>
### A0202
Less serious lamp error

|Name|Type|Value|Comment|
|----|----|-----|-------|
|color|string|<ul><li>red</li><li>yellow</li><li>green</li></ul>|Color of lamp|

<a id="A0301"></a>
### A0301
Detector error (hardware)

|Name|Type|Value|Comment|
|----|----|-----|-------|
|detector|ordinal|[designation]|Designation of the detector|
|type|string|<ul><li>loop</li><li>input</li></ul>|Type of detector.<br>loop: Inductive detector loop<br>input: External input|
|errormode|string|<ul><li>on</li><li>off</li></ul>|Dectector forced on/off while detector error|
|manual|boolean|<ul><li>True</li><li>False</li></ul>|Manually controlled detector logic (True/False)|

<a id="A0302"></a>
### A0302
Detector error (logic error)

|Name|Type|Value|Comment|
|----|----|-----|-------|
|detector|ordinal|[designation]|Designation of the detector|
|type|string|<ul><li>loop</li><li>input</li></ul>|Type of detector.<br>loop: Inductive detector loop<br>input: External input|
|errormode|string|<ul><li>on</li><li>off</li></ul>|Dectector forced on/off while detector error|
|manual|boolean|<ul><li>True</li><li>False</li></ul>|Manually controlled detector logic (True/False)|
|logicerror|string|<ul><li>always_off</li><li>always_on</li><li>intermittent</li></ul>|Type of logic error<br>always_off: no detection during prefined max time<br>always on: detection constantly on during predefined max time<br>intermittent: intermittent logic fault (flutter)|

<a id="status"></a>

# Status
| ObjectType | statusCodeId | Description |
| ---------- |:------------:| ----------- |
|Traffic Controller|[S0001](#S0001)|Signal group status|
|Traffic Controller|[S0002](#S0002)|Detector logic status|
|Traffic Controller|[S0003](#S0003)|Input status|
|Traffic Controller|[S0004](#S0004)|Output status|
|Traffic Controller|[S0005](#S0005)|Traffic Controller starting|
|Traffic Controller|[S0006](#S0006)|Emergency stage|
|Traffic Controller|[S0007](#S0007)|Controller switched on|
|Traffic Controller|[S0008](#S0008)|Manual control|
|Traffic Controller|[S0009](#S0009)|Fixed time control|
|Traffic Controller|[S0010](#S0010)|Isolated control|
|Traffic Controller|[S0011](#S0011)|Yellow flash|
|Traffic Controller|[S0012](#S0012)|All red|
|Traffic Controller|[S0013](#S0013)|Police key|
|Traffic Controller|[S0014](#S0014)|Current time plan|
|Traffic Controller|[S0015](#S0015)|Current traffic situation|
|Traffic Controller|[S0016](#S0016)|Number of detector logics|
|Traffic Controller|[S0017](#S0017)|Number of signal groups|
|Traffic Controller|[S0018](#S0018)|Number of time plans|
|Traffic Controller|[S0019](#S0019)|Number of traffic situations|
|Traffic Controller|[S0020](#S0020)|Control mode|
|Traffic Controller|[S0021](#S0021)|Manually set detector logic|
|Traffic Controller|[S0022](#S0022)|List of time plans|
|Traffic Controller|[S0023](#S0023)|Command table|
|Traffic Controller|[S0024](#S0024)|Offset time|
|Signal Group|[S0025](#S0025)|Time-of-Green / Time-of-Red|
|Traffic Controller|[S0026](#S0026)|Week time table|
|Traffic Controller|[S0027](#S0027)|Time tables|
|Traffic Controller|[S0028](#S0028)|Cycle time|
|Traffic Controller|[S0029](#S0029)|Forced input status|
|Traffic Controller|[S0030](#S0030)|Forced output status|
|Traffic Controller|[S0091](#S0091)|Operator logged in/out OP-panel|
|Traffic Controller|[S0092](#S0092)|Operator logged in/out web-interface|
|Traffic Controller|[S0095](#S0095)|Version av Traffic Controller|
|Traffic Controller|[S0096](#S0096)|Current date and time|
|Detector logic|[S0201](#S0201)|Traffic Counting: Number of vehicles|
|Detector logic|[S0202](#S0202)|Traffic Counting: Vehicle speed|
|Detector logic|[S0203](#S0203)|Traffic Counting: Occupancy|
|Detector logic|[S0204](#S0204)|Traffic Counting: Number of vehicles of given classification|
|Traffic Controller|[S0205](#S0205)|Traffic Counting: Number of vehicles|
|Traffic Controller|[S0206](#S0206)|Traffic Counting: Vehicle speed|
|Traffic Controller|[S0207](#S0207)|Traffic Counting: Occupancy|
|Traffic Controller|[S0208](#S0208)|Traffic Counting: Number of vehicles of given classification|

## Return values

<a id="S0001"></a>
### S0001
Signal group status

|Name|Type|Value|Comment|
|----|----|-----|-------|
|signalgroupstatus|string|[text]|Signal group status as text field|
|cyclecounter|unit|[0-999]|Cycle counter|
|basecyclecounter|unit|[0-999]|Base cycle counter|
|stage|integer|[0-999]|Current stage (isolated)|

<a id="S0002"></a>
### S0002
Detector logic status

|Name|Type|Value|Comment|
|----|----|-----|-------|
|detectorlogicstatus|string|[text]|Detector logic status as text field|

<a id="S0003"></a>
### S0003
Input status

|Name|Type|Value|Comment|
|----|----|-----|-------|
|inputstatus|string|[text]|Input status as text field|
|extendedinputstatus|string|[text]|Extended input status as text field|

<a id="S0004"></a>
### S0004
Output status

|Name|Type|Value|Comment|
|----|----|-----|-------|
|outputstatus|string|[text]|Output status as text field|
|extendedoutputstatus|string|[text]|Extended output status as text field|

<a id="S0005"></a>
### S0005
Traffic Controller starting

|Name|Type|Value|Comment|
|----|----|-----|-------|
|status|boolean|<ul><li>False</li><li>True</li></ul>|False: Controller is not in start up mode<br>True: Controller is currently in start up mode|

<a id="S0006"></a>
### S0006
Emergency stage

|Name|Type|Value|Comment|
|----|----|-----|-------|
|status|boolean|<ul><li>False</li><li>True</li></ul>|False: Emergency stage inactive<br>True: Emergency stage active|
|emergencystage|ordinal|[1-255]|Number of emergency stage|

<a id="S0007"></a>
### S0007
Controller switched on

|Name|Type|Value|Comment|
|----|----|-----|-------|
|intersection|ordinal|[0-255]|0: Not applicable (only one intersection exists or applicable for all intersection of the traffic controller)<br>Other value: Intersection number|
|status|boolean|<ul><li>False</li><li>True</li></ul>|False: Traffic Controller in dark mode<br>True: Traffic Controller not in dark mode|

<a id="S0008"></a>
### S0008
Manual control

|Name|Type|Value|Comment|
|----|----|-----|-------|
|intersection|ordinal|[0-255]|0: Not applicable (only one intersection exists or applicable for all intersection of the traffic controller)<br>Other value: Intersection number|
|status|boolean|<ul><li>False</li><li>True</li></ul>|False: Manual control inactive<br>True: Manual control active|

<a id="S0009"></a>
### S0009
Fixed time control

|Name|Type|Value|Comment|
|----|----|-----|-------|
|intersection|ordinal|[0-255]|0: Not applicable (only one intersection exists or applicable for all intersection of the traffic controller)<br>Other value: Intersection number|
|status|boolean|<ul><li>False</li><li>True</li></ul>|False:  Fixed time control inactive<br>True:  Fixed time control active|

<a id="S0010"></a>
### S0010
Isolated control

|Name|Type|Value|Comment|
|----|----|-----|-------|
|intersection|ordinal|[0-255]|0: Not applicable (only one intersection exists or applicable for all intersection of the traffic controller)<br>Other value: Intersection number|
|status|boolean|<ul><li>False</li><li>True</li></ul>|False: Isolated control disabled<br>True: Isolated control enabled (Vehicle actuated control or Fixed time control)|

<a id="S0011"></a>
### S0011
Yellow flash

|Name|Type|Value|Comment|
|----|----|-----|-------|
|intersection|ordinal|[0-255]|0: Not applicable (only one intersection exists or applicable for all intersection of the traffic controller)<br>Other value: Intersection number|
|status|boolean|<ul><li>False</li><li>True</li></ul>|False: Yellow flash disabled<br>True: Yellow flash enabled|

<a id="S0012"></a>
### S0012
All red

|Name|Type|Value|Comment|
|----|----|-----|-------|
|intersection|ordinal|[0-255]|0: Not applicable (only one intersection exists or applicable for all intersection of the traffic controller)<br>Other value: Intersection number|
|status|boolean|<ul><li>False</li><li>True</li></ul>|False: All red disabled<br>True: All red enabled|

<a id="S0013"></a>
### S0013
Police key

|Name|Type|Value|Comment|
|----|----|-----|-------|
|intersection|ordinal|[0-255]|0: Not applicable (only one intersection exists or applicable for all intersection of the traffic controller)<br>Other value: Intersection number|
|status|integer|<ul><li>0</li><li>1</li><li>2</li></ul>|0: disabled<br>1: dark mode<br>2: yellow flash|

<a id="S0014"></a>
### S0014
Current time plan

|Name|Type|Value|Comment|
|----|----|-----|-------|
|status|ordinal|[1-255]|Current time plan|

<a id="S0015"></a>
### S0015
Current traffic situation

|Name|Type|Value|Comment|
|----|----|-----|-------|
|status|ordinal|[1-255]|Current traffic situation|

<a id="S0016"></a>
### S0016
Number of detector logics

|Name|Type|Value|Comment|
|----|----|-----|-------|
|number|long|[1-65025]|Number of detector logics|

<a id="S0017"></a>
### S0017
Number of signal groups

|Name|Type|Value|Comment|
|----|----|-----|-------|
|number|long|[1-65025]|Number of signal groups|

<a id="S0018"></a>
### S0018
Number of time plans

|Name|Type|Value|Comment|
|----|----|-----|-------|
|number|long|[1-65025]|Number of time plans|

<a id="S0019"></a>
### S0019
Number of traffic situations

|Name|Type|Value|Comment|
|----|----|-----|-------|
|number|long|[1-65025]|Number of traffic situations|

<a id="S0020"></a>
### S0020
Control mode

|Name|Type|Value|Comment|
|----|----|-----|-------|
|intersection|ordinal|[0-255]|0: Not applicable (only one intersection exists or applicable for all intersection of the traffic controller)<br>Other value: Intersection number|
|controlmode|string|<ul><li>startup</li><li>control</li><li>standby</li><li>failure</li><li>test</li></ul>|Startup mode<br>Normal control<br>Standby mode<br>Failure mode<br>Test mode|

<a id="S0021"></a>
### S0021
Manually set detector logic

|Name|Type|Value|Comment|
|----|----|-----|-------|
|detectorlogics|string|[text]|Manually set detector logics (1/0) as text field|

<a id="S0022"></a>
### S0022
List of time plans

|Name|Type|Value|Comment|
|----|----|-----|-------|
|status|string|[text]|Comma separated list of configured time plans. E.g. "1,2,3,5"|

<a id="S0023"></a>
### S0023
Command table

|Name|Type|Value|Comment|
|----|----|-----|-------|
|status|string|[text]|Command table. Defines command, <br>Each command are written as pp-dd-ee where:<br>pp=Time plan<br>dd=Dynamic band number (from 1-10)<br>ee=Extension in seconds in this band<br><br>Each command is separated with a comma.<br><br>E.g. <br>pp-dd-ee,pp-dd-ee|

<a id="S0024"></a>
### S0024
Offset time

|Name|Type|Value|Comment|
|----|----|-----|-------|
|status|string|[text]|Offset table<br>Each offset time is written as pp-tt where:<br>pp=time plan<br>tt=offset time in seconds<br><br>Each offset time is separated with a comma<br><br><br>E.g.<br>pp-tt,pp-tt|

<a id="S0025"></a>
### S0025
Time-of-Green / Time-of-Red

|Name|Type|Value|Comment|
|----|----|-----|-------|
|minToGEstimate   |string|[time stamp]|Time stamp for the minimum time for the signal group to go to green. If the signal group is green, it is the minimum time for the next green.<br>Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z|
|maxToGEstimate   |string|[time stamp]|Time stamp for the maximum time for the signal group to go to green. If the signal group is green, it is the maximum time for the next green.<br>Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z|
|likelyToGEstimate   |string|[time stamp]|Time stamp for the most likely time for the signal group to go to green. If the signal group is green, it is the most likely time for the next green.<br>Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z|
|ToGConfidence|integer|[0-100]|Confidence of the likelyToGEstimate. 0-100%|
|minToREstimate   |string|[time stamp]|Time stamp for the minimum time for the signal group to go to red. If the signal group is red, it is the minimum time for the next red.<br>Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z|
|maxToREstimate|string|[time stamp]|Time stamp for the maximum time for the signal group to go to red. If the signal group is red, it is the maximum time for the next red.<br>Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z|
|likelyToREstimate   |string|[time stamp]|Time stamp for the most likely time for the signal group to go to red. If the signal group is red, it is the most likely time for the next red.<br>Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z|
|ToRConfidence|integer|[0-100]|Confidence of the likelyToREstimate. 0-100%|

<a id="S0026"></a>
### S0026
Week time table

|Name|Type|Value|Comment|
|----|----|-----|-------|
|status|string|[text]|Week time table. Defines time table to use for each week day<br>Each day is written as d-t where:<br>d=day of week<br>t=time table nr<br><br>Day of week legend:<br>0=Monday<br>1=Tuesday<br>2=Wednesday<br>3=Thursday<br>4=Friday<br>5=Saturday<br>6=Sunday<br><br>Each segment is separated with a comma<br>E.g.<br>d-t,d-t|

<a id="S0027"></a>
### S0027
Time tables

|Name|Type|Value|Comment|
|----|----|-----|-------|
|status|string|[text]|Time Table. Defines time tables.<br>Each time definition is written as t-o-h-m where:<br>t=time table nr (1-12)<br>o=function<br>h=hour - switching time<br>m=minute - switching minute<br><br>Function legend:<br>0=no plan is selected by time table<br>1=set plan 1<br>…<br>16= set plan 16<br><br>hour and minute is using local time (not UTC)<br><br>Each time definition is separated with a comma <br><br>E.g.<br>t-o-h-m,t-o-h-m<br>|

<a id="S0028"></a>
### S0028
Cycle time

|Name|Type|Value|Comment|
|----|----|-----|-------|
|status|string|[text]|Cycle time table<br>Each cycle time is written as pp-tt where:<br>pp=time plan<br>tt=cycle time in seconds<br><br>Each cycle time is separated with a comma<br><br><br>E.g.<br>pp-tt,pp-tt|

<a id="S0029"></a>
### S0029
Forced input status

|Name|Type|Value|Comment|
|----|----|-----|-------|
|status|string|[text]|Forced input status as text field|

<a id="S0030"></a>
### S0030
Forced output status

|Name|Type|Value|Comment|
|----|----|-----|-------|
|status|string|[text]|Forced output status as text field|

<a id="S0091"></a>
### S0091
Operator logged in/out OP-panel

|Name|Type|Value|Comment|
|----|----|-----|-------|
|user|string|<ul><li>[username]</li><li>[nobody]</li></ul>|username: User currently logged in<br>nobody: No one logged in|
|status|string|<ul><li>login</li><li>logout</li></ul>|login: Somebody currently logged in<br>logout: Nobody currently logged in|

<a id="S0092"></a>
### S0092
Operator logged in/out web-interface

|Name|Type|Value|Comment|
|----|----|-----|-------|
|user|string|<ul><li>[username]</li><li>[nobody]</li></ul>|username: User currently logged in<br>nobody: No one logged in|
|status|string|<ul><li>login</li><li>logout</li></ul>|login: Somebody currently logged in<br>logout: Nobody currently logged in|

<a id="S0095"></a>
### S0095
Version av Traffic Controller

|Name|Type|Value|Comment|
|----|----|-----|-------|
|status|string|[text]|Manufacturer, product name and version of traffic controller|

<a id="S0096"></a>
### S0096
Current date and time

|Name|Type|Value|Comment|
|----|----|-----|-------|
|year|integer|YYYY|Year according to format YYYY. NOTE: UTC is used|
|month|integer|MM|Month (01-12) according to format MM. Note: UTC is used|
|day|integer|DD|Day of month (01-31) according to format DD.  Note: UTC is used|
|hour|integer|HH|Hour of day (00-23) according to format DD. Note: UTC is used|
|minute|integer|MM|Minute (00-59) according to format MM. Note: UTC is used|
|second|integer|SS|Second (00-59) according to format SS. Note: UTC is used|

<a id="S0201"></a>
### S0201
Traffic Counting: Number of vehicles

|Name|Type|Value|Comment|
|----|----|-----|-------|
|starttime|string|[time stamp]|Time stamp for start of measuring. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z|
|vehicles|long|[number]|Number of vehicles on a given detector logic (since last update)|

<a id="S0202"></a>
### S0202
Traffic Counting: Vehicle speed

|Name|Type|Value|Comment|
|----|----|-----|-------|
|starttime|string|[time stamp]|Time stamp for start of measuring. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z|
|speed|unit|[speed]|Average speed in km/h (integer)|

<a id="S0203"></a>
### S0203
Traffic Counting: Occupancy

|Name|Type|Value|Comment|
|----|----|-----|-------|
|starttime|string|[time stamp]|Time stamp for start of measuring. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z|
|occupancy|scale|[0-100]|Occupancy in percent (0-100%) (integer)|

<a id="S0204"></a>
### S0204
Traffic Counting: Number of vehicles of given classification

|Name|Type|Value|Comment|
|----|----|-----|-------|
|starttime|string|[time stamp]|Time stamp for start of measuring. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z|
|P|long|[number]|Number of cars|
|PS|long|[number]|Number of cars with trailers|
|L|long|[number]|Number of trucks|
|LS|long|[number]|Number of trucks with trailers|
|B|long|[number]|Number of busses|
|SP|long|[number]|Number of trams|
|MC|long|[number]|Number of motor cycles|
|C|long|[number]|Number of bicycles|
|F|long|[number]|Number of pedestrians|

<a id="S0205"></a>
### S0205
Traffic Counting: Number of vehicles

|Name|Type|Value|Comment|
|----|----|-----|-------|
|start|string|[time stamp]|Time stamp for start of measuring. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z|
|vehicles|string|[0-65535,...]|Number of vehicles<br> Value expressed as an integer with a range of 0-65535.<br> Contains data from all detector logics. Each detector logic is separated with a colon. <br> The value is set to “-1” if no data could be measured (e.g. detector fault)<br>|

<a id="S0206"></a>
### S0206
Traffic Counting: Vehicle speed

|Name|Type|Value|Comment|
|----|----|-----|-------|
|start|string|[time stamp]|Time stamp for start of measuring. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z|
|speed|string|[0-65535,...]|Average speed in km/h (integer)<br> Value expressed as an integer with a range of 0-65535.<br> Contains data from all detector logics. Each detector logic is separated with a colon. <br> The value is set to “-1” if no data could be measured (e.g. detector fault)<br>|

<a id="S0207"></a>
### S0207
Traffic Counting: Occupancy

|Name|Type|Value|Comment|
|----|----|-----|-------|
|start|string|[time stamp]|Time stamp for start of measuring. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z|
|occupancy|string|[0-100,...]|Occupancy in percent (%) (0-100)<br> Value expressed as an integer with a range of 0-100.<br> Contains data from all detector logics. Each detector logic is separated with a colon. <br> The value is set to “-1” if no data could be measured (e.g. detector fault)<br>|

<a id="S0208"></a>
### S0208
Traffic Counting: Number of vehicles of given classification

|Name|Type|Value|Comment|
|----|----|-----|-------|
|start|string|[time stamp]|Time stamp for start of measuring. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z|
|P|string|[0-65535,...]|Number of cars<br> Value expressed as an integer with a range of 0-65535.<br> Contains data from all detector logics. Each detector logic is separated with a colon. <br> The value is set to “-1” if no data could be measured (e.g. detector fault)<br>|
|PS|string|[0-65535,...]|Number of cars with trailers<br> Value expressed as an integer with a range of 0-65535.<br> Contains data from all detector logics. Each detector logic is separated with a colon. <br> The value is set to “-1” if no data could be measured (e.g. detector fault)<br>|
|L|string|[0-65535,...]|Number of trucks<br> Value expressed as an integer with a range of 0-65535.<br> Contains data from all detector logics. Each detector logic is separated with a colon. <br> The value is set to “-1” if no data could be measured (e.g. detector fault)<br>|
|LS|string|[0-65535,...]|Number of trucks with trailers<br> Value expressed as an integer with a range of 0-65535.<br> Contains data from all detector logics. Each detector logic is separated with a colon. <br> The value is set to “-1” if no data could be measured (e.g. detector fault)<br>|
|B|string|[0-65535,...]|Number of busses<br> Value expressed as an integer with a range of 0-65535.<br> Contains data from all detector logics. Each detector logic is separated with a colon. <br> The value is set to “-1” if no data could be measured (e.g. detector fault)<br>|
|SP|string|[0-65535,...]|Number of trams<br> Value expressed as an integer with a range of 0-65535.<br> Contains data from all detector logics. Each detector logic is separated with a colon. <br> The value is set to “-1” if no data could be measured (e.g. detector fault)<br>|
|MC|string|[0-65535,...]|Number of motor cycles<br> Value expressed as an integer with a range of 0-65535.<br> Contains data from all detector logics. Each detector logic is separated with a colon. <br> The value is set to “-1” if no data could be measured (e.g. detector fault)<br>|
|C|string|[0-65535,...]|Number of bicycles<br> Value expressed as an integer with a range of 0-65535.<br> Contains data from all detector logics. Each detector logic is separated with a colon. <br> The value is set to “-1” if no data could be measured (e.g. detector fault)<br>|
|F|string|[0-65535,...]|Number of pedestrians<br> Value expressed as an integer with a range of 0-65535.<br> Contains data from all detector logics. Each detector logic is separated with a colon. <br> The value is set to “-1” if no data could be measured (e.g. detector fault)<br>|

<a id="commands"></a>

# Commands
| ObjectType | commandCodeId | Description |
| ---------- |:-------------:| ----------- |
|Traffic Controller|[M0001](#M0001)|Sets functional position<br>Requires security code 2|
|Traffic Controller|[M0002](#M0002)|Sets current time plan<br>Requires security code 2|
|Traffic Controller|[M0003](#M0003)|Sets traffic situation the controller uses.<br>Requires security code 2|
|Traffic Controller|[M0004](#M0004)|Restarts Traffic Controller<br>Requires security code 2|
|Traffic Controller|[M0005](#M0005)|Activate emergency route<br>Requires security code 2|
|Traffic Controller|[M0006](#M0006)|Activate input<br>Requires security code 2|
|Traffic Controller|[M0007](#M0007)|Activate fixed time control<br>Requires security code 2|
|Detector logic|[M0008](#M0008)|Sets manual activation of detector logic.<br>Requires security code 2|
|Signal group|[M0010](#M0010)|Start of signal group. Orders a signal group to green. Requires security code 2|
|Signal group|[M0011](#M0011)|Stop of signal group. Orders a signal group to red. Requires security code 2|
|Traffic Controller|[M0012](#M0012)|Request start or stop of a series of signal groups. Requires security code 2|
|Traffic Controller|[M0013](#M0013)|Activate a series of inputs<br>Requires security code 2|
|Traffic Controller|[M0014](#M0014)|Set command table|
|Traffic Controller|[M0015](#M0015)|Set Offset time|
|Traffic Controller|[M0016](#M0016)|Set week time table|
|Traffic Controller|[M0017](#M0017)|Set time tables|
|Traffic Controller|[M0018](#M0018)|Set Cycle time|
|Traffic Controller|[M0019](#M0019)|Force input<br>Requires security code 2|
|Traffic Controller|[M0020](#M0020)|Force output<br>Requires security code 2|
|Traffic Controller|[M0103](#M0103)|Set security code|
|Traffic Controller|[M0104](#M0104)|Set clock|

## Arguments

<a id="M0001"></a>
### M0001
Sets functional position<br>Requires security code 2

|Name|Command|Type|Value|Comment|
|----|-------|----|-----|-------|
|status|setValue|string|<ul><li>NormalControl</li><li>YellowFlash</li><li>Dark</li></ul>|NormalControl: Normal Control<br>YellowFlash: Enables yellow flash<br>Dark: Enables dark mode|
|securityCode|setValue|string|[text]|Security code 2 |
|timeout|setValue|unit|[0-1440]|Time in minutes until controller automatically reverts to previous functional position.<br>0=no automatic return|
|intersection|setValue|ordinal|[0-255]|Intersection number|

<a id="M0002"></a>
### M0002
Sets current time plan<br>Requires security code 2

|Name|Command|Type|Value|Comment|
|----|-------|----|-----|-------|
|status|setPlan|boolean|<ul><li>False</li><li>True</li></ul>|False: Controller uses time plan according to programming<br>True: Contoller uses time plan according to command|
|securityCode|setPlan|string|[text]|Security code 2|
|timeplan|setPlan|ordinal|[1-255]|designation på time plan|

<a id="M0003"></a>
### M0003
Sets traffic situation the controller uses.<br>Requires security code 2

|Name|Command|Type|Value|Comment|
|----|-------|----|-----|-------|
|status|setTrafficSituation|boolean|<ul><li>False</li><li>True</li></ul>|False: Controller uses traffic situation according to own programming<br>True: Contoller uses traffic situation according to command|
|securityCode|setTrafficSituation|string|[text]|Security code 2|
|traficsituation|setTrafficSituation|ordinal|[1-255]|designation of traficsituation|

<a id="M0004"></a>
### M0004
Restarts Traffic Controller<br>Requires security code 2

|Name|Command|Type|Value|Comment|
|----|-------|----|-----|-------|
|status|setRestart|boolean|True|True: Restart controller|
|securityCode|setRestart|string|[text]|Security code 2|

<a id="M0005"></a>
### M0005
Activate emergency route<br>Requires security code 2

|Name|Command|Type|Value|Comment|
|----|-------|----|-----|-------|
|status|setEmergency|boolean|<ul><li>False</li><li>True</li></ul>|False: Activate emergency route<br>True: Deactivate emergency route|
|securityCode|setEmergency|string|[text]|Security code 2|
|emergencyroute|setEmergency|ordinal|[1-255]|Number of emergency route|

<a id="M0006"></a>
### M0006
Activate input<br>Requires security code 2

|Name|Command|Type|Value|Comment|
|----|-------|----|-----|-------|
|status|setInput|boolean|<ul><li>False</li><li>True</li></ul>|False: Deactivate input<br>True: Activate input|
|securityCode|setInput|string|[text]|Security code 2|
|input|setInput|ordinal|[1-255]|Number of Input|

<a id="M0007"></a>
### M0007
Activate fixed time control<br>Requires security code 2

|Name|Command|Type|Value|Comment|
|----|-------|----|-----|-------|
|status|setFixedTime|boolean|<ul><li>False</li><li>True</li></ul>|False: Deactivate fixed time control<br>True: Activate fixed time control|
|securityCode|setFixedTime|string|[text]|Security code 2|

<a id="M0008"></a>
### M0008
Sets manual activation of detector logic.<br>Requires security code 2

|Name|Command|Type|Value|Comment|
|----|-------|----|-----|-------|
|status|setForceDetectorLogic|boolean|<ul><li>False</li><li>True</li></ul>|False: Deactivate manual control of detector logic<br>True: Activate manual control of detector logic|
|securityCode|setForceDetectorLogic|string|[text]|Security code 2|
|mode|setForceDetectorLogic|boolean|<ul><li>False</li><li>True</li></ul>|False: Deactivate detector logic<br>True: Activate detector logic|

<a id="M0010"></a>
### M0010
Start of signal group. Orders a signal group to green. Requires security code 2

|Name|Command|Type|Value|Comment|
|----|-------|----|-----|-------|
|status|setStart|boolean|<ul><li>False</li><li>True</li></ul>|False: No command (default)<br>True: Order a signal group to green|
|securityCode|setStart|string|[text]|Security code 2|

<a id="M0011"></a>
### M0011
Stop of signal group. Orders a signal group to red. Requires security code 2

|Name|Command|Type|Value|Comment|
|----|-------|----|-----|-------|
|status|setStop|boolean|<ul><li>False</li><li>True</li></ul>|False: No command (default)<br>True: Order a signal group to red|
|securityCode|setStop|string|[text]|Security code 2|

<a id="M0012"></a>
### M0012
Request start or stop of a series of signal groups. Requires security code 2

|Name|Command|Type|Value|Comment|
|----|-------|----|-----|-------|
|status|setStart|string||Orders signal groups to green or red. Sets a block of 16 signal groups at a time. Can be repeated to set several blocks of 16 signal groups. Values are separated with comma. Blocks are separated with semicolon. Since semicolon breaks the SXL csv-format, colon is used in example below.<br><br>1=Order signal group to green<br>0=Order signal group to red<br><br>Format: [Offset],[Bits to set],[Bits to unset]:…<br> <br>Offset sets where the 16 inputs starts from followed by two 16 bit values telling which bit to set and unset in binary format, i.e. first bit have value 1 and last bit have value 32768. <br> <br>Example 1:<br>"5, 4134, 65" sets input 6,7,10,17 = on and 5,11 = off<br>(Input starts from no. 5 and bit 1,2,5,12 = 1 and bit 0,6 = 0)<br> <br>Example 2:<br>"22, 1, 4" sets input 22 = on and 24 = off<br>(Input starts from no. 22 and bit 0 = 1 and bit 2 = 0)<br> <br>And both thease examples could be sent in the same message as:<br>"5,4143,65:22,1,4"<br><br>Such a message would order signal group 6,7,10,17,22 to green and signal group 5,11,24 to red|
|securityCode|setStart|string|[text]|Security code 2|

<a id="M0013"></a>
### M0013
Activate a series of inputs<br>Requires security code 2

|Name|Command|Type|Value|Comment|
|----|-------|----|-----|-------|
|status|setInput|string||Sets/Unsets a block of 16 inputs at a time. Can be repeated to set several blocks of 16 inputs. Values are separated with comma. Blocks are separated with semicolon. Since semicolon breaks the SXL csv-format,  colon, ":" is used in example below.<br><br>Format: [Offset],[Bits to set],[Bits to unset]:…<br> <br>Offset sets where the 16 inputs starts from followed by two 16 bit values telling which bit to set and unset in binary format, i.e. first bit have value 1 and last bit have value 32768. <br> <br>Example 1:<br>"5, 4134, 65" sets input 6,7,10,17 = on and 5,11 = off<br>(Input starts from no. 5 and bit 1,2,5,12 = 1 and bit 0,6 = 0)<br> <br>Example 2:<br>"22, 1, 4" sets input 22 = on and 24 = off<br>(Input starts from no. 22 and bit 0 = 1 and bit 2 = 0)<br> <br>And both thease examples could be sent in the same message as:<br>"5,4143:65:22,1,4"<br><br>Such a message would activate input 6,7,10,17,22 and deactive input 5,11,24|
|securityCode|setInput|string|[text]|Security code 2|

<a id="M0014"></a>
### M0014
Set command table

|Name|Command|Type|Value|Comment|
|----|-------|----|-----|-------|
|plan|setCommands|integer|[0-255]|Plan to be changed|
|status|setCommands|string|[text]|Command table. Defines command, <br>Each command are written as dd-ee where:<br>dd=Dynamic band number (from 1-10)<br>ee=Extension in seconds in this band<br><br>Each command is separated with a comma.<br><br>E.g. <br>dd-ee,dd-ee|
|securityCode|setCommands|string|[text]|Security code 2|

<a id="M0015"></a>
### M0015
Set Offset time

|Name|Command|Type|Value|Comment|
|----|-------|----|-----|-------|
|status|setOffset|integer|[0-255]|Set offset time in seconds|
|plan|setOffset|integer|[0-255]|Time plan nr|
|securityCode|setOffset|string|[text]|Security code 2|

<a id="M0016"></a>
### M0016
Set week time table

|Name|Command|Type|Value|Comment|
|----|-------|----|-----|-------|
|status|setWeekTable|string|[text]|Week time table. Defines time table to use for each week day<br>Each segment is written as d-t where:<br>d=day of week<br>t=time table nr<br><br>Day of week legend:<br>0=Monday<br>1=Tuesday<br>2=Wednesday<br>3=Thursday<br>4=Friday<br>5=Saturday<br>6=Sunday<br><br>Each segment is separated with a comma<br><br>E.g.<br>d-t,d-t|
|securityCode|setWeekTable|string|[text]|Security code 2|

<a id="M0017"></a>
### M0017
Set time tables

|Name|Command|Type|Value|Comment|
|----|-------|----|-----|-------|
|status|setTimeTable|string|[text]|Time Table. Defines time tables.<br>Each time definition is written as t-o-h-m where:<br>t=time table nr (1-12)<br>o=function<br>h=hour - switching time<br>m=minute - switching minute<br><br>Function legend:<br>0=no plan is selected by time table<br>1=set plan 1<br>…<br>16= set plan 16<br><br>hour and minute is using local time (not UTC)<br><br>Each time definition is separated with a comma.<br><br>E.g.<br>t-o-h-m,t-o-h-m<br>|
|securityCode|setTimeTable|string|[text]|Security code 2|

<a id="M0018"></a>
### M0018
Set Cycle time

|Name|Command|Type|Value|Comment|
|----|-------|----|-----|-------|
|status|setCycleTime|integer|[1-255]|Set cycle time in seconds|
|plan|setCycleTime|integer|[0-255]|Time plan nr|
|securityCode|setCycleTime|string|[text]|Security code 2|

<a id="M0019"></a>
### M0019
Force input<br>Requires security code 2

|Name|Command|Type|Value|Comment|
|----|-------|----|-----|-------|
|status|setInput|boolean|<ul><li>False</li><li>True</li></ul>|False: Force input<br>True: Release input|
|securityCode|setInput|string|[text]|Security code 2|
|input|setInput|ordinal|[1-255]|Number of Input|
|inputValue|setInput|boolean|<ul><li>False</li><li>True</li></ul>|False: input forced to False<br>True: input forced to True|

<a id="M0020"></a>
### M0020
Force output<br>Requires security code 2

|Name|Command|Type|Value|Comment|
|----|-------|----|-----|-------|
|status|setOutput|boolean|<ul><li>False</li><li>True</li></ul>|False: Force output<br>True: Release output|
|securityCode|setInput|string|[text]|Security code 2|
|output|setOutput|ordinal|[1-255]|Number of Output|
|outputValue|setOutput|boolean|<ul><li>False</li><li>True</li></ul>|False: output forced to False<br>True: output forced to True|

<a id="M0103"></a>
### M0103
Set security code

|Name|Command|Type|Value|Comment|
|----|-------|----|-----|-------|
|status|setSecurityCode|string|<ul><li>Level1</li><li>Level2</li></ul>|Level1: Change security code 1<br>Level2: Change security code 2|
|oldSecurityCode|setSecurityCode|string|[text]|Previous security code|
|newSecurityCode|setSecurityCode|string|[text]|New security code|

<a id="M0104"></a>
### M0104
Set clock

|Name|Command|Type|Value|Comment|
|----|-------|----|-----|-------|
|securityCode|setDate|string|[text]|Security code 1|
|year|setDate|integer|YYYY|Changes internal clock. Note: UTC is used<br>Year according to YYYY|
|month|setDate|integer|MM|Changes internal clock. Note: UTC is used<br>Month according to MM (01-12)|
|day|setDate|integer|DD|Changes internal clock. Note: UTC is used<br>Day in month according to DD (01-31)|
|hour|setDate|integer|HH|Changes internal clock. Note: UTC is used<br>Hour according to HH (00-23)|
|minute|setDate|integer|MM|Changes internal clock. Note: UTC is used<br>Minute according to MM (00-23)|
|second|setDate|integer|SS|Changes internal clock. Note: UTC is used<br>Second according to SS (00-59)|

