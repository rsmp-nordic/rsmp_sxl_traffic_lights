Signal Exchange List
====================
+ **Plant Id**: Plant id
+ **Plant Name**: Plant name
+ **Constructor**: RSMP Nordic
+ **Reviewed**:
+ **Approved**:
+ **Created date**: 2010-04-20
+ **SXL revision**: 1.0.15-draft
+ **Revision date**: 2020-xx-xx
+ **RSMP version**: 3.1.2

Sections
--------
+ `Object types`_
+ `Aggregated status`_
+ `Alarms`_
+ `Status`_
+ `Commands`_

Object Types
============

Grouped objects
---------------

.. list-table:: Grouped objects
   :widths: 30 70
   :header-rows: 1

   * - ObjectType
     - Description
   * - Traffic Light Controller
     - 

Single objects
--------------

.. list-table:: Single objects
   :widths: 30 70

   * - ObjectType
     - Description
   * - Signal group
     - 
   * - Detector logic
     - 

Aggregated status
=================

.. list-table:: Grouped objects
   :widths: 18 15 13 13 12
   :header-rows: 1

   * - ObjectType
     - Status
     - functionalPosition
     - functionalState
     - Description
   * - Traffic Light Controller
     - See state-bit definitions below
     - 
     - 
     - 

.. list-table:: State bits
   :widths: 15 30 55
   :header-rows: 1

   * - State- Bit nr
       (12345678)
     - Description
     - Comment
   * - 1
     - Local mode
     - Traffic Light Controller is in local mode. NTS has no control.
   * - 2
     - No communications
     - 
   * - 3
     - High priority fault
     - Traffic Light Controller is in fail safe mode; e.g. yellow flash or dark mode
   * - 4
     - Medium priority fault
     - Traffic Light Controller has a medium priority fault, but not in fail safe mode. E.g. several lamp faults or detector fault
   * - 5
     - Low priority fault
     - Traffic Light Controller has a low priority fault. E.g. Detector fault
   * - 6
     - Connected / Normal - In Use
     - 
   * - 7
     - Connected / Normal - Idle
     - Traffic Light Controller dark according to configuration. NOTE! When dark according to configuration the controller is considered to be in use
   * - 8
     - Not Connected
     - 

Alarms
======

.. list-table:: Alarms
   :widths: auto
   :header-rows: 1

   * - ObjectType
     - alarmCodeId
     - Description
     - externalAlarmCodeId
     - Priority
     - Category
   * - Traffic Light Controller
     - A0001
     - Serious hardware error
     - Defined by manufacturer
     - 2
     - D
   * - Traffic Light Controller
     - A0002
     - Less serious hardware error
     - Defined by manufacturer
     - 3
     - D
   * - Traffic Light Controller
     - A0003
     - Serious configuration error
     - Defined by manufacturer
     - 2
     - D
   * - Traffic Light Controller
     - A0004
     - Less serious configuration error
     - Defined by manufacturer
     - 3
     - D
   * - Traffic Light Controller
     - A0005
     - Communication error between traffic light controllers / synchronisation error
     - Defined by manufacturer
     - 3
     - D
   * - Traffic Light Controller
     - A0006
     - Safety error
     - Defined by manufacturer
     - 2
     - D
   * - Traffic Light Controller
     - A0007
     - Communication error between one or multiple traffic light controllers and central control system
     - Defined by manufacturer
     - 3
     - D
   * - Signal group
     - `A0008`_
     - Dead lock error
     - Defined by manufacturer
     - 2
     - D
   * - Traffic Light Controller
     - A0009
     - Other error
     - Defined by manufacturer
     - 3
     - D
   * - Traffic Light Controller
     - A0010
     - Door open
     - Defined by manufacturer
     - 3
     - D
   * - Signal group
     - A0101
     - Pushbutton error
     - Defined by manufacturer
     - 3
     - D
   * - Signal group
     - `A0201`_
     - Serious lamp error
     - Defined by manufacturer
     - 2
     - D
   * - Signal group
     - `A0202`_
     - Less serious lamp error
     - Defined by manufacturer
     - 3
     - D
   * - Detector logic
     - `A0301`_
     - Detector error (hardware)
     - Defined by manufacturer
     - 3
     - D
   * - Detector logic
     - `A0302`_
     - Detector error (logic error)
     - Defined by manufacturer
     - 3
     - D

Return values
-------------

A0008
~~~~~

Dead lock error

.. list-table:: Return values
   :widths: 10 8 13 25
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - timeplan
     - integer
     - [designation]
     - Current time plan

A0201
~~~~~

Serious lamp error

.. list-table:: Return values
   :widths: 10 8 13 25
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - color
     - string
     - - red
       - yellow
       - green
     - Color of lamp

A0202
~~~~~

Less serious lamp error

.. list-table:: Return values
   :widths: 10 8 13 25
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - color
     - string
     - - red
       - yellow
       - green
     - Color of lamp

A0301
~~~~~

Detector error (hardware)

.. list-table:: Return values
   :widths: 10 8 13 25
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - detector
     - string
     - [designation]
     - Designation of the detector
   * - type
     - string
     - - loop
       - input
     - | Type of detector.
       | loop: Inductive detector loop
       | input: External input
   * - errormode
     - string
     - - on
       - off
     - Dectector forced on/off while detector error
   * - manual
     - boolean
     - - True
       - False
       - 
     - Manually controlled detector logic (True/False)

A0302
~~~~~

Detector error (logic error)

