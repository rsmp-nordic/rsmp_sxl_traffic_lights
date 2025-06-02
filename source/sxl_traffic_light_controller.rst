Signal Exchange List
====================

Object Types
------------

Grouped objects
^^^^^^^^^^^^^^^

.. tabularcolumns:: |\Yl{0.30}|\Yl{0.50}|

.. table:: Grouped objects
   :class: longtable


   ========================  =============
   ObjectType                Description
   ========================  =============
   Traffic Light Controller
   ========================  =============


Single objects
^^^^^^^^^^^^^^

.. tabularcolumns:: |\Yl{0.30}|\Yl{0.50}|

.. table:: Single objects
   :class: longtable


   ==============  =============
   ObjectType      Description
   ==============  =============
   Signal group
   Detector logic
   ==============  =============


Aggregated status
-----------------

.. tabularcolumns:: |\Yl{0.20}|\Yl{0.20}|\Yl{0.20}|\Yl{0.40}|

.. table:: Aggregated status
   :class: longtable


   ========================  ====================  =================  ==============================================
   ObjectType                functionalPosition    functionalState    Description
   ========================  ====================  =================  ==============================================
   Traffic Light Controller                                           functionalPosition not used (set to null) |br|
                                                                      functionalState not used (set to null)
   ========================  ====================  =================  ==============================================


.. tabularcolumns:: |\Yl{0.10}|\Yl{0.30}|\Yl{0.60}|

.. table:: State bits
   :class: longtable


   ===========  =====================  ===========================================================================================================================
     State-Bit  Description            Comment
   ===========  =====================  ===========================================================================================================================
             1  Local mode             Traffic Light Controller is in local mode. NTS has no control.
             2  No Communications      Not used
             3  High Priority Fault    Traffic Light Controller is in fail safe mode; e.g. yellow flash or dark mode
             4  Medium Priority Fault  Traffic Light Controller has a medium priority fault, but not in fail safe mode. E.g. several lamp faults or detector fault
             5  Low Priority Fault     Traffic Light Controller has a low priority fault. E.g. Detector fault
             6  Connected - In Use     Traffic Light Controller is not in dark mode or in yellow flash
             7  Connected - Idle       Traffic Light Controller is in dark mode or in yellow flash
             8  Not Connected          Not used
   ===========  =====================  ===========================================================================================================================


Alarms
------

.. tabularcolumns:: |\Yl{0.20}|\Yl{0.10}|\Yl{0.50}|\Yl{0.10}|\Yl{0.10}|

.. table:: Alarms
   :class: longtable


   ========================  =============  ====================================  ==========  ==========
   ObjectType                alarmCodeId    Description                             Priority  Category
   ========================  =============  ====================================  ==========  ==========
   Traffic Light Controller  `A0001`_       Serious hardware error                         2  D
   Traffic Light Controller  `A0002`_       Less serious hardware error                    3  D
   Traffic Light Controller  `A0003`_       Serious configuration error                    2  D
   Traffic Light Controller  `A0004`_       Less serious configuration error               3  D
   Traffic Light Controller  `A0005`_       Synchronisation error (coordination)           3  D
   Traffic Light Controller  `A0006`_       Safety error                                   2  D
   Traffic Light Controller  `A0007`_       Communication error                            3  D
   Signal group              `A0008`_       Dead lock error                                2  D
   Traffic Light Controller  `A0009`_       Other error                                    3  D
   Traffic Light Controller  `A0010`_       Door open                                      3  D
   Signal group              `A0101`_       Pushbutton error                               3  D
   Signal group              `A0201`_       Serious lamp error                             2  D
   Signal group              `A0202`_       Less serious lamp error                        3  D
   Detector logic            `A0301`_       Detector error (hardware)                      3  D
   Detector logic            `A0302`_       Detector error (logic error)                   3  D
   Detector logic            `A0303`_       Serious detector error (hardware)              2  D
   Detector logic            `A0304`_       Serious detector error (logic error)           2  D
   ========================  =============  ====================================  ==========  ==========


A0001
^^^^^

Serious hardware error

Is a “major fault” defined according to 3.8 i EN12675 which causes the
controller to switch to a “failure mode” according to 3.6 in EN12675.



A0002
^^^^^

Less serious hardware error

Is a “minor fault” defined according to 3.11 in EN12675.



A0003
^^^^^

Serious configuration error

Is a “major fault” defined according to 3.8 in EN12675 which causes the
controller to switch to a “failure mode” according to 3.6 in EN12675.



A0004
^^^^^

Less serious configuration error

Is a “minor fault” defined according to 3.11 in EN12675.



A0005
^^^^^

Synchronisation error (coordination)

Is a “minor fault” defined according to 3.11 in EN12675.



A0006
^^^^^

Safety error

Is a “major fault” defined according to 3.8 in EN12675 which causes the
controller to switch to a “failure mode” according to 3.6 in EN12675.



A0007
^^^^^

Communication error

Used for communication errors with the central system. Includes NTP
connection loss if the TLC is configured to use NTP. Is a “minor fault”
defined according to 3.11 in EN12675.


**Return values**

protocol

    Type of communication error, e.g. NTP or RSMP

    ====  ==========
    type  ``string``
    ====  ==========

    ======  =============
    Enum    Description
    ======  =============
    rsmp    RSMP
    ntp     NTP
    ======  =============

A0008
^^^^^

Dead lock error

Used for dead lock errors. For instance; a signal group has requested
green but is unable to switch due to a conflicting signal group for an
extended period of time. At some point the request times out and the
controller goes failure mode. The cause for this error is due to
configuration errors or external sources. Is a “major fault” defined
according to 3.8 in EN12675 which causes the controller to switch to a
“failure mode” according to 3.6 in EN12675.


**Return values**

timeplan

    Current time plan

    ====  =====================
    type  ``integer_as_string``
    max   ``255``
    min   ``1``
    ====  =====================

A0009
^^^^^

Other error

Used for other errors not covered by any other alarm type. Is a “minor
fault” defined according to 3.11 in EN12675.



A0010
^^^^^

Door open

Used for open door (room or cabinet).



A0101
^^^^^

Pushbutton error

Used for push buttons.



A0201
^^^^^

Serious lamp error

Used for lamp errors. Is a “major fault” defined according to 3.8 in
EN12675 which causes the controller to switch to a “failure mode”
according to 3.6 in EN12675.


**Return values**

color

    Color of lamp

    ====  ==========
    type  ``string``
    ====  ==========

    ======  =============
    Enum    Description
    ======  =============
    red     red
    yellow  yellow
    green   green
    ======  =============

A0202
^^^^^

Less serious lamp error

Used for lamp errors. Is a “minor fault” defined according to 3.11 in
EN12675.


**Return values**

color

    Color of lamp

    ====  ==========
    type  ``string``
    ====  ==========

    ======  =============
    Enum    Description
    ======  =============
    red     red
    yellow  yellow
    green   green
    ======  =============

A0301
^^^^^

Detector error (hardware)

Is a “minor fault” defined according to 3.11 in EN12675.


**Return values**

detector

    Designation of the detector (hardware)

    ====  ==========
    type  ``string``
    ====  ==========

type

    Type of detector

    ====  ==========
    type  ``string``
    ====  ==========

    ======  =======================
    Enum    Description
    ======  =======================
    loop    Inductive detector loop
    input   External input
    ======  =======================

errormode

    Detector forced on/off while detector error

    ====  ==========
    type  ``string``
    ====  ==========

    ======  =============
    Enum    Description
    ======  =============
    on
    off
    ======  =============

manual

    Manually controlled detector logic (True/False)

    ====  =====================
    type  ``boolean_as_string``
    ====  =====================

A0302
^^^^^

Detector error (logic error)

For instance; detector continuously on or off during an extended time.
Is a “minor fault” defined according to 3.11 in EN12675.


**Return values**

detector

    Designation of the detector (hardware)

    ====  ==========
    type  ``string``
    ====  ==========

type

    Type of detector

    ====  ==========
    type  ``string``
    ====  ==========

    ======  =======================
    Enum    Description
    ======  =======================
    loop    Inductive detector loop
    input   External input
    ======  =======================

errormode

    Detector forced on/off while detector error

    ====  ==========
    type  ``string``
    ====  ==========

    ======  =============
    Enum    Description
    ======  =============
    on
    off
    ======  =============

manual

    Manually controlled detector logic (True/False)

    ====  =====================
    type  ``boolean_as_string``
    ====  =====================

logicerror

    Type of logic error

    ====  ==========
    type  ``string``
    ====  ==========

    ============  ==================================================
    Enum          Description
    ============  ==================================================
    always_off    no detection during predefined max time
    always_on     detection constantly on during predefined max time
    intermittent  intermittent logic fault (flutter)
    ============  ==================================================

A0303
^^^^^

Serious detector error (hardware)

Is a “major fault” defined according to 3.8 i EN12675 which causes the
controller to switch to a “failure mode” according to 3.6 in EN12675.


**Return values**

detector

    Designation of the detector (hardware)

    ====  ==========
    type  ``string``
    ====  ==========

type

    Type of detector

    ====  ==========
    type  ``string``
    ====  ==========

    ======  =======================
    Enum    Description
    ======  =======================
    loop    Inductive detector loop
    input   External input
    ======  =======================

errormode

    Detector forced on/off while detector error

    ====  ==========
    type  ``string``
    ====  ==========

    ======  =============
    Enum    Description
    ======  =============
    on
    off
    ======  =============

manual

    Manually controlled detector logic (True/False)

    ====  =====================
    type  ``boolean_as_string``
    ====  =====================

A0304
^^^^^

Serious detector error (logic error)

For instance; detector continuously on or off during an extended time.
Is a “major fault” defined according to 3.8 i EN12675 which causes the
controller to switch to a “failure mode” according to 3.6 in EN12675


**Return values**

detector

    Designation of the detector (hardware)

    ====  ==========
    type  ``string``
    ====  ==========

type

    Type of detector

    ====  ==========
    type  ``string``
    ====  ==========

    ======  =======================
    Enum    Description
    ======  =======================
    loop    Inductive detector loop
    input   External input
    ======  =======================

