
.. _change-log:

Change log
==========

Version 1.1.1
-------------
Release date: 2023-10-01

**Major changes**

- The data type "timestamp" is used where applicable instead of "string".
  Since RSMP 3.2.1 contains the definition of the timestamp type, there is
  no need to define the timestamp format everywhere it's used. :issue:`171`

**Minor changes**

- Include the full changelog. :issue:`165`

**Clarifications**

- Update definition of "Red rest without start order". :issue:`104`
- S0006: Rename "emergency stage" to "emergency route". :issue:`145` and :issue:`110`
- S0007: Update description. :issue:`168`

Version 1.1
-----------
Release date: 2022-06-23

**Major changes**

- Designated command/status for priority.
  Add a specific command and status for requesting priority for designated
  vehicles. :issue:`129`
- S0091, S0092: "Operator logged in" updated.
  User name removed and login levels updated. :issue:`94`
- A0005/A0007. Updated definitions.
  A0005 is used for communication error in coordination mode.
  A0007 is used for communication error with supervision system and NTP.
  :issue:`77`
- Source of status changes.
  Ability to check the reason for switching status, e.g. source of plan change,
  dark mode, etc. :issue:`67`
- Coordination local/centralized.
  Ability to check if TLC is using local or centralized coordination. :issue:`83`
- Add serious detector hardware and logic errors
  Only low priority detector errors were defined.
  There is a need to be able to use detector error with a higher priority
  (serious error). :issue:`108`
- Timeout for dynamic bands.
  Time until a designated time plan is entered due to lost connection with the
  supervisor. :issue:`95` and :issue:`96`
- M0019 and M0005. True/False mixed up.
  Both M0019 (force input) and M0005 (emergency route) had typos where True and
  False were mixed up in the description. :issue:`121` and :issue:`144`

**Minor changes**

- M0013: Add "All read" as possible option for Police Key. :issue:`119`
- Use only JSON data types. Replace "long" with "integer". :issue:`133`
- S0001: Use '-' if there are gaps in the numbering. :issue:`125`
- M0010, M0011, M0012 marked as reserved for future use.
- extendedinputstatus and extendedoutstatus in S0003 and S0004 marked as
  deprecated.

**Minor clarifications**

- S0096, M0104, S0204, S0201, S0202: Define min, max correctly when using
  integers and long. :issue:`131`
- A0008: Add list (1-255) instead of "designation" (time plan). :issue:`130`
- M0013: Fix error in example and description. :issue:`134`
- Signal group status: Ascii character after each definition. :issue:`103`
- S0011: Yellow flash. Clarification in description. :issue:`112`
- M0019: Typo in example for "Force Input". :issue:`136`
- Aggregated Status, functionalPosition  and functionalState (fS and fP) is unused.
  :issue:`90`
- Definition of max. minimum green. :issue:`102`
- Clarify that a number of statuses uses comma separated lists of intersections.
  :issue:`122`
- Clarify meaning of "cycle counter" and "base cycle counter".  :issue:`118`

Version 1.0.15
---------------
Relase date: 2020-10-30

- The coordination specification has been added. :pull:`79`
  Coordination with RSMP were tested already back in 2013-2014 together with
  Swarco, Dynniq and the former TTS (now Swarco). All the necessary commands
  and statuses has already been added in previous versions of the SXL.
- Detailed descriptions of all alarms, statuses and commands :issue:`68`
- Ability to force outputs :issue:`36`
- Ability to change trigger level sensitivity for loop detectors :issue:`39`
- Ability to read signal program and checksum :issue:`19` and :issue:`38`
- Door/cabinet alarm :issue:`20`
- Change *ordinal*, *unit* and *scale* data types to *integer* or *string*
  This change is made to avoid assumptions of data types which may not be
  true. Needed to comply with RSMP 3.1.3 and later. :issue:`23`

The following commands/statuses/alarms has been added:

- M0020 Force output
- S0030 Forced output status
- M0021 Set trigger level sensitivity for loop detector
- S0031 Trigger level sensitivity for loop detector
- S0097 Signal Program Version
- S0098 Configuration of traffic parameters
- A0010 Door alarm

The full list can be `shown here <https://github.com/rsmp-nordic/rsmp_sxl_traffic_lights/issues?q=is%3Aissue+milestone%3A1.0.15>`_.

Version 1.0.14
--------------
Release date: 2017-10-30

Improved traffic counting (S0205-S0208)

The old traffic data statuses, S0201-S0204, may cause excessive amount of
network traffic if subscriptions are established for each detector logic. The
new traffic data statuses contains data from all detector logics in the same
status message.

Version 1.0.13
--------------
Release date: 2017-06-26

"RSMP++", extensions by the City of Copenhagen.

The SXL additions was initiated by the City of Copenhagen to enable more
flexible traffic management using the RSMP protocol.

The extension focuses on these elements:

- Ability to read list of configured time plans
- Ability to read and modify offset times
- Ability to read and modify green times
- Ability to read and modify time tables
- Ability to read and modify cycle time
- Ability to get predicted time-to-green / time-to-red
- Ability to force input