.. list-table:: Return values
   :widths: 10 8 13 25
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - detector
     - string
     - [designation]
     - Designation of the detector
   * - type
     - string
     - - loop
       - input
     - | Type of detector.
       | loop: Inductive detector loop
       | input: External input
   * - errormode
     - string
     - - on
       - off
     - Dectector forced on/off while detector error
   * - manual
     - boolean
     - - True
       - False
       - 
     - Manually controlled detector logic (True/False)
   * - logicerror
     - string
     - - always_off
       - always_on
       - intermittent
     - | Type of logic error
       | always_off: no detection during prefined max time
       | always on: detection constantly on during predefined max time
       | intermittent: intermittent logic fault (flutter)

Status
======

.. list-table:: Status
   :widths: auto
   :header-rows: 1

   * - ObjectType
     - statusCodeId
     - Description
   * - Traffic Light Controller
     - `S0001`_
     - Signal group status
   * - Traffic Light Controller
     - `S0002`_
     - Detector logic status
   * - Traffic Light Controller
     - `S0003`_
     - Input status
   * - Traffic Light Controller
     - `S0004`_
     - Output status
   * - Traffic Light Controller
     - `S0005`_
     - Traffic Light Controller starting
   * - Traffic Light Controller
     - `S0006`_
     - Emergency stage
   * - Traffic Light Controller
     - `S0007`_
     - Controller switched on
   * - Traffic Light Controller
     - `S0008`_
     - Manual control
   * - Traffic Light Controller
     - `S0009`_
     - Fixed time control
   * - Traffic Light Controller
     - `S0010`_
     - Isolated control
   * - Traffic Light Controller
     - `S0011`_
     - Yellow flash
   * - Traffic Light Controller
     - `S0012`_
     - All red
   * - Traffic Light Controller
     - `S0013`_
     - Police key
   * - Traffic Light Controller
     - `S0014`_
     - Current time plan
   * - Traffic Light Controller
     - `S0015`_
     - Current traffic situation
   * - Traffic Light Controller
     - `S0016`_
     - Number of detector logics
   * - Traffic Light Controller
     - `S0017`_
     - Number of signal groups
   * - Traffic Light Controller
     - `S0018`_
     - Number of time plans
   * - Traffic Light Controller
     - `S0019`_
     - Number of traffic situations
   * - Traffic Light Controller
     - `S0020`_
     - Control mode
   * - Traffic Light Controller
     - `S0021`_
     - Manually set detector logic
   * - Traffic Light Controller
     - `S0022`_
     - List of time plans
   * - Traffic Light Controller
     - `S0023`_
     - Command table
   * - Traffic Light Controller
     - `S0024`_
     - Offset time
   * - Signal Group
     - `S0025`_
     - Time-of-Green / Time-of-Red
   * - Traffic Light Controller
     - `S0026`_
     - Week time table
   * - Traffic Light Controller
     - `S0027`_
     - Time tables
   * - Traffic Light Controller
     - `S0028`_
     - Cycle time
   * - Traffic Light Controller
     - `S0029`_
     - Forced input status
   * - Traffic Light Controller
     - `S0030`_
     - Forced output status
   * - Traffic Light Controller
     - `S0031`_
     - Trigger level sensitivity for loop detector
   * - Traffic Light Controller
     - `S0091`_
     - Operator logged in/out OP-panel
   * - Traffic Light Controller
     - `S0092`_
     - Operator logged in/out web-interface
   * - Traffic Light Controller
     - `S0095`_
     - Version of Traffic Light Controller
   * - Traffic Light Controller
     - `S0096`_
     - Current date and time
   * - Traffic Light Controller
     - `S0097`_
     - Traffic parameter checksum
   * - Detector logic
     - `S0201`_
     - Traffic Counting: Number of vehicles
   * - Detector logic
     - `S0202`_
     - Traffic Counting: Vehicle speed
   * - Detector logic
     - `S0203`_
     - Traffic Counting: Occupancy
   * - Detector logic
     - `S0204`_
     - Traffic Counting: Number of vehicles of given classification
   * - Traffic Light Controller
     - `S0205`_
     - Traffic Counting: Number of vehicles
   * - Traffic Light Controller
     - `S0206`_
     - Traffic Counting: Vehicle speed
   * - Traffic Light Controller
     - `S0207`_
     - Traffic Counting: Occupancy
   * - Traffic Light Controller
     - `S0208`_
     - Traffic Counting: Number of vehicles of given classification

Return values
-------------

S0001
~~~~~

Signal group status

.. list-table:: Signal group status
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - signalgroupstatus
     - string
     - [text]
     - Signal group status as text field
   * - cyclecounter
     - integer
     - [0-999]
     - Cycle counter
   * - basecyclecounter
     - integer
     - [0-999]
     - Base cycle counter
   * - stage
     - integer
     - [0-999]
     - Current stage (isolated)

S0002
~~~~~

Detector logic status

.. list-table:: Detector logic status
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - detectorlogicstatus
     - string
     - [text]
     - Detector logic status as text field

S0003
~~~~~

Input status

.. list-table:: Input status
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - inputstatus
     - string
     - [text]
     - Input status as text field
   * - extendedinputstatus
     - string
     - [text]
     - Extended input status as text field

S0004
~~~~~

Output status

.. list-table:: Output status
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - outputstatus
     - string
     - [text]
     - Output status as text field
   * - extendedoutputstatus
     - string
     - [text]
     - Extended output status as text field

S0005
~~~~~

Traffic Light Controller starting

.. list-table:: Traffic Light Controller starting
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - status
     - boolean
     - - False
       - True
     - | False: Controller is not in start up mode
       | True: Controller is currently in start up mode

S0006
~~~~~

Emergency stage

.. list-table:: Emergency stage
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - status
     - boolean
     - - False
       - True
     - | False: Emergency stage inactive
       | True: Emergency stage active
   * - emergencystage
     - integer
     - [1-255]
     - Number of emergency stage