errormode

    Detector forced on/off while detector error

    ====  ==========
    type  ``string``
    ====  ==========

    ======  =============
    Enum    Description
    ======  =============
    on
    off
    ======  =============

manual

    Manually controlled detector logic (True/False)

    ====  =====================
    type  ``boolean_as_string``
    ====  =====================

logicerror

    Type of logic error

    ====  ==========
    type  ``string``
    ====  ==========

    ============  ==================================================
    Enum          Description
    ============  ==================================================
    always_off    no detection during predefined max time
    always_on     detection constantly on during predefined max time
    intermittent  intermittent logic fault (flutter)
    ============  ==================================================

Status
------

.. raw:: latex

    \newpage


.. tabularcolumns:: |\Yl{0.30}|\Yl{0.10}|\Yl{0.60}|

.. table:: Status
   :class: longtable


   ========================  ==============  ============================================================
   ObjectType                statusCodeId    Description
   ========================  ==============  ============================================================
   Traffic Light Controller  `S0001`_        Signal group status
   Traffic Light Controller  `S0002`_        Detector logic status
   Traffic Light Controller  `S0003`_        Input status
   Traffic Light Controller  `S0004`_        Output status
   Traffic Light Controller  `S0005`_        Traffic Light Controller starting
   Traffic Light Controller  `S0006`_        Emergency route
   Traffic Light Controller  `S0007`_        Controller switched on
   Traffic Light Controller  `S0008`_        Manual control
   Traffic Light Controller  `S0009`_        Fixed time control
   Traffic Light Controller  `S0010`_        Isolated control
   Traffic Light Controller  `S0011`_        Yellow flash
   Traffic Light Controller  `S0012`_        All red
   Traffic Light Controller  `S0013`_        Police key
   Traffic Light Controller  `S0014`_        Current time plan
   Traffic Light Controller  `S0015`_        Current traffic situation
   Traffic Light Controller  `S0016`_        Number of detector logics
   Traffic Light Controller  `S0017`_        Number of signal groups
   Traffic Light Controller  `S0019`_        Number of traffic situations
   Traffic Light Controller  `S0020`_        Control mode
   Traffic Light Controller  `S0021`_        Manually set detector logic
   Traffic Light Controller  `S0022`_        List of time plans
   Traffic Light Controller  `S0023`_        Dynamic bands
   Traffic Light Controller  `S0024`_        Offset time
   Signal group              `S0025`_        Time-of-Green / Time-of-Red
   Traffic Light Controller  `S0026`_        Week time table
   Traffic Light Controller  `S0027`_        Time tables
   Traffic Light Controller  `S0028`_        Cycle time
   Traffic Light Controller  `S0029`_        Forced input status
   Traffic Light Controller  `S0030`_        Forced output status
   Traffic Light Controller  `S0031`_        Trigger level sensitivity for loop detector
   Traffic Light Controller  `S0032`_        Coordinated control
   Traffic Light Controller  `S0033`_        Signal Priority Status
   Traffic Light Controller  `S0034`_        Timeout for dynamic bands
   Traffic Light Controller  `S0035`_        Emergency route
   Traffic Light Controller  `S0091`_        Operator logged in/out OP-panel
   Traffic Light Controller  `S0092`_        Operator logged in/out web-interface
   Traffic Light Controller  `S0095`_        Version of Traffic Light Controller
   Traffic Light Controller  `S0096`_        Current date and time
   Traffic Light Controller  `S0097`_        Checksum of traffic parameters
   Traffic Light Controller  `S0098`_        Configuration of traffic parameters
   Detector logic            `S0201`_        Traffic Counting: Number of vehicles
   Detector logic            `S0202`_        Traffic Counting: Vehicle speed
   Detector logic            `S0203`_        Traffic Counting: Occupancy
   Detector logic            `S0204`_        Traffic Counting: Number of vehicles of given classification
   Traffic Light Controller  `S0205`_        Traffic Counting: Number of vehicles
   Traffic Light Controller  `S0206`_        Traffic Counting: Vehicle speed
   Traffic Light Controller  `S0207`_        Traffic Counting: Occupancy
   Traffic Light Controller  `S0208`_        Traffic Counting: Number of vehicles of given classification
   ========================  ==============  ============================================================


S0001
^^^^^^^^

Signal group status

Provides the status of each signal group, including basic information
such as green, yellow and red. But also detailed technical information.
Can be used to draw a live signal group diagram as well provide
diagnostic information about the performance of the controller.


**Return values**

signalgroupstatus

    Signal group status as text field |br|
    Each character represent the state of the signal group in consecutive order, |br|
    where the leftmost character starts with signal group 1. |br|
    Signal group status is described in detail in the corresponding section. |br|
    - : Signal group is undefined/does not exist

    ====  ==========
    type  ``string``
    ====  ==========

cyclecounter

    Cycle counter |br|
    Used for handling of coordination between TLC’s. |br|
    Is counted from 0 until it reaches the cycle time (See S0028). |br|
    |br|
    c = (b + o) mod t |br|
    |br|
    where c = cycle counter, |br|
    b = base cycle counter, |br|
    o = offset, |br|
    t = cycle time, |br|
    mod = modulo |br|
    |br|
    See the coordination section for more information.

    ====  =====================
    type  ``integer_as_string``
    max   ``999``
    min   ``0``
    ====  =====================

basecyclecounter

    Base cycle counter |br|
    Used for handling of coordination between TLC’s. |br|
    Synchronized between all TLC’s in an active coordination. |br|
    See the coordination section for more information.

    ====  =====================
    type  ``integer_as_string``
    max   ``999``
    min   ``0``
    ====  =====================

stage

    Current stage (isolated)

    ====  =====================
    type  ``integer_as_string``
    max   ``999``
    min   ``0``
    ====  =====================

S0002
^^^^^^^^

Detector logic status

Provides the status of all detector logics of the controller. Can be
used to draw a live signal group diagram as well provide diagnostic
information about the performance of the controller. Can also be used
for bus priority, external control systems, and much more.


**Return values**

detectorlogicstatus

    Detector logic status as text field |br|
    Each character represent the state of the detector logic in consecutive order, |br|
    where the leftmost character starts with detector logic 1. |br|
    0 : Detector logic is not active |br|
    1 : Detector logic is active |br|
    - : Detector logic is undefined/does not exist

    ====  =========================
    type  ``string_list_as_string``
    ====  =========================

S0003
^^^^^^^^

Input status

Input (1-255) of the controllers general purpose I/O. Input is used
where the traffic light controller must react to external control. It
could be external detectors, bus priority, and much more.


**Return values**

inputstatus

    Input status as text field |br|
    Each character represent the state of the input in consecutive order, |br|
    where the leftmost character starts with input 1. |br|
    0 : Input is not active |br|
    1 : Input is active |br|
    - : Input is undefined/does not exist

    ====  =========================
    type  ``string_list_as_string``
    ====  =========================

S0004
^^^^^^^^

Output status

Output (1-255) of the controllers general purpose I/O. Can be used for
all types of output where the traffic light controller needs to control
other equipment. Can be used for bus priority, coordination between
traffic controllers, external control systems, and much more.


**Return values**

outputstatus

    Output status as text field |br|
    Each character represent the state of the output status in consecutive order, |br|
    where the leftmost character starts with output 1. |br|
    0 : Output is not active |br|
    1 : Output is active |br|
    - : Output is undefined/does not exist

    ====  ==========
    type  ``string``
    ====  ==========

S0005
^^^^^^^^

Traffic Light Controller starting

The traffic signal is starting, e.g. it is in startup mode and has not
begun working normally yet. During startup mode the traffic controller
shows dark, red, yellow flash or using the predetermined start cycle
(minimum times).


**Return values**

status

    False: Controller is not in start up mode |br|
    True: Controller is currently in start up mode

    ====  =====================
    type  ``boolean_as_string``
    ====  =====================

statusByIntersection

    False: Intersection is not in start up mode |br|
    True: Intersection is currently in start up mode

    ====  =========
    type  ``array``
    ====  =========

    ============  ===============
    Name          Description
    ============  ===============
    intersection  Intersection id
    startup       Start up mode
    ============  ===============

statusByIntersection: intersection

    Intersection id

    ====  =====================
    type  ``integer_as_string``
    max   ``255``
    min   ``0``
    ====  =====================

statusByIntersection: startup

    Start up mode

    ====  =====================
    type  ``boolean_as_string``
    ====  =====================

S0006
^^^^^^^^

Emergency route

The status is active during emergency prioritization. Used in situations
where full priority is given in the emergency vehicle program or for
other types of priority in some cases.

If no emergency route is active, status should be set to False, and
emergencystage to zero.

Deprecated, use S0035 instead.


**Return values**

status

    ``Deprecated`` False: Emergency route inactive |br|
    True: Emergency route active

    ====  =====================
    type  ``boolean_as_string``
    ====  =====================

emergencystage

    ``Deprecated`` Number of emergency route (set to zero if no route is active)

    ====  =====================
    type  ``integer_as_string``
    max   ``255``
    min   ``0``
    ====  =====================

S0007
^^^^^^^^

Controller switched on

The controller is active and is not in dark mode. Used to determine if
the there is output to the signal heads, e.g. it shows red, green or
yellow to the vehicles. During maintenance work the controller might be
using dark mode (no output to the signal heads). Please note that all
values in this status uses comma-separated lists - one value for each
intersection, e.g. “0” and “True” (one intersection) or “1,2” and
“True,False” (two intersections).


**Return values**

intersection

    Comma separated list of intersections which the status relates to, e.g. “1,2” |br|
    Use “0” for all intersections of the TLC.

    ====  ==========================
    type  ``integer_as_string_list``
    ====  ==========================

status

    False: Traffic Light Controller in dark mode |br|
    True: Traffic Light Controller not in dark mode

    ====  ==========================
    type  ``boolean_as_string_list``
    ====  ==========================

source

    Source of the status change

    ====  =========================
    type  ``string_list_as_string``
    ====  =========================

    ==============  ==============================================
    Enum            Description
    ==============  ==============================================
    operator_panel  Operator panel
    calendar_clock  Calendar/clock
    control_block   Control block
    forced          Forced due to external command e.g. supervisor
    startup         Set after startup mode
    other           Other reason
    ==============  ==============================================