Version 1.0.11-1.0.12
---------------------
Not released.

Improved traffic counting. Moved to separate branch
"improved_traffic_counting".

Version 1.0.10
--------------
Release date: 2013-09-24

Extensions for coordination support

- M0013 Fix separator between command chunks

Version 1.0.9
-------------
Release date: 2013-10-07

Extensions for coordination support

- M0012 The object type  was incorrectly set to "Signal group". It should have
  been "Traffic light controller"

Version 1.0.8
-------------
Release date: 2013-09-24


Extensions for coordination support. Adds commands/statuses needed for
coordination between TLCs

- M0012 Activate/Deactivate many inputs
- M0013 Request many signals groups to green/red

Version 1.0.7
-------------
Release date: 2012-10-04

- Used for traffic light controllers from 2012.

Version 1.0.6
-------------
Release date: 2012-02-29

- New format of the SXL (signal exchange list), which makes it easier to
  import the SXL to the RSMP simulators. This means that description of
  signal group status, etc. moves to separate documents

- The SXL is now translated to English

- Adjustments in accordance to RSMP 3.x

  - The argument "interval" can be removed from traffic counting messages
    S0201, S0202, S0203, S0204. The seleceted interval is controlled useing
    "UpdateRate" in RSMP 3.x.

  - In all alarms, "category" is adjusted. "d" becomes "D"

- The comments for M0104 and S0096 is adjusted: hour in setDate is defined
  as 00-23 and not 00-24

- The object "Traffic Controller" is a "grouped object" and not a
  "single object"
  
- The "siteId" example is adjusted in order to work better in the simulators

- The object types "signal group" and "detector logic" were added. This
  makes is possible to distinguish between signal groups and detector logics
  in alarms, which is important in case more that one signal group or more
  than one detector logic is sending alarms. This affects traffic counting
  and makes it possible to count traffic on more that one detector logic
  at a time. This also affects manual control of detector logic (M0008).
  It wasn't clear which detector logic that would be set using this command.

- The following alarms changes object type to "signal group" and
  therefore is "signal group" removed as a return value.

  - A0008
  - A0101
  - A0201
  - A0202

- The following alarms changes object type to "detector logic"
  and therefore is "detector logic" removed as a return value.

  - A0301
  - A0302

- The following statuses changes object type to "detector logic"
  and therefore is "detector logic" removed as argument.
   
  - S0201
  - S0202
  - S0203
  - S0204

- The commands M0008 changes object type to "detector logic"
  so that it's clear which detector logic that will be set.
  
Version 1.0.5
-------------
Release date: 2011-11-11

- Adjustments to RSMP 3.0
- Since event messages are removed from the RSMP spec, the following event
  messages are now status messages:

  - EV002 Controller starting. Replaced by IS005

  - EV003 Emergency route. Replaced by IS006

  - EV004 Controller turned on. Replaced by IS007

  - EV005 Manual control. Replaced by IS008
    
  - EV006 Fixed time control. Replaced by IS009

  - EV007 Isolated mode. Replaced by by IS010

  - EV008 Yellow flash. Replaced by IS011

  - EV009 All red. Replaced by IS012

  - EV010 Police key. Replaced by IS013

  - EV011 Timeplan. Replaced by IS014

  - EV012 Traffic situation. Replaced by IS015
    
  - EV013 Control mode. Replaced by IS020

  - EV091 Operator logged in. OP panel. Replaced by IS091

  - EV092 Operator logged in. Web interface. Replaced by IS092

  - EV101 Signal group status. Replaced by IS001

  - EV102 Detector logic status. Replaced by IS002

  - EV103 Input status. Replaced by IS003

  - EV104 Output status. Replaced by IS004

  - EV105 Message blocking active. Removed. Added as message type in RSMP 3.0

  - EV106 Message blocking inactive. Added as message type in RSMP 3.0

  - EV201. Traffic counting. Number of vehicles. Replaced by IS201

  - EV202. Traffic counting. Vehicle speed. Replaced by IS202

  - EV203. Traffic counting. Occupancy. Replaced by IS203

  - EV204. Traffic counting. Number of vehicles of given classification.
    Replaced by IS204

- Changes to statuses:

  - IS093 Version of RSMP. Removed. Added as message type in RSMP 3.0

  - IS094 Version of SXL. Removed. Added as message type in RSMP 3.0

- Changes to commands:

  - MA102 Activate sending of event message. Removed. Not needed as separate
    as separate message in RSMP 3.0.

  - MA201 Change watchdog setting. Not needed as separate message in RSMP 3.0

- Adjustment of numbering and definitions based on the STA's standards.
  This means transition to alarms-, status- and commands according to
  "Ayyyy", "Syyyy" and "Myyyy", where "yyyy" is number in consecutive order

- Data types adjusted. "Number" is replaced with proper data types, integer, long and real.
  The following command and statuses are affected:
  M0104, S0001, S0013, S0016, S0017, S0018, S0019, S0096, S0201, S0204

Version 1.0.4
-------------
Relase date: 2010-10-26

- AL301 and AL302. Manually controlled detector logic added
- AL302: Intermittent logic error instead of other logic error