S0007
~~~~~

Controller switched on

.. list-table:: Controller switched on
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - intersection
     - integer
     - [0-255]
     - | 0: Not applicable (only one intersection exists or applicable for all intersection of the traffic light controller)
       | Other value: Intersection number
   * - status
     - boolean
     - - False
       - True
     - | False: Traffic Light Controller in dark mode
       | True: Traffic Light Controller not in dark mode

S0008
~~~~~

Manual control

.. list-table:: Manual control
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - intersection
     - integer
     - [0-255]
     - | 0: Not applicable (only one intersection exists or applicable for all intersection of the traffic light controller)
       | Other value: Intersection number
   * - status
     - boolean
     - - False
       - True
     - | False: Manual control inactive
       | True: Manual control active

S0009
~~~~~

Fixed time control

.. list-table:: Fixed time control
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - intersection
     - integer
     - [0-255]
     - | 0: Not applicable (only one intersection exists or applicable for all intersection of the traffic light controller)
       | Other value: Intersection number
   * - status
     - boolean
     - - False
       - True
     - | False:  Fixed time control inactive
       | True:  Fixed time control active

S0010
~~~~~

Isolated control

.. list-table:: Isolated control
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - intersection
     - integer
     - [0-255]
     - | 0: Not applicable (only one intersection exists or applicable for all intersection of the traffic light controller)
       | Other value: Intersection number
   * - status
     - boolean
     - - False
       - True
     - | False: Isolated control disabled
       | True: Isolated control enabled (Vehicle actuated control or Fixed time control)

S0011
~~~~~

Yellow flash

.. list-table:: Yellow flash
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - intersection
     - integer
     - [0-255]
     - | 0: Not applicable (only one intersection exists or applicable for all intersection of the traffic light controller)
       | Other value: Intersection number
   * - status
     - boolean
     - - False
       - True
     - | False: Yellow flash disabled
       | True: Yellow flash enabled

S0012
~~~~~

All red

.. list-table:: All red
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - intersection
     - integer
     - [0-255]
     - | 0: Not applicable (only one intersection exists or applicable for all intersection of the traffic light controller)
       | Other value: Intersection number
   * - status
     - boolean
     - - False
       - True
     - | False: All red disabled
       | True: All red enabled

S0013
~~~~~

Police key

.. list-table:: Police key
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - intersection
     - integer
     - [0-255]
     - | 0: Not applicable (only one intersection exists or applicable for all intersection of the traffic light controller)
       | Other value: Intersection number
   * - status
     - integer
     - - 0
       - 1
       - 2
     - | 0: disabled
       | 1: dark mode
       | 2: yellow flash

S0014
~~~~~

Current time plan

.. list-table:: Current time plan
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - status
     - integer
     - [1-255]
     - Current time plan

S0015
~~~~~

Current traffic situation

.. list-table:: Current traffic situation
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - status
     - integer
     - [1-255]
     - Current traffic situation

S0016
~~~~~

Number of detector logics

.. list-table:: Number of detector logics
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - number
     - long
     - [1-65025]
     - Number of detector logics

S0017
~~~~~

Number of signal groups

.. list-table:: Number of signal groups
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - number
     - long
     - [1-65025]
     - Number of signal groups

S0018
~~~~~

Number of time plans

.. list-table:: Number of time plans
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - number
     - long
     - [1-65025]
     - Number of time plans (depreciated)

S0019
~~~~~

Number of traffic situations

.. list-table:: Number of traffic situations
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - number
     - long
     - [1-65025]
     - Number of traffic situations

S0020
~~~~~

Control mode

.. list-table:: Control mode
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - intersection
     - integer
     - [0-255]
     - | 0: Not applicable (only one intersection exists or applicable for all intersection of the traffic light controller)
       | Other value: Intersection number
   * - controlmode
     - string
     - - startup
       - control
       - standby
       - failure
       - test
     - | Startup mode
       | Normal control
       | Standby mode
       | Failure mode
       | Test mode

S0021
~~~~~

Manually set detector logic

.. list-table:: Manually set detector logic
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - detectorlogics
     - string
     - [text]
     - Manually set detector logics (1/0) as text field

S0022
~~~~~

List of time plans

.. list-table:: List of time plans
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - status
     - string
     - [text]
     - Comma separated list of configured time plans. E.g. "1,2,3,5"

S0023
~~~~~

Command table

.. list-table:: Command table
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - status
     - string
     - [text]
     - | Command table. Defines command, 
       | Each command are written as pp-dd-ee where:
       | pp=Time plan
       | dd=Dynamic band number (from 1-10)
       | ee=Extension in seconds in this band
       | 
       | Each command is separated with a comma.
       | 
       | E.g. 
       | pp-dd-ee,pp-dd-ee

S0024
~~~~~

Offset time

.. list-table:: Offset time
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - status
     - string
     - [text]
     - | Offset table
       | Each offset time is written as pp-tt where:
       | pp=time plan
       | tt=offset time in seconds
       | 
       | Each offset time is separated with a comma
       | 
       | 
       | E.g.
       | pp-tt,pp-tt

S0025
~~~~~

Time-of-Green / Time-of-Red