S0008
^^^^^^^^

Manual control

Traffic control deactivated in controller. Signal timings is controlled
manually by service personnel using the operating panel of the
controller. Please note that all values in this status uses
comma-separated lists - one value for each intersection, e.g. “0” and
“True” (one intersection) or “1,2” and “True,False” (two intersections).


**Return values**

intersection

    Comma separated list of intersections which the status relates to, e.g. “1,2” |br|
    Use “0” for all intersections of the TLC.

    ====  ==========================
    type  ``integer_as_string_list``
    ====  ==========================

status

    False: Manual control inactive |br|
    True: Manual control active

    ====  ==========================
    type  ``boolean_as_string_list``
    ====  ==========================

source

    Source of the status change

    ====  =========================
    type  ``string_list_as_string``
    ====  =========================

    ==============  ==============================================
    Enum            Description
    ==============  ==============================================
    operator_panel  Operator panel
    calendar_clock  Calendar/clock
    control_block   Control block
    forced          Forced due to external command e.g. supervisor
    startup         Set after startup mode
    other           Other reason
    ==============  ==============================================

S0009
^^^^^^^^

Fixed time control

Traffic actuated control deactivated and a pre-timed control is used.
Usually only used in case normal detectors can’t be used, e.g. during
maintenance work. Please note that all values in this status uses
comma-separated lists - one value for each intersection, e.g. “0” and
“True” (one intersection) or “1,2” and “True,False” (two intersections).


**Return values**

intersection

    Comma separated list of intersections which the status relates to, e.g. “1,2” |br|
    Use “0” for all intersections of the TLC.

    ====  ==========================
    type  ``integer_as_string_list``
    ====  ==========================

status

    False: Fixed time control inactive |br|
    True: Fixed time control active

    ====  ==========================
    type  ``boolean_as_string_list``
    ====  ==========================

source

    Source of the status change

    ====  =========================
    type  ``string_list_as_string``
    ====  =========================

    ==============  ==============================================
    Enum            Description
    ==============  ==============================================
    operator_panel  Operator panel
    calendar_clock  Calendar/clock
    control_block   Control block
    forced          Forced due to external command e.g. supervisor
    startup         Set after startup mode
    other           Other reason
    ==============  ==============================================

S0010
^^^^^^^^

Isolated control

Isolated control mode indicates that the controller operates
independently of any other traffic light controller. This may be
different depending on traffic program (time plan). Used to determine if
the controller is operating independently or operating with other
controllers (coordination). Please note that all values in this status
uses comma-separated lists - one value for each intersection, e.g. “0”
and “True” (one intersection) or “1,2” and “True,False” (two
intersections).


**Return values**

intersection

    Comma separated list of intersections which the status relates to, e.g. “1,2” |br|
    Use “0” for all intersections of the TLC.

    ====  ==========================
    type  ``integer_as_string_list``
    ====  ==========================

status

    False: Isolated control disabled |br|
    True: Isolated control enabled (Vehicle actuated control or Fixed time control)

    ====  ==========================
    type  ``boolean_as_string_list``
    ====  ==========================

source

    Source of the status change

    ====  =========================
    type  ``string_list_as_string``
    ====  =========================

    ==============  ==============================================
    Enum            Description
    ==============  ==============================================
    operator_panel  Operator panel
    calendar_clock  Calendar/clock
    control_block   Control block
    forced          Forced due to external command e.g. supervisor
    startup         Set after startup mode
    other           Other reason
    ==============  ==============================================

S0011
^^^^^^^^

Yellow flash

The controller shows yellow flash. Yellow flash may be used during a
serious fault (depending on configuration) or maintenance work. It can
also be manually set using M0001. Some countries may use yellow flash as
an normal operating mode, and not necessarily during fault. Please note
that all values in this status uses comma-separated lists - one value
for each intersection, e.g. “1,2” and “True,False”


**Return values**

intersection

    Comma separated list of intersections which the status relates to, e.g. “1,2” |br|
    Use “0” for all intersections of the TLC.

    ====  ==========================
    type  ``integer_as_string_list``
    ====  ==========================

status

    False: Yellow flash disabled |br|
    True: Yellow flash enabled

    ====  ==========================
    type  ``boolean_as_string_list``
    ====  ==========================

source

    Source of the status change

    ====  =========================
    type  ``string_list_as_string``
    ====  =========================

    ==============  ==============================================
    Enum            Description
    ==============  ==============================================
    operator_panel  Operator panel
    calendar_clock  Calendar/clock
    control_block   Control block
    forced          Forced due to external command e.g. supervisor
    startup         Set after startup mode
    other           Other reason
    ==============  ==============================================

S0012
^^^^^^^^

All red

The controller show all red. All red can be manually set using the
controllers operating panel during maintenance work. Please note that
all values in this status uses comma-separated lists - one value for
each intersection, e.g. “1,2” and “True,False”


**Return values**

intersection

    Comma separated list of intersections which the status relates to, e.g. “1,2” |br|
    Use “0” for all intersections of the TLC.

    ====  ==========================
    type  ``integer_as_string_list``
    ====  ==========================

status

    False: All red disabled |br|
    True: All red enabled

    ====  ==========================
    type  ``boolean_as_string_list``
    ====  ==========================

source

    Source of the status change

    ====  =========================
    type  ``string_list_as_string``
    ====  =========================

    ==============  ==============================================
    Enum            Description
    ==============  ==============================================
    operator_panel  Operator panel
    calendar_clock  Calendar/clock
    control_block   Control block
    forced          Forced due to external command e.g. supervisor
    startup         Set after startup mode
    other           Other reason
    ==============  ==============================================

S0013
^^^^^^^^

Police key

The controller is forced to dark mode or yellow flash. The “police key”
is a external control switch present in some controllers that manually
switches the controller to either dark mode or yellow flash. Please note
that all values in this status uses comma-separated lists - one value
for each intersection, e.g. “1,2” and “0,1”


**Return values**

intersection

    Comma separated list of intersections which the status relates to, e.g. “1,2” |br|
    Use “0” for all intersections of the TLC.

    ====  ==========================
    type  ``integer_as_string_list``
    ====  ==========================

status


    ====  ==========================
    type  ``integer_as_string_list``
    ====  ==========================

    ======  =============
      Enum  Description
    ======  =============
         0  disabled
         1  dark mode
         2  yellow flash
         3  all red
    ======  =============

S0014
^^^^^^^^

Current time plan

The current time plan (signal program) used in the controller. There may
be 1-255 predefined time plans. The time plan (signal program) may
change signal timings, cycle time, control strategy and much more.
Typical usage is is scenario based control where change of program is
used to change priority etc.


**Return values**

status

    Current time plan

    ====  =====================
    type  ``integer_as_string``
    max   ``255``
    min   ``1``
    ====  =====================

source

    Source of the status change

    ====  =========================
    type  ``string_list_as_string``
    ====  =========================

    ==============  ==============================================
    Enum            Description
    ==============  ==============================================
    operator_panel  Operator panel
    calendar_clock  Calendar/clock
    control_block   Control block
    forced          Forced due to external command e.g. supervisor
    startup         Set after startup mode
    other           Other reason
    ==============  ==============================================

S0015
^^^^^^^^

Current traffic situation

The current traffic situation used in the controller. Used for
area-based control where the M0003 command can be sent to a master
traffic light controller about which predefined traffic situation to use
(1-255). Traffic situation is a concept used to divide multiple TLC’s
into areas and sub-areas. The traffic situation gives the possibility to
change the TLC sub-area dynamically depending on the time of day and the
traffic flow. Depending on the traffic situation each TLC selects the
time plan dynamically.


**Return values**

status

    Current traffic situation

    ====  =====================
    type  ``integer_as_string``
    max   ``255``
    min   ``1``
    ====  =====================

source

    Source of the status change

    ====  =========================
    type  ``string_list_as_string``
    ====  =========================

    ==============  ==============================================
    Enum            Description
    ==============  ==============================================
    operator_panel  Operator panel
    calendar_clock  Calendar/clock
    control_block   Control block
    forced          Forced due to external command e.g. supervisor
    startup         Set after startup mode
    other           Other reason
    ==============  ==============================================

S0016
^^^^^^^^

Number of detector logics

Can be used by the management system to check the number of detector
logics configured in the controller.


**Return values**

number

    Number of detector logics

    ====  =====================
    type  ``integer_as_string``
    max   ``65025``
    min   ``1``
    ====  =====================

S0017
^^^^^^^^

Number of signal groups

Can be used for the management system to check the number of signal
groups configured in the controller.


**Return values**

number

    Number of signal groups

    ====  =====================
    type  ``integer_as_string``
    max   ``65025``
    min   ``1``
    ====  =====================

S0019
^^^^^^^^

Number of traffic situations

Can be used for the management system to check the number of traffic
situations configured in the controller.


**Return values**

number

    Number of traffic situations

    ====  =====================
    type  ``integer_as_string``
    max   ``65025``
    min   ``1``
    ====  =====================

S0020
^^^^^^^^

Control mode

Can be used for the management system to check the current control mode
(startup, normal, standby, failure, test). Please note that all values
in this status uses comma-separated lists - one value for each
intersection, e.g. “1,2” and “startup,control”


**Return values**

intersection

    Comma separated list of intersections which the status relates to, e.g. “1,2” |br|
    Use “0” for all intersections of the TLC.

    ====  ==========================
    type  ``integer_as_string_list``
    ====  ==========================

controlmode


    ====  =========================
    type  ``string_list_as_string``
    ====  =========================

    =======  =====================================================================================================================
    Enum     Description
    =======  =====================================================================================================================
    startup  The controller starts up, performs a power on self test and performs each :term:`start-up interval`
    control  Normal 3-light control
    standby  The controller is in dark or yellow flash mode (either according to programming or manually set)
    failure  The controller has a “major fault” defined according to 3.8 i EN12675. The controller is in dark or yellow flash mode
    test     Mode used for various tests, e.g. signal lights
    =======  =====================================================================================================================

S0021
^^^^^^^^

Manually set detector logic

