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
+ M0016 - Set waek time table
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





S0023/M0014. Command table (C-pulses)
-------------------------------------
Command table. Defines command, e.g. c-pulses.
Each command is written as pp-o-gg-cc where:
 * pp=time plan
 * o=command
 * gg=group number
 * cc=cycle step

Command legend:
 * 1=Give green to group
 * 2-255=Reserved

Each command is separated with a semicolon

E.g. 
pp-o-gg-cc;pp-o-gg-cc;


S0024/M0015. Offset time
------------------------
Offset table
Each offset time is written as pp-tt where:
 * pp=time plan
 * tt=offset time in seconds

Each offset time is separated with a semicolon

E.g.
pp-tt;pp-tt;



S0025. Time-to-green
--------------------
Time stamps
  * startTime
  * minEndTime
  * maxEndTime
  * nextTime
  * nextMinEndTime
  * nextMaxEndTime

Time stamp for start of measuring. Format according to W3C XML dateTime with a
resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z


S0026/M0016 Week time table
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


S0027/M0017 Time table
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