.. list-table:: Time-of-Green / Time-of-Red
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - minToGEstimate   
     - string
     - [time stamp]
     - | Time stamp for the minimum time for the signal group to go to green. If the signal group is green, it is the minimum time for the next green.
       | Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   * - maxToGEstimate   
     - string
     - [time stamp]
     - | Time stamp for the maximum time for the signal group to go to green. If the signal group is green, it is the maximum time for the next green.
       | Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   * - likelyToGEstimate   
     - string
     - [time stamp]
     - | Time stamp for the most likely time for the signal group to go to green. If the signal group is green, it is the most likely time for the next green.
       | Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   * - ToGConfidence
     - integer
     - [0-100]
     - Confidence of the likelyToGEstimate. 0-100%
   * - minToREstimate   
     - string
     - [time stamp]
     - | Time stamp for the minimum time for the signal group to go to red. If the signal group is red, it is the minimum time for the next red.
       | Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   * - maxToREstimate
     - string
     - [time stamp]
     - | Time stamp for the maximum time for the signal group to go to red. If the signal group is red, it is the maximum time for the next red.
       | Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   * - likelyToREstimate   
     - string
     - [time stamp]
     - | Time stamp for the most likely time for the signal group to go to red. If the signal group is red, it is the most likely time for the next red.
       | Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   * - ToRConfidence
     - integer
     - [0-100]
     - Confidence of the likelyToREstimate. 0-100%

S0026
~~~~~

Week time table

.. list-table:: Week time table
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - status
     - string
     - [text]
     - | Week time table. Defines time table to use for each week day
       | Each day is written as d-t where:
       | d=day of week
       | t=time table nr
       | 
       | Day of week legend:
       | 0=Monday
       | 1=Tuesday
       | 2=Wednesday
       | 3=Thursday
       | 4=Friday
       | 5=Saturday
       | 6=Sunday
       | 
       | Each segment is separated with a comma
       | E.g.
       | d-t,d-t

S0027
~~~~~

Time tables

.. list-table:: Time tables
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - status
     - string
     - [text]
     - | Time Table. Defines time tables.
       | Each time definition is written as t-o-h-m where:
       | t=time table nr (1-12)
       | o=function
       | h=hour - switching time
       | m=minute - switching minute
       | 
       | Function legend:
       | 0=no plan is selected by time table
       | 1=set plan 1
       | …
       | 16= set plan 16
       | 
       | hour and minute is using local time (not UTC)
       | 
       | Each time definition is separated with a comma 
       | 
       | E.g.
       | t-o-h-m,t-o-h-m
       | 

S0028
~~~~~

Cycle time

.. list-table:: Cycle time
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - status
     - string
     - [text]
     - | Cycle time table
       | Each cycle time is written as pp-tt where:
       | pp=time plan
       | tt=cycle time in seconds
       | 
       | Each cycle time is separated with a comma
       | 
       | 
       | E.g.
       | pp-tt,pp-tt

S0029
~~~~~

Forced input status

.. list-table:: Forced input status
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - status
     - string
     - [text]
     - Forced input status as text field

S0030
~~~~~

Forced output status

.. list-table:: Forced output status
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - status
     - string
     - [text]
     - Forced output status as text field

S0031
~~~~~

Trigger level sensitivity for loop detector

.. list-table:: Trigger level sensitivity for loop detector
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - status
     - string
     - [text]
     - | Loop detector trigger level sensitivity is written as dd-ss where:
       | dd=loop detector number
       | ss=sensitivity value
       | Each loop detector is separated with a comma. E.g.dd-ss,dd-ss.

S0091
~~~~~

Operator logged in/out OP-panel

.. list-table:: Operator logged in/out OP-panel
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - user
     - string
     - - [username]
       - [nobody]
     - | username: User currently logged in
       | nobody: No one logged in
   * - status
     - string
     - - login
       - logout
     - | login: Somebody currently logged in
       | logout: Nobody currently logged in

S0092
~~~~~

Operator logged in/out web-interface

.. list-table:: Operator logged in/out web-interface
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - user
     - string
     - - [username]
       - [nobody]
     - | username: User currently logged in
       | nobody: No one logged in
   * - status
     - string
     - - login
       - logout
     - | login: Somebody currently logged in
       | logout: Nobody currently logged in

S0095
~~~~~

Version of Traffic Light Controller

.. list-table:: Version of Traffic Light Controller
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - status
     - string
     - [text]
     - Manufacturer, product name and version of traffic light controller

S0096
~~~~~

Current date and time

.. list-table:: Current date and time
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - year
     - integer
     - YYYY
     - Year according to format YYYY. NOTE: UTC is used
   * - month
     - integer
     - MM
     - Month (01-12) according to format MM. Note: UTC is used
   * - day
     - integer
     - DD
     - Day of month (01-31) according to format DD.  Note: UTC is used
   * - hour
     - integer
     - HH
     - Hour of day (00-23) according to format DD. Note: UTC is used
   * - minute
     - integer
     - MM
     - Minute (00-59) according to format MM. Note: UTC is used
   * - second
     - integer
     - SS
     - Second (00-59) according to format SS. Note: UTC is used

S0097
~~~~~

Traffic parameter checksum

.. list-table:: Traffic parameter checksum
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - checksum
     - string
     - [text]
     - | Checksum of the traffic parameters
       | Uses SHA-2 as hashing algorithm
       | Includes
       |  all signal programs, including program versions
       |  time plans
       |  safety matrix
       |  intergreen times
       |  detector settings
   * - timestamp
     - string
     - [time stamp]
     - Time stamp of the checksum. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z

S0201
~~~~~

Traffic Counting: Number of vehicles

.. list-table:: Traffic Counting: Number of vehicles
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - starttime
     - string
     - [time stamp]
     - Time stamp for start of measuring. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   * - vehicles
     - long
     - [number]
     - Number of vehicles on a given detector logic (since last update)

S0202
~~~~~

Traffic Counting: Vehicle speed

.. list-table:: Traffic Counting: Vehicle speed
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - starttime
     - string
     - [time stamp]
     - Time stamp for start of measuring. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   * - speed
     - integer
     - [speed]
     - Average speed in km/h

S0203
~~~~~

Traffic Counting: Occupancy