Provides status of detector logic (1-255) regarding if they are either
forced to true or false. Can be used to connect RSMP compatible
detection equipment to the traffic light controller. Can also be used
for prioritization.


**Return values**

detectorlogics

    Manually set detector logic as text field |br|
    Each character represent the state in consecutive order, |br|
    where the leftmost character starts with detector logic 1. |br|
    0 : Detector logic not manually set |br|
    1 : Detector logic manually set |br|
    - : Detector logic is undefined/does not exist

    ====  ==========
    type  ``string``
    ====  ==========

S0022
^^^^^^^^

List of time plans

Provides a list of the configured time plans which is possible to use.
This status was added due to status S0018 only provided the total number
of time plans and not which were possible to use with M0002. Can be used
for the management system to check the number of time plans configured
in the controller.


**Return values**

status

    Comma separated list of configured time plans. E.g. "1,2,3,5"

    ====  ==========================
    type  ``integer_list_as_string``
    ====  ==========================

S0023
^^^^^^^^

Dynamic bands

Provides a list of all defined dynamic bands. Dynamic bands moves start
of signal groups in the cycle and changes the signal timings. A typical
usage of dynamic bands is scenario based control where changing of
signal timings is used for optimal traffic flow.


**Return values**

status

    Dynamic bands |br|
    Each dynamic band are written as pp-dd-ee where: |br|
    pp=Time plan |br|
    dd=Dynamic band number (from 1-10) |br|
    ee=Extension in seconds in this band |br|
    |br|
    Each dynamic band is separated with a comma. |br|
    |br|
    E.g. |br|
    pp-dd-ee,pp-dd-ee

    ====  ==========
    type  ``string``
    ====  ==========

S0024
^^^^^^^^

Offset time

Offset time is used to define an offset between intersections in
coordinated control. It is based on the expected travel time between
intersections. Can be used by the management system to check to fine
tune the coordination for optimal traffic flow.


**Return values**

status

    Offset table |br|
    Each offset time is written as p-t where: |br|
    p=time plan number (from 1 to 255) |br|
    t=offset time in seconds (from 0 to 255) |br|
    |br|
    Each offset time is separated with a comma |br|
    |br|
    E.g. |br|
    1-0,2-13-3-7

    ====  =========================
    type  ``string_list_as_string``
    ====  =========================

S0025
^^^^^^^^

Time-of-Green / Time-of-Red

Provides predicted signal timings of green and red for each signal
group. Max, min and likely time to green and red.


**Return values**

minToGEstimate

    Time stamp for the minimum time for the signal group to go to green. If the signal group is green, it is the minimum time for the next green

    ====  =============
    type  ``timestamp``
    ====  =============

maxToGEstimate

    Time stamp for the maximum time for the signal group to go to green. If the signal group is green, it is the maximum time for the next green

    ====  =============
    type  ``timestamp``
    ====  =============

likelyToGEstimate

    Time stamp for the most likely time for the signal group to go to green. If the signal group is green, it is the most likely time for the next green

    ====  =============
    type  ``timestamp``
    ====  =============

ToGConfidence

    Confidence of the likelyToGEstimate. 0-100%

    ====  =====================
    type  ``integer_as_string``
    max   ``100``
    min   ``0``
    ====  =====================

minToREstimate

    Time stamp for the minimum time for the signal group to go to red. If the signal group is red, it is the minimum time for the next red

    ====  =============
    type  ``timestamp``
    ====  =============

maxToREstimate

    Time stamp for the maximum time for the signal group to go to red. If the signal group is red, it is the maximum time for the next red

    ====  =============
    type  ``timestamp``
    ====  =============

likelyToREstimate

    Time stamp for the most likely time for the signal group to go to red. If the signal group is red, it is the most likely time for the next red

    ====  =============
    type  ``timestamp``
    ====  =============

ToRConfidence

    Confidence of the likelyToREstimate. 0-100%

    ====  =====================
    type  ``integer_as_string``
    max   ``100``
    min   ``0``
    ====  =====================

S0026
^^^^^^^^

Week time table

Week time table for signal programs (time plan) to use for each day
during a week. The week time table determine which predefined signal
timings (time plan) to use during the week for optimal traffic flow.


**Return values**

status

    Week time table. Defines time table to use for each week day |br|
    Each day is written as d-t where: |br|
    d=day of week |br|
    t=time table nr |br|
    |br|
    Day of week legend: |br|
    0=Monday |br|
    1=Tuesday |br|
    2=Wednesday |br|
    3=Thursday |br|
    4=Friday |br|
    5=Saturday |br|
    6=Sunday |br|
    |br|
    Each segment is separated with a comma |br|
    E.g. |br|
    d-t,d-t

    ====  =========================
    type  ``string_list_as_string``
    ====  =========================

S0027
^^^^^^^^

Time tables

Time of day for when to switch signal program (time plan). The signal
timings (time plan) to use during time of day for optimal traffic flow.


**Return values**

status

    Time Table. Defines time tables |br|
    Each time definition is written as t-o-h-m where: |br|
    t=time table nr (1-12) |br|
    o=function |br|
    h=hour - switching time |br|
    m=minute - switching minute |br|
    |br|
    Function legend: |br|
    0=no plan is selected by time table |br|
    1=set plan 1 |br|
    … |br|
    16= set plan 16 |br|
    |br|
    hour and minute is using local time (not UTC) |br|
    |br|
    Each time definition is separated with a comma |br|
    |br|
    E.g. |br|
    t-o-h-m,t-o-h-m

    ====  =========================
    type  ``string_list_as_string``
    ====  =========================

S0028
^^^^^^^^

Cycle time

Cycle time (or cycle length) is the sum of all phases in a time plan
(traffic program). This time is fixed when using fixed time control or
coordination (except “local coordination”). When the cycle counter
reaches this length it is reset back to zero. Changing the cycle time
can be used as part of scenario based control.


**Return values**

status

    Cycle time table |br|
    Each cycle time is written as pp-tt where: |br|
    pp=time plan |br|
    tt=cycle time in seconds |br|
    |br|
    Each cycle time is separated with a comma |br|
    |br|
    E.g. |br|
    pp-tt,pp-tt

    ====  =========================
    type  ``string_list_as_string``
    ====  =========================

S0029
^^^^^^^^

Forced input status

Provide status of input (1-255) regarding if they are forced or not. Can
be used for all types of input where the traffic light controller must
react to external control. Can be used for bus priority, coordination
between traffic controllers, external control systems, and much more.


**Return values**

status

    Forced input status as text field |br|
    Each character represent the state in consecutive order, |br|
    where the leftmost character starts with input 1. |br|
    0 : Input not forced |br|
    1 : Input forced |br|
    - : Input undefined/does not exist

    ====  ==========
    type  ``string``
    ====  ==========

S0030
^^^^^^^^

Forced output status

Provide status of output (1-255) regarding if they are forced or not.
Can be used for all types of output where the traffic light controller
needs to control other equipment. Can be used for bus priority,
coordination between traffic controllers, external control systems, and
much more.


**Return values**

status

    Forced output status as text field |br|
    Each character represent the state in consecutive order, |br|
    where the leftmost character starts with output 1. |br|
    0 : Output not forced |br|
    1 : Output forced |br|
    - : Output undefined/does not exist

    ====  ==========
    type  ``string``
    ====  ==========

S0031
^^^^^^^^

Trigger level sensitivity for loop detector

The trigger level sensitivity determines at what level the loop detector
should trigger. If it set too low then then traffic will not be detected
as intended. If it is set too high the detector might give false
positives. Can be used to make sure that the detectors detect traffic as
intended.


**Return values**

status

    Loop detector trigger level sensitivity is written as dd-ss where: |br|
    dd=loop detector number |br|
    ss=sensitivity value |br|
    Each loop detector is separated with a comma. E.g.dd-ss,dd-ss.

    ====  =========================
    type  ``string_list_as_string``
    ====  =========================

S0032
^^^^^^^^

Coordinated control

This status is used when coordination between traffic light controllers
is active. Coordination is described in detail in the corresponding
section Please note that all values in this status uses comma-separated
lists - one value for each intersection, e.g. “1,2” and
“centralized,off”


**Return values**

intersection

    Comma separated list of intersections which the status relates to, e.g. “1,2” |br|
    Use “0” for all intersections of the TLC.

    ====  ==========================
    type  ``integer_as_string_list``
    ====  ==========================

status


    ====  =========================
    type  ``string_list_as_string``
    ====  =========================

    ===========  ====================================
    Enum         Description
    ===========  ====================================
    local        Local coordination
    centralized  Coordination with synchronized clock
    off          Coordination not active
    ===========  ====================================

source

    Source of the status change

    ====  =========================
    type  ``string_list_as_string``
    ====  =========================

    ==============  ==============================================
    Enum            Description
    ==============  ==============================================
    operator_panel  Operator panel
    calendar_clock  Calendar/clock
    control_block   Control block
    forced          Forced due to external command e.g. supervisor
    startup         Set after startup mode
    other           Other reason
    ==============  ==============================================

S0033
^^^^^^^^

Signal Priority Status

This status can be used to get updates about priority requests. For
example, you can use it to know when priority requests are activated or
cancelled. A list of priorities is returned, referred to by their
request ids. The same request id can appear only once. All priorities
are included in the list (not only the ones that have changed state
since the last update). This is done regardless of whether the status is
send in respond to a status request, or due to a status subscription,
and also regardless of whether a status subscription uses an update
interval, or send-on-change, or both. If you subscribe using an update
interval, you’re not guaranteed to get all intermediate states. To
guarantee that, send-on-change must be used when subscribing. To
understand how this status relates to ETSI/J2735, please see the
`wiki <https://github.com/rsmp-nordic/rsmp_sxl_traffic_lights/wiki/Signal-priority-and-ETSI-J2735>`__.
All priorities are send on every status update, regardless of whether an
interval, or sendOnChange (or both) is used. When a priority reaches an
end states (completed, timeout, rejected, cooldown or stale), it must be
sent once on the next status update, then removed from the list. A
request always starts in the ‘received’ state. The following table shows
the possible state transitions:

========= =====================================
State     Possible next states
========= =====================================
received  queued, activated, rejected, cooldown
queued    activated, timeout
activated completed, stale
completed 
timeout   
rejected  
cooldown  
stale     
========= =====================================


**Return values**

status

    JSON array of priority status items

    ====  =========
    type  ``array``
    ====  =========

    ======  ==============================================================================
    Name    Description
    ======  ==============================================================================
    r       ID of the priority request
    t       Timestamp, indicating when the priority last changed state
    s       Current status of the priority request
    e       (Optional) Estimated green extension provided by the priority, in seconds |br|
            Only used when state is ‘completed’.
    d       (Optional) Estimated red reduction provided by the priority, in seconds |br|
            Only used when state is ‘completed’.
    ======  ==============================================================================

status: r

    ID of the priority request

    ====  ==========
    type  ``string``
    ====  ==========

status: t

    Timestamp, indicating when the priority last changed state

    ====  =============
    type  ``timestamp``
    ====  =============

status: s

    Current status of the priority request

    ====  ==========
    type  ``string``
    ====  ==========

    =========  =====================================================================================
    Enum       Description
    =========  =====================================================================================
    received   A new priority request was received but has not yet been processed
    queued     The priority request has been queued for later activation
    activated  The priority was activated
    completed  The priority was cancelled as expected
    timeout    The priority has been queued for too long
    rejected   The priority request cannot be granted
    cooldown   A similar priority request means the priority request cannot be activated now
    stale      The priority has been active too long without cancellation, and was therefore removed
    =========  =====================================================================================

status: e

    (Optional) Estimated green extension provided by the priority, in seconds |br|
    Only used when state is ‘completed’.

    ====  =====================
    type  ``integer_as_string``
    max   ``255``
    min   ``0``
    ====  =====================

status: d

    (Optional) Estimated red reduction provided by the priority, in seconds |br|
    Only used when state is ‘completed’.

    ====  =====================
    type  ``integer_as_string``
    max   ``255``
    min   ``0``
    ====  =====================

S0034
^^^^^^^^

Timeout for dynamic bands

Time until a designated time plan is entered due to lost connection with
the supervisor. Disabled if set to ‘0’. Used in conjunction with dynamic
bands, M0014


**Return values**

status

    Timeout, in minutes

    ====  =====================
    type  ``integer_as_string``
    max   ``65535``
    min   ``0``
    ====  =====================

S0035
^^^^^^^^

Emergency route

The status is active during emergency prioritization. Used in situations
where full priority is given in the emergency vehicle program or for
other types of priority in some cases.

This status is similar to S0006, but supports multiple routes


**Return values**

emergencyroutes

    Active emergency routes

    ====  =========
    type  ``array``
    ====  =========

    ======  ============================
    Name    Description
    ======  ============================
    id      ID of active emergency route
    ======  ============================

emergencyroutes: id

    ID of active emergency route

    ====  =====================
    type  ``integer_as_string``
    max   ``255``
    min   ``1``
    ====  =====================

S0091
^^^^^^^^

Operator logged in/out OP-panel

Provides information if maintenance personnel is currently working on
site.


**Return values**

user


    ====  =====================
    type  ``integer_as_string``
    ====  =====================

    ======  ==========================================
      Enum  Description
    ======  ==========================================
         0  Nobody logged in
         1  Operator logged in at level 1 (read only)
         2  Operator logged in at level 2 (read/write)
    ======  ==========================================

S0092
^^^^^^^^

Operator logged in/out web-interface

Provides information if maintenance personnel is currently working with
the controller.


**Return values**

user


    ====  =====================
    type  ``integer_as_string``
    ====  =====================

    ======  ==========================================
      Enum  Description
    ======  ==========================================
         0  Nobody logged in
         1  Operator logged in at level 1 (read only)
         2  Operator logged in at level 2 (read/write)
    ======  ==========================================

S0095
^^^^^^^^

Version of Traffic Light Controller

Provides diagnostic version information.


**Return values**

status

    Manufacturer, product name and version of traffic light controller

    ====  ==========
    type  ``string``
    ====  ==========

S0096
^^^^^^^^

Current date and time

Note: UTC is used. Provides diagnostic information about the current
date and time set in the controller.


**Return values**

year

    Year

    ====  =====================
    type  ``integer_as_string``
    max   ``9999``
    min   ``0``
    ====  =====================

month

    Month

    ====  =====================
    type  ``integer_as_string``
    max   ``12``
    min   ``1``
    ====  =====================

day

    Day of month

    ====  =====================
    type  ``integer_as_string``
    max   ``31``
    min   ``1``
    ====  =====================

hour

    Hour

    ====  =====================
    type  ``integer_as_string``
    max   ``23``
    min   ``0``
    ====  =====================

minute

    Minute

    ====  =====================
    type  ``integer_as_string``
    max   ``59``
    min   ``0``
    ====  =====================

second

    Second

    ====  =====================
    type  ``integer_as_string``
    max   ``59``
    min   ``0``
    ====  =====================

S0097
^^^^^^^^

Checksum of traffic parameters

Can be used to check if any traffic parameter has been changed. For
instance, depending on controller, maintenance personnel can modify
traffic parameters on site to optimize traffic flow. This status
provides the ability to monitor if any traffic parameter has been
changed. The traffic parameters may be downloaded with S0098.


**Return values**

checksum

    Checksum of the traffic parameters |br|
    Uses SHA-2 as hashing algorithm |br|
    Includes |br|
    - all signal programs, including program versions |br|
    - signal group settings |br|
    - time plans |br|
    - safety matrix |br|
    - intergreen times |br|
    - detector settings |br|
    |br|
    It should NOT include: |br|
    - network settings |br|
    - log files |br|
    - software |br|
    - other device settings that are not part of the signal program |br|
    |br|
    Note: |br|
    - The checksum should be calculated using the same data as used in S0098 |br|
    - Data Downloaded with S0098 and hashed with SHA-2 should match this value.

    ====  ==========
    type  ``string``
    ====  ==========

timestamp

    Time stamp of the checksum

    ====  =============
    type  ``timestamp``
    ====  =============

S0098
^^^^^^^^

Configuration of traffic parameters

Can be used to download all traffic parameters from the controller. For
instance, depending on controller, maintenance personnel can modify
traffic parameters on site to optimize traffic flow. This status
provides the ability to downloaded them.


**Return values**

config

    Traffic parameters |br|
    Includes |br|
    - all signal programs, including program versions |br|
    - signal group settings |br|
    - time plans |br|
    - safety matrix |br|
    - intergreen times |br|
    - detector setting |br|
    |br|
    It should NOT include: |br|
    - network settings |br|
    - log files |br|
    - software |br|
    - other device settings that are not part of the signal program |br|
    |br|
    Note: |br|
    - There is no way to upload this binary file to the TLC using RSMP |br|
    - The format of the binary file is not specified and is not expected to be compatible between suppliers

    ====  ==========
    type  ``base64``
    ====  ==========

timestamp

    Time stamp of the config

    ====  =============
    type  ``timestamp``
    ====  =============

version

    Version information of the configuration. Contains basic information such as controller id, changes to config and other information |br|
    The format is not specified in detail.

    ====  =========================
    type  ``string_list_as_string``
    ====  =========================

S0201
^^^^^^^^

Traffic Counting: Number of vehicles

Used for Traffic counting.


**Return values**

starttime

    Time stamp for start of measuring

    ====  =============
    type  ``timestamp``
    ====  =============

vehicles

    Number of vehicles on a given detector logic (since last update)

    ====  =====================
    type  ``integer_as_string``
    max   ``65535``
    min   ``0``
    ====  =====================

S0202
^^^^^^^^

Traffic Counting: Vehicle speed

Used for Traffic counting.


**Return values**

starttime

    Time stamp for start of measuring

    ====  =============
    type  ``timestamp``
    ====  =============

speed

    Average speed in km/h

    ====  =====================
    type  ``integer_as_string``
    max   ``65535``
    min   ``0``
    ====  =====================

S0203
^^^^^^^^

Traffic Counting: Occupancy

Used for Traffic counting.


**Return values**

starttime

    Time stamp for start of measuring

    ====  =============
    type  ``timestamp``
    ====  =============

occupancy

    Occupancy in percent (0-100%)

    ====  =====================
    type  ``integer_as_string``
    max   ``100``
    min   ``0``
    ====  =====================

S0204
^^^^^^^^

Traffic Counting: Number of vehicles of given classification

Used for Traffic counting.


**Return values**

starttime

    Time stamp for start of measuring

    ====  =============
    type  ``timestamp``
    ====  =============

P

    Number of cars

    ====  =====================
    type  ``integer_as_string``
    max   ``65535``
    min   ``0``
    ====  =====================

PS

    Number of cars with trailers

    ====  =====================
    type  ``integer_as_string``
    max   ``65535``
    min   ``0``
    ====  =====================

L

    Number of trucks

    ====  =====================
    type  ``integer_as_string``
    max   ``65535``
    min   ``0``
    ====  =====================

LS

    Number of trucks with trailers

    ====  =====================
    type  ``integer_as_string``
    max   ``65535``
    min   ``0``
    ====  =====================

B

    Number of buses

    ====  =====================
    type  ``integer_as_string``
    max   ``65535``
    min   ``0``
    ====  =====================

SP

    Number of trams

    ====  =====================
    type  ``integer_as_string``
    max   ``65535``
    min   ``0``
    ====  =====================

MC

    Number of motor cycles

    ====  =====================
    type  ``integer_as_string``
    max   ``65535``
    min   ``0``
    ====  =====================

C

    Number of bicycles

    ====  =====================
    type  ``integer_as_string``
    max   ``65535``
    min   ``0``
    ====  =====================

F

    Number of pedestrians

    ====  =====================
    type  ``integer_as_string``
    max   ``65535``
    min   ``0``
    ====  =====================

S0205
^^^^^^^^

Traffic Counting: Number of vehicles

This status was introduced to improve performance in case traffic
counting is done on all all detectors.


**Return values**

start

    Time stamp for start of measuring

    ====  =============
    type  ``timestamp``
    ====  =============

vehicles

    Number of vehicles |br|
    - Value expressed as an integer with a range of 0-65535. |br|
    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
    - The value is set to “-1” if no data could be measured (e.g. detector fault)

    ====  ==========================
    type  ``integer_as_string_list``
    ====  ==========================

S0206
^^^^^^^^

Traffic Counting: Vehicle speed

This status was introduced to improve performance in case traffic
counting is done on all all detectors.


**Return values**

start

    Time stamp for start of measuring

    ====  =============
    type  ``timestamp``
    ====  =============

speed

    Average speed in km/h (integer) |br|
    - Value expressed as an integer with a range of 0-65535. |br|
    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
    - The value is set to “-1” if no data could be measured (e.g. detector fault)

    ====  ==========================
    type  ``integer_as_string_list``
    ====  ==========================

S0207
^^^^^^^^

Traffic Counting: Occupancy

This status was introduced to improve performance in case traffic
counting is done on all all detectors.


**Return values**

start

    Time stamp for start of measuring

    ====  =============
    type  ``timestamp``
    ====  =============

occupancy

    Occupancy in percent (%) (0-100) |br|
    - Value expressed as an integer with a range of 0-100. |br|
    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
    - The value is set to “-1” if no data could be measured (e.g. detector fault)

    ====  ==========================
    type  ``integer_as_string_list``
    ====  ==========================

S0208
^^^^^^^^

Traffic Counting: Number of vehicles of given classification

This status was introduced to improve performance in case traffic
counting is done on all all detectors.


**Return values**

start

    Time stamp for start of measuring

    ====  =============
    type  ``timestamp``
    ====  =============

P

    Number of cars |br|
    - Value expressed as an integer with a range of 0-65535. |br|
    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
    - The value is set to “-1” if no data could be measured (e.g. detector fault)

    ====  ==========================
    type  ``integer_as_string_list``
    ====  ==========================

PS

    Number of cars with trailers |br|
    - Value expressed as an integer with a range of 0-65535. |br|
    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
    - The value is set to “-1” if no data could be measured (e.g. detector fault)

    ====  ==========================
    type  ``integer_as_string_list``
    ====  ==========================

L

    Number of trucks |br|
    - Value expressed as an integer with a range of 0-65535. |br|
    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
    - The value is set to “-1” if no data could be measured (e.g. detector fault)

    ====  ==========================
    type  ``integer_as_string_list``
    ====  ==========================

LS

    Number of trucks with trailers |br|
    - Value expressed as an integer with a range of 0-65535. |br|
    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
    - The value is set to “-1” if no data could be measured (e.g. detector fault)

    ====  ==========================
    type  ``integer_as_string_list``
    ====  ==========================

B

    Number of buses |br|
    - Value expressed as an integer with a range of 0-65535. |br|
    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
    - The value is set to “-1” if no data could be measured (e.g. detector fault)

    ====  ==========================
    type  ``integer_as_string_list``
    ====  ==========================

SP

    Number of trams |br|
    - Value expressed as an integer with a range of 0-65535. |br|
    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
    - The value is set to “-1” if no data could be measured (e.g. detector fault)

    ====  ==========================
    type  ``integer_as_string_list``
    ====  ==========================

MC

    Number of motor cycles |br|
    - Value expressed as an integer with a range of 0-65535. |br|
    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
    - The value is set to “-1” if no data could be measured (e.g. detector fault)

    ====  ==========================
    type  ``integer_as_string_list``
    ====  ==========================

C

    Number of bicycles |br|
    - Value expressed as an integer with a range of 0-65535. |br|
    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
    - The value is set to “-1” if no data could be measured (e.g. detector fault)

    ====  ==========================
    type  ``integer_as_string_list``
    ====  ==========================

F

    Number of pedestrians |br|
    - Value expressed as an integer with a range of 0-65535. |br|
    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
    - The value is set to “-1” if no data could be measured (e.g. detector fault)

    ====  ==========================
    type  ``integer_as_string_list``
    ====  ==========================

Commands
--------

.. tabularcolumns:: |\Yl{0.30}|\Yl{0.15}|\Yl{0.20}|\Yl{0.35}|

.. table:: Commands
   :class: longtable


   ========================  ===============  =====================  ===============================================
   ObjectType                commandCodeId    Command                Description
   ========================  ===============  =====================  ===============================================
   Traffic Light Controller  `M0001`_         setValue               Sets functional position
   Traffic Light Controller  `M0002`_         setPlan                Sets current time plan
   Traffic Light Controller  `M0003`_         setTrafficSituation    Sets traffic situation the controller uses
   Traffic Light Controller  `M0004`_         setRestart             Restarts Traffic Light Controller
   Traffic Light Controller  `M0005`_         setEmergency           Activate emergency route
   Traffic Light Controller  `M0006`_         setInput               Activate input
   Traffic Light Controller  `M0007`_         setFixedTime           Activate fixed time control
   Detector logic            `M0008`_         setForceDetectorLogic  Force detector logic
   Signal group              `M0010`_         setStart               ``Reserved``
   Signal group              `M0011`_         setStop                ``Reserved``
   Traffic Light Controller  `M0012`_         setStart               ``Reserved``
   Traffic Light Controller  `M0013`_         setInput               Activate a series of inputs
   Traffic Light Controller  `M0014`_         setCommands            Set dynamic bands
   Traffic Light Controller  `M0015`_         setOffset              Set Offset time
   Traffic Light Controller  `M0016`_         setWeekTable           Set week time table
   Traffic Light Controller  `M0017`_         setTimeTable           Set time tables
   Traffic Light Controller  `M0018`_         setCycleTime           Set Cycle time
   Traffic Light Controller  `M0019`_         setInput               Force input
   Traffic Light Controller  `M0020`_         setOutput              Force output
   Traffic Light Controller  `M0021`_         setLevel               Set trigger level sensitivity for loop detector
   Traffic Light Controller  `M0022`_         requestPriority        Request Signal Priority
   Traffic Light Controller  `M0023`_         setTimeout             Set timeout for dynamic bands
   Traffic Light Controller  `M0103`_         setSecurityCode        Set security code
   Traffic Light Controller  `M0104`_         setDate                Set clock
   ========================  ===============  =====================  ===============================================


M0001
^^^^^

Sets functional position

Sets the controller to yellow flash, dark mode or normal control.
Requires security code 2.


**Arguments**

status

    Set operating mode

    ====  ==========
    type  ``string``
    ====  ==========

    =============  ====================
    Enum           Description
    =============  ====================
    NormalControl  Normal Control
    YellowFlash    Enables yellow flash
    Dark           Enables dark mode
    =============  ====================

securityCode

    Security code 2

    ====  ==========
    type  ``string``
    ====  ==========

timeout

    Time in minutes until controller automatically reverts to previous functional position |br|
    0=no automatic return

    ====  =====================
    type  ``integer_as_string``
    max   ``1440``
    min   ``0``
    ====  =====================

intersection

    Intersection number |br|
    Command only applies to specified intersection. Other intersections remains in their respective operating mode(s). |br|
    0: All intersections

    ====  =====================
    type  ``integer_as_string``
    max   ``255``
    min   ``0``
    ====  =====================

M0002
^^^^^

Sets current time plan

Change of traffic program of the traffic light controller. Typical
usages is scenario based control where change of program is used to
change signal timings etc. This command changes the signal timings for
optimal traffic flow. Requires security code 2


**Arguments**

status

    False: Controller uses time plan according to programming |br|
    True: Controller uses time plan according to command

    ====  =====================
    type  ``boolean_as_string``
    ====  =====================

securityCode

    Security code 2

    ====  ==========
    type  ``string``
    ====  ==========

timeplan

    designation of time plan

    ====  =====================
    type  ``integer_as_string``
    max   ``255``
    min   ``1``
    ====  =====================

M0003
^^^^^

Sets traffic situation the controller uses

Used for area-based control where this command can be sent to a master
traffic light controller about which predefined traffic situation to use
(1-255). Traffic situation is a concept used to divide multiple TLC’s
into areas and sub-areas. The traffic situation gives the possibility to
change the TLC sub-area dynamically depending on the time of day and the
traffic flow. Depending on the traffic situation each TLC selects the
time plan dynamically. Requires security code 2


**Arguments**

status

    False: Controller uses traffic situation according to own programming |br|
    True: Controller uses traffic situation according to command

    ====  =====================
    type  ``boolean_as_string``
    ====  =====================

securityCode

    Security code 2

    ====  ==========
    type  ``string``
    ====  ==========

traficsituation

    designation of traficsituation

    ====  =====================
    type  ``integer_as_string``
    max   ``255``
    min   ``1``
    ====  =====================

M0004
^^^^^

Restarts Traffic Light Controller

Used in the event of serious faults in the device where a restart is
considered to be able to remedy a problem. Requires security code 2


**Arguments**

status

    ``Deprecated`` True: Restart controller

    ====  =====================
    type  ``boolean_as_string``
    ====  =====================

securityCode

    ``Deprecated`` Security code 2

    ====  ==========
    type  ``string``
    ====  ==========

M0005
^^^^^

Activate emergency route

The function is made for emergency prioritization. Works in the same way
as the M0006 and M0008 where the traffic light controller responds to an
input. Should be used in situations where full priority is given in the
emergency vehicle program. Requires security code 2.


**Arguments**

status

    False: Deactivate emergency route |br|
    True: Activate emergency route

    ====  =====================
    type  ``boolean_as_string``
    ====  =====================

securityCode

    Security code 2

    ====  ==========
    type  ``string``
    ====  ==========

emergencyroute

    Number of emergency route

    ====  =====================
    type  ``integer_as_string``
    max   ``255``
    min   ``1``
    ====  =====================

M0006
^^^^^

Activate input

Set given input (1-255) of the controllers general purpose I/O to either
true or false. The function can provide an input to the traffic light
controller on which a predefined action can be taken. Can be used for
all types of input where the traffic light controller must react to
external control. Typical usages are bus priority, coordination between
traffic controllers, external control systems, and much more. Requires
security code 2.


**Arguments**

status

    False: Deactivate input |br|
    True: Activate input

    ====  =====================
    type  ``boolean_as_string``
    ====  =====================