.. list-table:: Traffic Counting: Occupancy
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - starttime
     - string
     - [time stamp]
     - Time stamp for start of measuring. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   * - occupancy
     - integer
     - [0-100]
     - Occupancy in percent (0-100%)

S0204
~~~~~

Traffic Counting: Number of vehicles of given classification

.. list-table:: Traffic Counting: Number of vehicles of given classification
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - starttime
     - string
     - [time stamp]
     - Time stamp for start of measuring. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   * - P
     - long
     - [number]
     - Number of cars
   * - PS
     - long
     - [number]
     - Number of cars with trailers
   * - L
     - long
     - [number]
     - Number of trucks
   * - LS
     - long
     - [number]
     - Number of trucks with trailers
   * - B
     - long
     - [number]
     - Number of busses
   * - SP
     - long
     - [number]
     - Number of trams
   * - MC
     - long
     - [number]
     - Number of motor cycles
   * - C
     - long
     - [number]
     - Number of bicycles
   * - F
     - long
     - [number]
     - Number of pedestrians

S0205
~~~~~

Traffic Counting: Number of vehicles

.. list-table:: Traffic Counting: Number of vehicles
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - start
     - string
     - [time stamp]
     - Time stamp for start of measuring. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   * - vehicles
     - string
     - [0-65535,...]
     - | Number of vehicles
       |  Value expressed as an integer with a range of 0-65535.
       |  Contains data from all detector logics. Each detector logic is separated with a comma.
       |  The value is set to “-1” if no data could be measured (e.g. detector fault)
       | 

S0206
~~~~~

Traffic Counting: Vehicle speed

.. list-table:: Traffic Counting: Vehicle speed
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - start
     - string
     - [time stamp]
     - Time stamp for start of measuring. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   * - speed
     - string
     - [0-65535,...]
     - | Average speed in km/h (integer)
       |  Value expressed as an integer with a range of 0-65535.
       |  Contains data from all detector logics. Each detector logic is separated with a comma.
       |  The value is set to “-1” if no data could be measured (e.g. detector fault)
       | 

S0207
~~~~~

Traffic Counting: Occupancy

.. list-table:: Traffic Counting: Occupancy
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - start
     - string
     - [time stamp]
     - Time stamp for start of measuring. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   * - occupancy
     - string
     - [0-100,...]
     - | Occupancy in percent (%) (0-100)
       |  Value expressed as an integer with a range of 0-100.
       |  Contains data from all detector logics. Each detector logic is separated with a comma. 
       |  The value is set to “-1” if no data could be measured (e.g. detector fault)
       | 

S0208
~~~~~

Traffic Counting: Number of vehicles of given classification

.. list-table:: Traffic Counting: Number of vehicles of given classification
   :widths: auto
   :header-rows: 1

   * - Name
     - Type
     - Value
     - Comment
   * - start
     - string
     - [time stamp]
     - Time stamp for start of measuring. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   * - P
     - string
     - [0-65535,...]
     - | Number of cars
       |  Value expressed as an integer with a range of 0-65535.
       |  Contains data from all detector logics. Each detector logic is separated with a comma.
       |  The value is set to “-1” if no data could be measured (e.g. detector fault)
       | 
   * - PS
     - string
     - [0-65535,...]
     - | Number of cars with trailers
       |  Value expressed as an integer with a range of 0-65535.
       |  Contains data from all detector logics. Each detector logic is separated with a comma.
       |  The value is set to “-1” if no data could be measured (e.g. detector fault)
       | 
   * - L
     - string
     - [0-65535,...]
     - | Number of trucks
       |  Value expressed as an integer with a range of 0-65535.
       |  Contains data from all detector logics. Each detector logic is separated with a comma.
       |  The value is set to “-1” if no data could be measured (e.g. detector fault)
       | 
   * - LS
     - string
     - [0-65535,...]
     - | Number of trucks with trailers
       |  Value expressed as an integer with a range of 0-65535.
       |  Contains data from all detector logics. Each detector logic is separated with a comma.
       |  The value is set to “-1” if no data could be measured (e.g. detector fault)
       | 
   * - B
     - string
     - [0-65535,...]
     - | Number of busses
       |  Value expressed as an integer with a range of 0-65535.
       |  Contains data from all detector logics. Each detector logic is separated with a comma.
       |  The value is set to “-1” if no data could be measured (e.g. detector fault)
       | 
   * - SP
     - string
     - [0-65535,...]
     - | Number of trams
       |  Value expressed as an integer with a range of 0-65535.
       |  Contains data from all detector logics. Each detector logic is separated with a comma.
       |  The value is set to “-1” if no data could be measured (e.g. detector fault)
       | 
   * - MC
     - string
     - [0-65535,...]
     - | Number of motor cycles
       |  Value expressed as an integer with a range of 0-65535.
       |  Contains data from all detector logics. Each detector logic is separated with a comma.
       |  The value is set to “-1” if no data could be measured (e.g. detector fault)
       | 
   * - C
     - string
     - [0-65535,...]
     - | Number of bicycles
       |  Value expressed as an integer with a range of 0-65535.
       |  Contains data from all detector logics. Each detector logic is separated with a comma.
       |  The value is set to “-1” if no data could be measured (e.g. detector fault)
       | 
   * - F
     - string
     - [0-65535,...]
     - | Number of pedestrians
       |  Value expressed as an integer with a range of 0-65535.
       |  Contains data from all detector logics. Each detector logic is separated with a comma.
       |  The value is set to “-1” if no data could be measured (e.g. detector fault)
       | 

Commands
========
.. list-table:: Commands
   :widths: auto
   :header-rows: 1

   * - ObjectType
     - commandCodeId
     - Description
   * - Traffic Light Controller
     - `M0001`_
     - | Sets functional position
       | Requires security code 2
   * - Traffic Light Controller
     - `M0002`_
     - | Sets current time plan
       | Requires security code 2
   * - Traffic Light Controller
     - `M0003`_
     - | Sets traffic situation the controller uses.
       | Requires security code 2
   * - Traffic Light Controller
     - `M0004`_
     - | Restarts Traffic Light Controller
       | Requires security code 2
   * - Traffic Light Controller
     - `M0005`_
     - | Activate emergency route
       | Requires security code 2
   * - Traffic Light Controller
     - `M0006`_
     - | Activate input
       | Requires security code 2
   * - Traffic Light Controller
     - `M0007`_
     - | Activate fixed time control
       | Requires security code 2
   * - Detector logic
     - `M0008`_
     - | Sets manual activation of detector logic.
       | Requires security code 2
   * - Signal group
     - `M0010`_
     - Start of signal group. Orders a signal group to green. Requires security code 2
   * - Signal group
     - `M0011`_
     - Stop of signal group. Orders a signal group to red. Requires security code 2
   * - Traffic Light Controller
     - `M0012`_
     - Request start or stop of a series of signal groups. Requires security code 2
   * - Traffic Light Controller
     - `M0013`_
     - | Activate a series of inputs
       | Requires security code 2
   * - Traffic Light Controller
     - `M0014`_
     - Set command table
   * - Traffic Light Controller
     - `M0015`_
     - Set Offset time
   * - Traffic Light Controller
     - `M0016`_
     - Set week time table
   * - Traffic Light Controller
     - `M0017`_
     - Set time tables
   * - Traffic Light Controller
     - `M0018`_
     - Set Cycle time
   * - Traffic Light Controller
     - `M0019`_
     - | Force input
       | Requires security code 2
   * - Traffic Light Controller
     - `M0020`_
     - | Force output
       | Requires security code 2
   * - Traffic Light Controller
     - `M0021`_
     - | Set trigger level sensitivity for loop detector
       | Requires security code 2
   * - Traffic Light Controller
     - `M0103`_
     - Set security code
   * - Traffic Light Controller
     - `M0104`_
     - Set clock

Arguments
---------

M0001
~~~~~

| Sets functional position
| Requires security code 2

.. list-table:: Arguments
   :widths: auto
   :header-rows: 1

   * - Name
     - Command
     - Type
     - Value
     - Comment
   * - status
     - setValue
     - string
     - - NormalControl
       - YellowFlash
       - Dark
     - | NormalControl: Normal Control
       | YellowFlash: Enables yellow flash
       | Dark: Enables dark mode
   * - securityCode
     - setValue
     - string
     - [text]
     - Security code 2 
   * - timeout
     - setValue
     - integer
     - [0-1440]
     - | Time in minutes until controller automatically reverts to previous functional position.
       | 0=no automatic return
   * - intersection
     - setValue
     - integer
     - [0-255]
     - Intersection number

M0002
~~~~~

| Sets current time plan
| Requires security code 2

.. list-table:: Arguments
   :widths: auto
   :header-rows: 1

   * - Name
     - Command
     - Type
     - Value
     - Comment
   * - status
     - setPlan
     - boolean
     - - False
       - True
     - | False: Controller uses time plan according to programming
       | True: Contoller uses time plan according to command
   * - securityCode
     - setPlan
     - string
     - [text]
     - Security code 2
   * - timeplan
     - setPlan
     - integer
     - [1-255]
     - designation på time plan

M0003
~~~~~

| Sets traffic situation the controller uses.
| Requires security code 2

.. list-table:: Arguments
   :widths: auto
   :header-rows: 1

   * - Name
     - Command
     - Type
     - Value
     - Comment
   * - status
     - setTrafficSituation
     - boolean
     - - False
       - True
     - | False: Controller uses traffic situation according to own programming
       | True: Contoller uses traffic situation according to command
   * - securityCode
     - setTrafficSituation
     - string
     - [text]
     - Security code 2
   * - traficsituation
     - setTrafficSituation
     - integer
     - [1-255]
     - designation of traficsituation

M0004
~~~~~

| Restarts Traffic Light Controller
| Requires security code 2

.. list-table:: Arguments
   :widths: auto
   :header-rows: 1

   * - Name
     - Command
     - Type
     - Value
     - Comment
   * - status
     - setRestart
     - boolean
     - True
     - True: Restart controller
   * - securityCode
     - setRestart
     - string
     - [text]
     - Security code 2

M0005
~~~~~

| Activate emergency route
| Requires security code 2

.. list-table:: Arguments
   :widths: auto
   :header-rows: 1

   * - Name
     - Command
     - Type
     - Value
     - Comment
   * - status
     - setEmergency
     - boolean
     - - False
       - True
     - | False: Activate emergency route
       | True: Deactivate emergency route
   * - securityCode
     - setEmergency
     - string
     - [text]
     - Security code 2
   * - emergencyroute
     - setEmergency
     - integer
     - [1-255]
     - Number of emergency route

M0006
~~~~~

| Activate input
| Requires security code 2

.. list-table:: Arguments
   :widths: auto
   :header-rows: 1

   * - Name
     - Command
     - Type
     - Value
     - Comment
   * - status
     - setInput
     - boolean
     - - False
       - True
     - | False: Deactivate input
       | True: Activate input
   * - securityCode
     - setInput
     - string
     - [text]
     - Security code 2
   * - input
     - setInput
     - integer
     - [1-255]
     - Number of Input

M0007
~~~~~

| Activate fixed time control
| Requires security code 2