securityCode

    Security code 2

    ====  ==========
    type  ``string``
    ====  ==========

input

    Number of Input

    ====  =====================
    type  ``integer_as_string``
    max   ``255``
    min   ``1``
    ====  =====================

M0007
^^^^^

Activate fixed time control

Deactivates the traffic actuated control using detectors and activates
pre-timed control. Can be used in case normal detectors can’t be used,
e.g. during maintenance work. Requires security code 2.


**Arguments**

status

    False: Deactivate fixed time control |br|
    True: Activate fixed time control

    ====  =====================
    type  ``boolean_as_string``
    ====  =====================

securityCode

    Security code 2

    ====  ==========
    type  ``string``
    ====  ==========

M0008
^^^^^

Force detector logic

Force a given detector logic (1-255) to either true or false.

When ‘status’ is true the detector logic is forced to the state
specified in ‘mode’. While forced, no other source can activate or
deactivate the detector logic. When forcing, the ‘duration’ can be set
to automatically release the detector logic after a specific time
interval.

When ‘status’ is false the detector logic is released and the state will
again be controlled by other sources, e.g. hardware. Note that this
means that releasing does not guarantee a return to the previous state.
This is because the other control sources might have changed state while
the detector logic was forced. When releasing, the ‘mode’ and ‘duration’
attributes are ignored.

Can also be for signal group prioritization if the controller is
programmed to activate priority based on detector logic actication.

Requires security code 2


**Arguments**

status

    False: Release detector logic, 'mode' is ignored |br|
    True: Force detector logic to the value in 'mode'.

    ====  =====================
    type  ``boolean_as_string``
    ====  =====================

duration

    If set, automatically release after this number of |br|
    milliseconds. Ignored if 'status' is false. |br|
    Setting to zero is the same as leaving out, and means |br|
    no automatic release will happen.

    ====  =====================
    type  ``integer_as_string``
    ====  =====================

securityCode

    Security code 2

    ====  ==========
    type  ``string``
    ====  ==========

mode

    Mode to force to (ignored if 'status' is false) |br|
    False: Deactivate detector logic |br|
    True: Activate detector logic

    ====  =====================
    type  ``boolean_as_string``
    ====  =====================

M0010
^^^^^

``Reserved``

**Arguments**

status

    ``Reserved``

    ====  =====================
    type  ``boolean_as_string``
    ====  =====================

securityCode

    ``Reserved``

    ====  ==========
    type  ``string``
    ====  ==========

M0011
^^^^^

``Reserved``

**Arguments**

status

    ``Reserved``

    ====  =====================
    type  ``boolean_as_string``
    ====  =====================

securityCode

    ``Reserved``

    ====  ==========
    type  ``string``
    ====  ==========

M0012
^^^^^

``Reserved``

**Arguments**

status

    ``Reserved``

    ====  =========================
    type  ``string_list_as_string``
    ====  =========================

securityCode

    ``Reserved``

    ====  ==========
    type  ``string``
    ====  ==========

M0013
^^^^^

Activate a series of inputs

Set given inputs (1-255) of the controllers general purpose I/O to
either true or false. This command was introduced due to coordination
requirements needing to set many inputs to true/false at the same time
and M0006 being to slow to send a message for each input individually.
With this command many inputs can be set to true/false at the same time
using a single command message. It can be used for all types of input
where the traffic light controller must react to external control.
Typical usages are bus priority, coordination between traffic
controllers, external control systems, and much more.

Requires security code 2.

The parameter ‘status’ sets/unsets a block of 16 inputs at a time. It
can be repeated to set several blocks of 16 inputs. Values are separated
with comma. Blocks are separated with semicolon. Format: [Offset];[Bits
to set];[Bits to unset];…

-  ‘Offset’ defines where the 16 inputs starts from
-  ‘Bits to set’ defines which bit(s) to set. ‘0’ if unused
-  ‘Bits to unset’ defines which bit(s) to unset. ‘0’ if unused

Example 1: “3,4134,65” sets input 4,5,8,15 and unsets 3,9 - Input starts
from no. 5 - “4134” is 1 0000 0010 0110 in binary, but since input
starts from 3, it is shifted 3 bits, e.g. 1000 0001 0011 0000 which are
bits 4,5,8,15 - “65” is 100 0001 in binary, but since input starts from
3, it is shifted 3 bits, e.g. 10 0000 1000 which are bits 3,9

Example 2: “12,1,4” sets input 12 and unsets 14 - Input starts from no.
12 - “1” is 1 in binary, but since input starts at 12 it is shifted 12
bits, e.g. 1 0000 0000 0000, which is bit 12 - “4” is 100 in binary, but
since input starts at 12 it is shifted 12 bits, e.g. 100 0000 0000 0000,
which is bit 14

And both these examples could be sent in the same message as:
“3,4143,65;12,1,4”

Such a message would set input 4,5,8,12,15 and unset input 3,9,14

Example 3: “0,1,2” sets input 0 and unsets 1 - Input starts from 0 - “1”
is 1 in binary, which is bit 0 - “2” is 10 in binary, which is bit 1


**Arguments**

status

    Sets/Unsets a block of 16 inputs at a time. Can be repeated to set several blocks of 16 inputs. Values are separated with comma. Blocks are separated with semicolon |br|
    Format: [Offset];[Bits to set];[Bits to unset];…

    ====  =========================
    type  ``string_list_as_string``
    ====  =========================

securityCode

    Security code 2

    ====  ==========
    type  ``string``
    ====  ==========

M0014
^^^^^

Set dynamic bands

Can be used to change between predefined signal timings. Moves the start
of signal groups in the cycle. This command can be used to change the
split of green time during the cycle. A typical usage is scenario based
control where changing of signal timings is used for optimal traffic
flow. Requires security code 2


**Arguments**

plan

    Plan to be changed

    ====  =====================
    type  ``integer_as_string``
    max   ``255``
    min   ``0``
    ====  =====================

status

    Dynamic bands |br|
    Each dynamic band are written as dd-ee where: |br|
    dd=Dynamic band number (from 1-10) |br|
    ee=Extension in seconds in this band |br|
    |br|
    Each dynamic band is separated with a comma. |br|
    |br|
    E.g. |br|
    dd-ee,dd-ee

    ====  =========================
    type  ``string_list_as_string``
    ====  =========================

securityCode

    Security code 2

    ====  ==========
    type  ``string``
    ====  ==========

M0015
^^^^^

Set Offset time

Offset time is used to define an offset between intersections in
coordinated control. It is based on the expected travel time between
intersections. This command can be used to fine tune the coordination
for optimal traffic flow. Requires security code 2.


**Arguments**

status

    Set offset time in seconds

    ====  =====================
    type  ``integer_as_string``
    max   ``255``
    min   ``0``
    ====  =====================

plan

    Time plan nr

    ====  =====================
    type  ``integer_as_string``
    max   ``255``
    min   ``0``
    ====  =====================

securityCode

    Security code 2

    ====  ==========
    type  ``string``
    ====  ==========

M0016
^^^^^

Set week time table

Set which time table for signal programs to use for each day during a
week. This command changes the signal timings during the week for
optimal traffic flow. Requires security code 2.


**Arguments**

status

    Week time table. Defines time table to use for each week day |br|
    Each segment is written as d-t where: |br|
    d=day of week |br|
    t=time table nr |br|
    |br|
    Day of week legend: |br|
    0=Monday |br|
    1=Tuesday |br|
    2=Wednesday |br|
    3=Thursday |br|
    4=Friday |br|
    5=Saturday |br|
    6=Sunday |br|
    |br|
    Each segment is separated with a comma |br|
    |br|
    E.g. |br|
    d-t,d-t

    ====  =========================
    type  ``string_list_as_string``
    ====  =========================

securityCode

    Security code 2

    ====  ==========
    type  ``string``
    ====  ==========

M0017
^^^^^

Set time tables

Set time of day for when to automatically switch signal program (time
plan). This command changes the signal timings according to time of day
for optimal traffic flow. Requires security code 2.


**Arguments**

status

    Time Table. Defines time tables |br|
    Each time definition is written as t-o-h-m where: |br|
    t=time table nr (1-12) |br|
    o=function |br|
    h=hour - switching time |br|
    m=minute - switching minute |br|
    |br|
    Function legend: |br|
    0=no plan is selected by time table |br|
    1=set plan 1 |br|
    … |br|
    16= set plan 16 |br|
    |br|
    hour and minute is using local time (not UTC) |br|
    |br|
    Each time definition is separated with a comma. |br|
    |br|
    E.g. |br|
    t-o-h-m,t-o-h-m

    ====  =========================
    type  ``string_list_as_string``
    ====  =========================

securityCode

    Security code 2

    ====  ==========
    type  ``string``
    ====  ==========

M0018
^^^^^

Set Cycle time

Cycle time (or cycle length) is the sum of all phases in a time plan
(traffic program). This time is fixed when using fixed time control or
coordination (except “local coordination”). When the cycle counter
reaches this length it is reset back to zero. This command provides the
ability to change the cycle time when using coordinated or fixed time
control. It changes the timings for optimal traffic flow. Can be used
with scenario based control. Requires security code 2.


**Arguments**

status

    Set cycle time in seconds

    ====  =====================
    type  ``integer_as_string``
    max   ``255``
    min   ``1``
    ====  =====================

plan

    Time plan nr

    ====  =====================
    type  ``integer_as_string``
    max   ``255``
    min   ``0``
    ====  =====================

securityCode

    Security code 2

    ====  ==========
    type  ``string``
    ====  ==========

M0019
^^^^^

Force input

Force a given input (1-255) of the controllers general purpose I/O to
either True or False. Can be used for all types of input where the
traffic light controller must react to external control. Can be used for
bus priority, coordination between traffic controllers, external control
systems, and much more. Requires security code 2.


**Arguments**

status

    False: Release input |br|
    True: Force input

    ====  =====================
    type  ``boolean_as_string``
    ====  =====================

securityCode

    Security code 2

    ====  ==========
    type  ``string``
    ====  ==========

input

    Number of Input

    ====  =====================
    type  ``integer_as_string``
    max   ``255``
    min   ``1``
    ====  =====================

inputValue

    False: input forced to False |br|
    True: input forced to True

    ====  =====================
    type  ``boolean_as_string``
    ====  =====================

M0020
^^^^^

Force output

Force a given output (1-255) of the controllers general purpose I/O to
either True of False. Can be used for all types of output where the
traffic light controller needs to control other equipment. Can be used
for bus priority, coordination between traffic controllers, external
control systems, and much more. When the output is released
(status=False), the outputValue is ignored. Requires security code 2.


**Arguments**

status

    True: Force output |br|
    False: Release output

    ====  =====================
    type  ``boolean_as_string``
    ====  =====================

securityCode

    Security code 2

    ====  ==========
    type  ``string``
    ====  ==========

output

    Number of Output

    ====  =====================
    type  ``integer_as_string``
    max   ``255``
    min   ``1``
    ====  =====================

outputValue

    False: output forced off |br|
    True: output forced on

    ====  =====================
    type  ``boolean_as_string``
    ====  =====================

M0021
^^^^^

Set trigger level sensitivity for loop detector

The trigger level sensitivity determines at what level a loop detector
should trigger. If it set too low then then traffic will not be detected
as intended. If it is set too high the detector might give false
positives. This command provides the ability to fine tune loop detectors
to make sure they detect traffic as intended. Requires security code 2


**Arguments**

status

    Loop detector trigger level sensitivity is written as dd-ss where: |br|
    dd=loop detector number |br|
    ss=sensitivity value

    ====  =========================
    type  ``string_list_as_string``
    ====  =========================

securityCode

    Security code 2

    ====  ==========
    type  ``string``
    ====  ==========

M0022
^^^^^

Request Signal Priority

Useful for bus priority or other type of priorities like emergency
vehicles or groups of cyclists.

The benefit of using this message over activating inputs or detector
logics is that you can specify a priority level, vehicle type and
estimated time of arrival. You can also update or cancel the request,
and use the corresponding status message to track the status of the
request, including how much priority was actually given.

To understand how this command relates to ETSI/J2735, please see the
`wiki <https://github.com/rsmp-nordic/rsmp_sxl_traffic_lights/wiki/Signal-priority-and-ETSI-J2735>`__.

Activating signal priority is expected to provide more green time for a
particular movement through the intersection, but the exact mechanism
must typically be configured in the controller.

The movement to prioritize can be referenced in a number of ways,
depending on what is configured in the controller, and in the system
that sends priority requests. Either:

-  Reference a signal group by setting ‘signalGroupId’. This method is
   simple, but will not allow you to have different priority mechanism
   for the same signal group, unless they can be distinguished by the
   vehicle type. For example, if you need to trigger different
   priorities depending on whether a bus goes straight or makes a turn
   for the same signal group, you need to use of the other referencing
   methods.
-  Reference an input by setting ‘inputId’. This can be useful if you
   previously used inputs to activate priority. The input will not be
   activated, only the priority.
-  Reference a connection by setting ‘connectionId’. A connection is a
   movement from a specific ingoing lane to a specific outgoing lane.
-  Reference an intersection approach by setting ‘approachId’.
-  Reference an ingoing lane by setting ‘laneInId’, and optionally also
   reference an outgoing lane by setting ‘laneOutId’.

Referencing attributes that are not used must be left out, rather than
set to null or empty strings. This includes:

-  signalGroupId
-  inputId
-  connectionId
-  approachId
-  laneInId
-  laneOutId

Referencing attributes are only used when initiating a request. When
updating or cancelling the request, the request is identified by its
requestId, and no referencing attributes are allowed.

You initiate a priority request with type set to ‘new’. You must provide
a request id that uniquely identifies the request on the controller. It
can be a randomly generated UUID (universally unique identifier), or it
can be constructed by combining e.g. a vehicle id and some other
identifier. When updating or cancelling a request, you must pass the
same request id again.

Providing ETA (estimated time of arrival) when initiating a request is
optional, but can help the controller plan ahead in cases where you’re
able to send the request before the vehicle arrives at the intersection.
You’re allowed to initiate the request without an ETA and provide it in
a later request update. But providing the ETA when initiating the
request is recommended, since it will give the controller more time to
plan ahead.

Like ETA, providing a vehicle type is optional, but can help the
controller decide how to best handle the request.

The priority level provides a way to indicate the relative importance of
the request compared to other requests. For example, emergency vehicles
or delayed buses could be given a higher priority level.

If the ETA changes before the priority is cancelled, or you want to
change the priority level, you can send another request message with
type set to ‘update’. The vehicle type cannot be changed.

When you send a priority request, it will be processed to decide if it’s
possible to activate the requested priority.

If the request is accepted, the priority can either be activated
immediately, or if another priority is currently active, it can be
queued for later activation.

If the priority cannot be accepted the request is rejected. Cooldown is
a specific type of rejection, which means that s similar request has
just completed, and some time needs to pass before a similar request can
be activated.

When a request is queued, it is expected to become activated later, but
in case too long passes without activation, the controller is expected
to time out the request.

Once a priority is activated, you’re excepted to cancel it as soon as
there’s no need for it anymore, typically when the vehicle has passed
the intersection. You cancel a request by sending a request passing the
existing request id setting the type to ‘cancel’.

If a request is never cancelled, the controller is expected to remove
the priority at some point, but until then the priority might block
requests in other direction which is why you should always cancel a
priority when it’s not needed anymore.


**Arguments**

requestId

    A string that uniquely identifies the request on the controller

    ====  ==========
    type  ``string``
    ====  ==========

signalGroupId

    (Optional) ID of a signal group component

    ====  ==========
    type  ``string``
    ====  ==========

inputId

    (Optional) ID of an input, using the same numbering scheme as M0006

    ====  =====================
    type  ``integer_as_string``
    max   ``255``
    min   ``0``
    ====  =====================

connectionId

    (Optional) ID of a connection, connecting an ingoing and an outgoing lane

    ====  =====================
    type  ``integer_as_string``
    max   ``255``
    min   ``0``
    ====  =====================

approachId

    (Optional) ID of an intersection approach

    ====  =====================
    type  ``integer_as_string``
    max   ``16``
    min   ``0``
    ====  =====================

laneInId

    (Optional) ID of an ingoing lane

    ====  =====================
    type  ``integer_as_string``
    max   ``255``
    min   ``0``
    ====  =====================

laneOutId

    (Optional) ID of an outgoing lane

    ====  =====================
    type  ``integer_as_string``
    max   ``255``
    min   ``0``
    ====  =====================

priorityId

    (Optional) ID of a priority

    ====  =====================
    type  ``integer_as_string``
    max   ``255``
    min   ``0``
    ====  =====================

type


    ====  ==========
    type  ``string``
    ====  ==========

    ======  ===================================
    Enum    Description
    ======  ===================================
    new     New priority request
    update  Update to existing priority request
    cancel  Cancel an existing priority
    ======  ===================================

level

    0: Lowest, 14: Highest

    ====  =====================
    type  ``integer_as_string``
    max   ``14``
    min   ``0``
    ====  =====================

eta

    (Optional) Estimated time of arrival to the intersection, in seconds

    ====  =====================
    type  ``integer_as_string``
    max   ``255``
    min   ``0``
    ====  =====================

vehicleType

    (Optional) Vehicle type

    ====  ==========
    type  ``string``
    ====  ==========

    ================  ===============================
    Enum              Description
    ================  ===============================
    pedestrian        Pedestrians
    bicycle           Bicycles
    motorcycle        Motorcycles
    car               Passenger vehicle
    bus               Bus used for public transport
    lightTruck        Light truck
    heavyTruck        Heavy truck
    tram              Trams used for Public transport
    emergency         Police, fire or ambulance
    safetyCar         For e.g. escort vehicles
    specialTransport  For e.g. heavy load
    other             Other type of vehicle
    ================  ===============================

M0023
^^^^^

Set timeout for dynamic bands

Switch to a designated time plan if this timeout is reached due to lost
connection with the supervisor. Disable by setting timeout to ‘0’. Used
in conjunction with dynamic bands, M0014 Requires security code 2.


**Arguments**

status

    Timeout, in minutes

    ====  =====================
    type  ``integer_as_string``
    max   ``65535``
    min   ``0``
    ====  =====================

securityCode

    Security code 2

    ====  ==========
    type  ``string``
    ====  ==========

M0103
^^^^^

Set security code

Change the security code to use when sending commands Security codes are
used as an extra layer of security in many commands. They need to match
between the supervision system and the traffic light controller in order
for the commands to be executed.


**Arguments**

status


    ====  ==========
    type  ``string``
    ====  ==========

    ======  ======================
    Enum    Description
    ======  ======================
    Level1  Change security code 1
    Level2  Change security code 2
    ======  ======================

oldSecurityCode

    Previous security code

    ====  ==========
    type  ``string``
    ====  ==========

newSecurityCode

    New security code

    ====  ==========
    type  ``string``
    ====  ==========

M0104
^^^^^

Set clock

Can be used to manually set the clock of the traffic light controller if
automatic time synchronization (NTP or watchdog sync) is not available.
For instance, during maintenance work. Note: UTC is used. Requires
security code 1


**Arguments**

securityCode

    Security code 1

    ====  ==========
    type  ``string``
    ====  ==========

year

    Year

    ====  =====================
    type  ``integer_as_string``
    max   ``9999``
    min   ``0``
    ====  =====================

month

    Month

    ====  =====================
    type  ``integer_as_string``
    max   ``12``
    min   ``1``
    ====  =====================

day

    Day of month

    ====  =====================
    type  ``integer_as_string``
    max   ``31``
    min   ``1``
    ====  =====================

hour

    Hour

    ====  =====================
    type  ``integer_as_string``
    max   ``23``
    min   ``0``
    ====  =====================

minute

    Minute

    ====  =====================
    type  ``integer_as_string``
    max   ``59``
    min   ``0``
    ====  =====================

second

    Second

    ====  =====================
    type  ``integer_as_string``
    max   ``59``
    min   ``0``
    ====  =====================

.. |br| replace:: |br_html| |br_latex|

.. |br_html| raw:: html

   <br>

.. |br_latex| raw:: latex

   \newline