.. list-table:: Arguments
   :widths: auto
   :header-rows: 1

   * - Name
     - Command
     - Type
     - Value
     - Comment
   * - status
     - setFixedTime
     - boolean
     - - False
       - True
     - | False: Deactivate fixed time control
       | True: Activate fixed time control
   * - securityCode
     - setFixedTime
     - string
     - [text]
     - Security code 2

M0008
~~~~~

| Sets manual activation of detector logic.
| Requires security code 2

.. list-table:: Arguments
   :widths: auto
   :header-rows: 1

   * - Name
     - Command
     - Type
     - Value
     - Comment
   * - status
     - setForceDetectorLogic
     - boolean
     - - False
       - True
     - | False: Deactivate manual control of detector logic
       | True: Activate manual control of detector logic
   * - securityCode
     - setForceDetectorLogic
     - string
     - [text]
     - Security code 2
   * - mode
     - setForceDetectorLogic
     - boolean
     - - False
       - True
     - | False: Deactivate detector logic
       | True: Activate detector logic

M0010
~~~~~

Start of signal group. Orders a signal group to green. Requires security code 2

.. list-table:: Arguments
   :widths: auto
   :header-rows: 1

   * - Name
     - Command
     - Type
     - Value
     - Comment
   * - status
     - setStart
     - boolean
     - - False
       - True
     - | False: No command (default)
       | True: Order a signal group to green
   * - securityCode
     - setStart
     - string
     - [text]
     - Security code 2

M0011
~~~~~

Stop of signal group. Orders a signal group to red. Requires security code 2

.. list-table:: Arguments
   :widths: auto
   :header-rows: 1

   * - Name
     - Command
     - Type
     - Value
     - Comment
   * - status
     - setStop
     - boolean
     - - False
       - True
     - | False: No command (default)
       | True: Order a signal group to red
   * - securityCode
     - setStop
     - string
     - [text]
     - Security code 2

M0012
~~~~~

Request start or stop of a series of signal groups. Requires security code 2

.. list-table:: Arguments
   :widths: auto
   :header-rows: 1

   * - Name
     - Command
     - Type
     - Value
     - Comment
   * - status
     - setStart
     - string
     - [text]
     - | Orders signal groups to green or red. Sets a block of 16 signal groups at a time. Can be repeated to set several blocks of 16 signal groups. Values are separated with comma. Blocks are separated with semicolon. Since semicolon breaks the SXL csv-format, colon is used in example below.
       | 
       | 1=Order signal group to green
       | 0=Order signal group to red
       | 
       | Format: [Offset],[Bits to set],[Bits to unset]:…
       |  
       | Offset sets where the 16 inputs starts from followed by two 16 bit values telling which bit to set and unset in binary format, i.e. first bit have value 1 and last bit have value 32768. 
       |  
       | Example 1:
       | "5, 4134, 65" sets input 6,7,10,17 = on and 5,11 = off
       | (Input starts from no. 5 and bit 1,2,5,12 = 1 and bit 0,6 = 0)
       |  
       | Example 2:
       | "22, 1, 4" sets input 22 = on and 24 = off
       | (Input starts from no. 22 and bit 0 = 1 and bit 2 = 0)
       |  
       | And both thease examples could be sent in the same message as:
       | "5,4143,65:22,1,4"
       | 
       | Such a message would order signal group 6,7,10,17,22 to green and signal group 5,11,24 to red
   * - securityCode
     - setStart
     - string
     - [text]
     - Security code 2

M0013
~~~~~

| Activate a series of inputs
| Requires security code 2

.. list-table:: Arguments
   :widths: auto
   :header-rows: 1

   * - Name
     - Command
     - Type
     - Value
     - Comment
   * - status
     - setInput
     - string
     - [text]
     - | Sets/Unsets a block of 16 inputs at a time. Can be repeated to set several blocks of 16 inputs. Values are separated with comma. Blocks are separated with semicolon. Since semicolon breaks the SXL csv-format,  colon, ":" is used in example below.
       | 
       | Format: [Offset],[Bits to set],[Bits to unset]:…
       |  
       | Offset sets where the 16 inputs starts from followed by two 16 bit values telling which bit to set and unset in binary format, i.e. first bit have value 1 and last bit have value 32768. 
       |  
       | Example 1:
       | "5, 4134, 65" sets input 6,7,10,17 = on and 5,11 = off
       | (Input starts from no. 5 and bit 1,2,5,12 = 1 and bit 0,6 = 0)
       |  
       | Example 2:
       | "22, 1, 4" sets input 22 = on and 24 = off
       | (Input starts from no. 22 and bit 0 = 1 and bit 2 = 0)
       |  
       | And both thease examples could be sent in the same message as:
       | "5,4143:65:22,1,4"
       | 
       | Such a message would activate input 6,7,10,17,22 and deactive input 5,11,24
   * - securityCode
     - setInput
     - string
     - [text]
     - Security code 2

M0014
~~~~~

Set command table

.. list-table:: Arguments
   :widths: auto
   :header-rows: 1

   * - Name
     - Command
     - Type
     - Value
     - Comment
   * - plan
     - setCommands
     - integer
     - [0-255]
     - Plan to be changed
   * - status
     - setCommands
     - string
     - [text]
     - | Command table. Defines command, 
       | Each command are written as dd-ee where:
       | dd=Dynamic band number (from 1-10)
       | ee=Extension in seconds in this band
       | 
       | Each command is separated with a comma.
       | 
       | E.g. 
       | dd-ee,dd-ee
   * - securityCode
     - setCommands
     - string
     - [text]
     - Security code 2

M0015
~~~~~

Set Offset time

.. list-table:: Arguments
   :widths: auto
   :header-rows: 1

   * - Name
     - Command
     - Type
     - Value
     - Comment
   * - status
     - setOffset
     - integer
     - [0-255]
     - Set offset time in seconds
   * - plan
     - setOffset
     - integer
     - [0-255]
     - Time plan nr
   * - securityCode
     - setOffset
     - string
     - [text]
     - Security code 2

M0016
~~~~~

Set week time table

.. list-table:: Arguments
   :widths: auto
   :header-rows: 1

   * - Name
     - Command
     - Type
     - Value
     - Comment
   * - status
     - setWeekTable
     - string
     - [text]
     - | Week time table. Defines time table to use for each week day
       | Each segment is written as d-t where:
       | d=day of week
       | t=time table nr
       | 
       | Day of week legend:
       | 0=Monday
       | 1=Tuesday
       | 2=Wednesday
       | 3=Thursday
       | 4=Friday
       | 5=Saturday
       | 6=Sunday
       | 
       | Each segment is separated with a comma
       | 
       | E.g.
       | d-t,d-t
   * - securityCode
     - setWeekTable
     - string
     - [text]
     - Security code 2

M0017
~~~~~

Set time tables

.. list-table:: Arguments
   :widths: auto
   :header-rows: 1

   * - Name
     - Command
     - Type
     - Value
     - Comment
   * - status
     - setTimeTable
     - string
     - [text]
     - | Time Table. Defines time tables.
       | Each time definition is written as t-o-h-m where:
       | t=time table nr (1-12)
       | o=function
       | h=hour - switching time
       | m=minute - switching minute
       | 
       | Function legend:
       | 0=no plan is selected by time table
       | 1=set plan 1
       | …
       | 16= set plan 16
       | 
       | hour and minute is using local time (not UTC)
       | 
       | Each time definition is separated with a comma.
       | 
       | E.g.
       | t-o-h-m,t-o-h-m
       | 
   * - securityCode
     - setTimeTable
     - string
     - [text]
     - Security code 2

M0018
~~~~~

Set Cycle time

.. list-table:: Arguments
   :widths: auto
   :header-rows: 1

   * - Name
     - Command
     - Type
     - Value
     - Comment
   * - status
     - setCycleTime
     - integer
     - [1-255]
     - Set cycle time in seconds
   * - plan
     - setCycleTime
     - integer
     - [0-255]
     - Time plan nr
   * - securityCode
     - setCycleTime
     - string
     - [text]
     - Security code 2

M0019
~~~~~

| Force input
| Requires security code 2

.. list-table:: Arguments
   :widths: auto
   :header-rows: 1

   * - Name
     - Command
     - Type
     - Value
     - Comment
   * - status
     - setInput
     - boolean
     - - False
       - True
     - | False: Force input
       | True: Release input
   * - securityCode
     - setInput
     - string
     - [text]
     - Security code 2
   * - input
     - setInput
     - integer
     - [1-255]
     - Number of Input
   * - inputValue
     - setInput
     - boolean
     - - False
       - True
     - | False: input forced to False
       | True: input forced to True

M0020
~~~~~

| Force output
| Requires security code 2

.. list-table:: Arguments
   :widths: auto
   :header-rows: 1

   * - Name
     - Command
     - Type
     - Value
     - Comment
   * - status
     - setOutput
     - boolean
     - - False
       - True
     - | False: Force output
       | True: Release output
   * - securityCode
     - setInput
     - string
     - [text]
     - Security code 2
   * - output
     - setOutput
     - integer
     - [1-255]
     - Number of Output
   * - outputValue
     - setOutput
     - boolean
     - - False
       - True
     - | False: output forced to False
       | True: output forced to True

M0021
~~~~~

| Set trigger level sensitivity for loop detector
| Requires security code 2

.. list-table:: Arguments
   :widths: auto
   :header-rows: 1

   * - Name
     - Command
     - Type
     - Value
     - Comment
   * - status
     - setLevel
     - string
     - [text]
     - | Loop detector trigger level sensitivity is written as dd-ss where:
       | dd=loop detector number
       | ss=sensitivity value
   * - securityCode
     - setInput
     - string
     - [text]
     - Security code 2

M0103
~~~~~

Set security code

.. list-table:: Arguments
   :widths: auto
   :header-rows: 1

   * - Name
     - Command
     - Type
     - Value
     - Comment
   * - status
     - setSecurityCode
     - string
     - - Level1
       - Level2
     - | Level1: Change security code 1
       | Level2: Change security code 2
   * - oldSecurityCode
     - setSecurityCode
     - string
     - [text]
     - Previous security code
   * - newSecurityCode
     - setSecurityCode
     - string
     - [text]
     - New security code

M0104
~~~~~

Set clock

.. list-table:: Arguments
   :widths: auto
   :header-rows: 1

   * - Name
     - Command
     - Type
     - Value
     - Comment
   * - securityCode
     - setDate
     - string
     - [text]
     - Security code 1
   * - year
     - setDate
     - integer
     - [YYYY]
     - | Changes internal clock. Note: UTC is used
       | Year according to YYYY
   * - month
     - setDate
     - integer
     - [MM]
     - | Changes internal clock. Note: UTC is used
       | Month according to MM (01-12)
   * - day
     - setDate
     - integer
     - [DD]
     - | Changes internal clock. Note: UTC is used
       | Day in month according to DD (01-31)
   * - hour
     - setDate
     - integer
     - [HH]
     - | Changes internal clock. Note: UTC is used
       | Hour according to HH (00-23)
   * - minute
     - setDate
     - integer
     - [MM]
     - | Changes internal clock. Note: UTC is used
       | Minute according to MM (00-23)
   * - second
     - setDate
     - integer
     - [SS]
     - | Changes internal clock. Note: UTC is used
       | Second according to SS (00-59)

