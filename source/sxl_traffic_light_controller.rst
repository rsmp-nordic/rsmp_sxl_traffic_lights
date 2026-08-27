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
             1  Local mode             Traffic Light Controller is in local mode
             2  No Communications      Not used
             3  High Priority Fault    Traffic Light Controller is in fail-safe mode; e.g. yellow flash or dark mode
             4  Medium Priority Fault  Traffic Light Controller has a medium priority fault, but not in fail-safe mode. E.g. several lamp faults or detector fault
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


.. _A0001:

A0001 Serious hardware error
^^^^^

Available from SXL version: ``1.0.0``

Is a “major fault” defined according to 3.8 in EN12675 which causes the
controller to switch to a “failure mode” according to 3.6 in EN12675.



.. _A0002:

A0002 Less serious hardware error
^^^^^

Available from SXL version: ``1.0.0``

Is a “minor fault” defined according to 3.11 in EN12675.



.. _A0003:

A0003 Serious configuration error
^^^^^

Available from SXL version: ``1.0.0``

Is a “major fault” defined according to 3.8 in EN12675 which causes the
controller to switch to a “failure mode” according to 3.6 in EN12675.



.. _A0004:

A0004 Less serious configuration error
^^^^^

Available from SXL version: ``1.0.0``

Is a “minor fault” defined according to 3.11 in EN12675.



.. _A0005:

A0005 Synchronisation error (coordination)
^^^^^

Available from SXL version: ``1.0.0``

Is a “minor fault” defined according to 3.11 in EN12675.



.. _A0006:

A0006 Safety error
^^^^^

Available from SXL version: ``1.0.0``

Is a “major fault” defined according to 3.8 in EN12675 which causes the
controller to switch to a “failure mode” according to 3.6 in EN12675.



.. _A0007:

A0007 Communication error
^^^^^

Available from SXL version: ``1.0.0``

Used for communication errors with the central system. Includes NTP
connection loss if the TLC is configured to use NTP. Is a “minor fault”
defined according to 3.11 in EN12675.


**Return values**

**protocol** ``string``

    Type of communication error, e.g. NTP or RSMP


    ======  =============
    Enum    Description
    ======  =============
    rsmp    RSMP
    ntp     NTP
    ======  =============

.. _A0008:

A0008 Dead lock error
^^^^^

Available from SXL version: ``1.0.1``

Used for dead lock errors. For instance; a signal group has requested
green but is unable to switch due to a conflicting signal group for an
extended period of time. At some point the request times out and the
controller goes into failure mode. The cause for this error is due to
configuration errors or external sources. Is a “major fault” defined
according to 3.8 in EN12675 which causes the controller to switch to a
“failure mode” according to 3.6 in EN12675.


**Return values**

**timeplan** ``integer_as_string``

    Current time plan

    ===  =======
    max  ``255``
    min  ``1``
    ===  =======

.. _A0009:

A0009 Other error
^^^^^

Available from SXL version: ``1.0.0``

Used for other errors not covered by any other alarm type. Is a “minor
fault” defined according to 3.11 in EN12675.



.. _A0010:

A0010 Door open
^^^^^

Available from SXL version: ``1.0.15``

Used for open door (room or cabinet).



.. _A0101:

A0101 Pushbutton error
^^^^^

Available from SXL version: ``1.0.0``

Used for push buttons.



.. _A0201:

A0201 Serious lamp error
^^^^^

Available from SXL version: ``1.0.0``

Used for lamp errors. Is a “major fault” defined according to 3.8 in
EN12675 which causes the controller to switch to a “failure mode”
according to 3.6 in EN12675.


**Return values**

**color** ``string``

    Color of lamp


    ======  =============
    Enum    Description
    ======  =============
    red     red
    yellow  yellow
    green   green
    ======  =============

.. _A0202:

A0202 Less serious lamp error
^^^^^

Available from SXL version: ``1.0.0``

Used for lamp errors. Is a “minor fault” defined according to 3.11 in
EN12675.


**Return values**

**color** ``string``

    Color of lamp


    ======  =============
    Enum    Description
    ======  =============
    red     red
    yellow  yellow
    green   green
    ======  =============

.. _A0301:

A0301 Detector error (hardware)
^^^^^

Available from SXL version: ``1.0.2``

Is a “minor fault” defined according to 3.11 in EN12675.


**Return values**

**detector** ``string``

    Designation of the detector (hardware)


**type** ``string``

    Type of detector


    ======  =======================
    Enum    Description
    ======  =======================
    loop    Inductive detector loop
    input   External input
    ======  =======================

**errormode** ``string``

    Detector forced on/off while detector error


    ======  =============
    Enum    Description
    ======  =============
    on
    off
    ======  =============

**manual** ``boolean_as_string``

    Manually controlled detector logic (True/False)


.. _A0302:

A0302 Detector error (logic error)
^^^^^

Available from SXL version: ``1.0.2``

For instance; detector continuously on or off during an extended time.
Is a “minor fault” defined according to 3.11 in EN12675.


**Return values**

**detector** ``string``

    Designation of the detector (hardware)


**type** ``string``

    Type of detector


    ======  =======================
    Enum    Description
    ======  =======================
    loop    Inductive detector loop
    input   External input
    ======  =======================

**errormode** ``string``

    Detector forced on/off while detector error


    ======  =============
    Enum    Description
    ======  =============
    on
    off
    ======  =============

**manual** ``boolean_as_string``

    Manually controlled detector logic (True/False)


**logicerror** ``string``

    Type of logic error


    ============  ==================================================
    Enum          Description
    ============  ==================================================
    always_off    no detection during predefined max time
    always_on     detection constantly on during predefined max time
    intermittent  intermittent logic fault (flutter)
    ============  ==================================================

.. _A0303:

A0303 Serious detector error (hardware)
^^^^^

Available from SXL version: ``1.1.0``

Is a “major fault” defined according to 3.8 i EN12675 which causes the
controller to switch to a “failure mode” according to 3.6 in EN12675.


**Return values**

**detector** ``string``

    Designation of the detector (hardware)


**type** ``string``

    Type of detector


    ======  =======================
    Enum    Description
    ======  =======================
    loop    Inductive detector loop
    input   External input
    ======  =======================

**errormode** ``string``

    Detector forced on/off while detector error


    ======  =============
    Enum    Description
    ======  =============
    on
    off
    ======  =============

**manual** ``boolean_as_string``

    Manually controlled detector logic (True/False)


.. _A0304:

A0304 Serious detector error (logic error)
^^^^^

Available from SXL version: ``1.1.0``

For instance; detector continuously on or off during an extended time.
Is a “major fault” defined according to 3.8 i EN12675 which causes the
controller to switch to a “failure mode” according to 3.6 in EN12675


**Return values**

**detector** ``string``

    Designation of the detector (hardware)


**type** ``string``

    Type of detector


    ======  =======================
    Enum    Description
    ======  =======================
    loop    Inductive detector loop
    input   External input
    ======  =======================

**errormode** ``string``

    Detector forced on/off while detector error


    ======  =============
    Enum    Description
    ======  =============
    on
    off
    ======  =============

**manual** ``boolean_as_string``

    Manually controlled detector logic (True/False)


**logicerror** ``string``

    Type of logic error


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


.. _S0001:

S0001 Signal group status
^^^^^^^^

Available from SXL version: ``1.0.0``

Provides the status of each signal group, e.g. green, yellow, red, or
other states used in the signal program. See the section on signal group
states for more information about the possible states.

Can be used to draw a live signal group diagram as well as to provide
diagnostic information about the performance of the controller.

The base cycle counter is computed based on the internal clock and the
cycle time. Controllers in active coordination will have synchronized
base cycle counters.

The cycle clock is based on the base cycle counter, but shifts the phase
using the offset set in the controller:

c = (b + o) modulo t

| where:
| c = cycle counter
| b = base cycle counter
| o = offset
| t = cycle time

THe cycle counter and base cycle counter are both specified using whole
seconds.

See the coordination section for more information about cycle counters.

The millisecond attributes provides the high resolution cycle counter
(not base cycle counter) of the the last signal group change. If the
controller internally works with discrete ticks, the value must be
quantized to the tick where the signal groups changed. E.g. if the
controller uses 100ms ticks, the value must be quantized to 0, 100, 200,
300…

The millisecond attribute updates only when one or more signal group
states changes, NOT every millisecond. Subscribing with **sendOnChange**
will therefore not result in updates every millisecond.


**Return values**

**signalgroupstatus** ``string``

    Signal group status as text field |br|
    Each character represents the state of the signal group in consecutive order, |br|
    where the leftmost character starts with signal group 1. |br|
    Signal group status is described in detail in the corresponding section. |br|
    A dash "-" is used for undefined/non-existing signal groups.


**basecyclecounter** ``integer_as_string``

    Base cycle counter |br|
    Updates once per second, counting from 0 and wrapping around when reaching the cycle time.

    ===  =======
    max  ``999``
    min  ``0``
    ===  =======

**cyclecounter** ``integer_as_string``

    Cycle counter |br|
    Updates once per second, counting from 0 and wrapping around when reaching the cycle time.

    ===  =======
    max  ``999``
    min  ``0``
    ===  =======

**millisecond** ``integer_as_string``

    Provides the cycle counter (not base cycle counter) in milliseconds |br|
    of when the last signal group state changed occured. |br|
    Updates only when the signalgroupstatus attribute changes.

    ===  ==========
    max  ``999999``
    min  ``0``
    ===  ==========

**stage** ``integer_as_string``

    Current stage (isolated)

    ===  =======
    max  ``999``
    min  ``0``
    ===  =======

.. _S0002:

S0002 Detector logic status
^^^^^^^^

Available from SXL version: ``1.0.2``

Provides the status of all detector logics of the controller. Can be
used to draw a live signal group diagram as well provide diagnostic
information about the performance of the controller. Can also be used
for bus priority, external control systems, and much more.


**Return values**

**detectorlogicstatus** ``string_list_as_string``

    Detector logic status as text field |br|
    Each character represent the state of the detector logic in consecutive order, |br|
    where the leftmost character starts with detector logic 1. |br|
    0 : Detector logic is not active |br|
    1 : Detector logic is active |br|
    - : Detector logic is undefined/does not exist


.. _S0003:

S0003 Input status
^^^^^^^^

Available from SXL version: ``1.0.2``

Input (1-255) of the controllers general purpose I/O. Input is used
where the traffic light controller must react to external control. It
could be external detectors, bus priority, and much more.


**Return values**

**inputstatus** ``string_list_as_string``

    Input status as text field |br|
    Each character represent the state of the input in consecutive order, |br|
    where the leftmost character starts with input 1. |br|
    0 : Input is not active |br|
    1 : Input is active |br|
    - : Input is undefined/does not exist


.. _S0004:

S0004 Output status
^^^^^^^^

Available from SXL version: ``1.0.2``

Output (1-255) of the controllers general purpose I/O. Can be used for
all types of output where the traffic light controller needs to control
other equipment. Can be used for bus priority, coordination between
traffic controllers, external control systems, and much more.


**Return values**

**outputstatus** ``string``

    Output status as text field |br|
    Each character represent the state of the output status in consecutive order, |br|
    where the leftmost character starts with output 1. |br|
    0 : Output is not active |br|
    1 : Output is active |br|
    - : Output is undefined/does not exist


.. _S0005:

S0005 Traffic Light Controller starting
^^^^^^^^

Available from SXL version: ``1.0.2``

The traffic signal is starting, e.g. it is in startup mode and has not
begun working normally yet. During startup mode the traffic controller
shows dark, red, yellow flash or using the predetermined start cycle
(minimum times).


**Return values**

**status** ``boolean_as_string``

    False: Controller is not in start up mode |br|
    True: Controller is currently in start up mode


**statusByIntersection** ``array``

    False: Intersection is not in start up mode |br|
    True: Intersection is currently in start up mode


    ============  ===============
    Name          Description
    ============  ===============
    intersection  Intersection id
    startup       Start up mode
    ============  ===============

**statusByIntersection: intersection** ``integer_as_string``

    Intersection id

    ===  =======
    max  ``255``
    min  ``0``
    ===  =======

**statusByIntersection: startup** ``boolean_as_string``

    Start up mode


.. _S0006:

S0006 Emergency route
^^^^^^^^

Available from SXL version: ``1.0.2``

The status is active during emergency prioritization. Used in situations
where full priority is given in the emergency vehicle program or for
other types of priority in some cases.

If no emergency route is active, status should be set to False, and
emergencystage to zero.

Deprecated, use S0035 instead.


**Return values**

**status** ``boolean_as_string``

    ``Deprecated`` False: Emergency route inactive |br|
    True: Emergency route active


**emergencystage** ``integer_as_string``

    ``Deprecated`` Number of emergency route (set to zero if no route is active)

    ===  =======
    max  ``255``
    min  ``0``
    ===  =======

.. _S0007:

S0007 Controller switched on
^^^^^^^^

Available from SXL version: ``1.0.2``

The controller is active and is not in dark mode. Used to determine if
the there is output to the signal heads, e.g. it shows red, green or
yellow to the vehicles. During maintenance work the controller might be
using dark mode (no output to the signal heads). Please note that all
values in this status uses comma-separated lists - one value for each
intersection, e.g. “0” and “True” (one intersection) or “1,2” and
“True,False” (two intersections).


**Return values**

**intersection** ``integer_list_as_string``

    Comma separated list of intersections which the status relates to, e.g. “1,2” |br|
    Use “0” for all intersections of the TLC.


**status** ``boolean_list_as_string``

    False: Traffic Light Controller in dark mode |br|
    True: Traffic Light Controller not in dark mode


**source** ``string_list_as_string``

    Source of the status change


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

.. _S0008:

S0008 Manual control
^^^^^^^^

Available from SXL version: ``1.0.2``

Traffic control deactivated in controller. Signal timings is controlled
manually by service personnel using the operating panel of the
controller. Please note that all values in this status uses
comma-separated lists - one value for each intersection, e.g. “0” and
“True” (one intersection) or “1,2” and “True,False” (two intersections).


**Return values**

**intersection** ``integer_list_as_string``

    Comma separated list of intersections which the status relates to, e.g. “1,2” |br|
    Use “0” for all intersections of the TLC.


**status** ``boolean_list_as_string``

    False: Manual control inactive |br|
    True: Manual control active


**source** ``string_list_as_string``

    Source of the status change


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

.. _S0009:

S0009 Fixed time control
^^^^^^^^

Available from SXL version: ``1.0.2``

Traffic actuated control deactivated and a pre-timed control is used.
Usually only used in case normal detectors can’t be used, e.g. during
maintenance work. Please note that all values in this status uses
comma-separated lists - one value for each intersection, e.g. “0” and
“True” (one intersection) or “1,2” and “True,False” (two intersections).


**Return values**

**intersection** ``integer_list_as_string``

    Comma separated list of intersections which the status relates to, e.g. “1,2” |br|
    Use “0” for all intersections of the TLC.


**status** ``boolean_list_as_string``

    False: Fixed time control inactive |br|
    True: Fixed time control active


**source** ``string_list_as_string``

    Source of the status change


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

.. _S0010:

S0010 Isolated control
^^^^^^^^

Available from SXL version: ``1.0.2``

Isolated control mode indicates that the controller operates
independently of any other traffic light controller. This may be
different depending on traffic program (time plan). Used to determine if
the controller is operating independently or operating with other
controllers (coordination). Please note that all values in this status
uses comma-separated lists - one value for each intersection, e.g. “0”
and “True” (one intersection) or “1,2” and “True,False” (two
intersections).


**Return values**

**intersection** ``integer_list_as_string``

    Comma separated list of intersections which the status relates to, e.g. “1,2” |br|
    Use “0” for all intersections of the TLC.


**status** ``boolean_list_as_string``

    False: Isolated control disabled |br|
    True: Isolated control enabled (Vehicle actuated control or Fixed time control)


**source** ``string_list_as_string``

    Source of the status change


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

.. _S0011:

S0011 Yellow flash
^^^^^^^^

Available from SXL version: ``1.0.2``

The controller shows yellow flash. Yellow flash may be used during a
serious fault (depending on configuration) or maintenance work. It can
also be manually set using M0001. Some countries may use yellow flash as
a normal operating mode, and not necessarily during fault. Please note
that all values in this status uses comma-separated lists - one value
for each intersection, e.g. “1,2” and “True,False”


**Return values**

**intersection** ``integer_list_as_string``

    Comma separated list of intersections which the status relates to, e.g. “1,2” |br|
    Use “0” for all intersections of the TLC.


**status** ``boolean_list_as_string``

    False: Yellow flash disabled |br|
    True: Yellow flash enabled


**source** ``string_list_as_string``

    Source of the status change


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

.. _S0012:

S0012 All red
^^^^^^^^

Available from SXL version: ``1.0.2``

The controller show all red. All red can be manually set using the
controllers operating panel during maintenance work. Please note that
all values in this status uses comma-separated lists - one value for
each intersection, e.g. “1,2” and “True,False”


**Return values**

**intersection** ``integer_list_as_string``

    Comma separated list of intersections which the status relates to, e.g. “1,2” |br|
    Use “0” for all intersections of the TLC.


**status** ``boolean_list_as_string``

    False: All red disabled |br|
    True: All red enabled


**source** ``string_list_as_string``

    Source of the status change


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

.. _S0013:

S0013 Police key
^^^^^^^^

Available from SXL version: ``1.0.2``

The controller is forced to dark mode or yellow flash. The “police key”
is an external control switch present in some controllers that manually
switches the controller to either dark mode or yellow flash. Please note
that all values in this status uses comma-separated lists - one value
for each intersection, e.g. “1,2” and “0,1”


**Return values**

**intersection** ``integer_list_as_string``

    Comma separated list of intersections which the status relates to, e.g. “1,2” |br|
    Use “0” for all intersections of the TLC.


**status** ``integer_list_as_string``



    ======  =============
      Enum  Description
    ======  =============
         0  disabled
         1  dark mode
         2  yellow flash
         3  all red
    ======  =============

.. _S0014:

S0014 Current time plan
^^^^^^^^

Available from SXL version: ``1.0.2``

The current time plan (signal program) used in the controller. There may
be 1-255 predefined time plans. The time plan (signal program) may
change signal timings, cycle time, control strategy and much more.
Typical usage is scenario based control where change of program is used
to change priority etc.


**Return values**

**status** ``integer_as_string``

    Current time plan

    ===  =======
    max  ``255``
    min  ``1``
    ===  =======

**source** ``string_list_as_string``

    Source of the status change


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

.. _S0015:

S0015 Current traffic situation
^^^^^^^^

Available from SXL version: ``1.0.2``

The current traffic situation used in the controller. Used for
area-based control where the M0003 command can be sent to a master
traffic light controller about which predefined traffic situation to use
(1-255). Traffic situation is a concept used to divide multiple TLC’s
into areas and sub-areas. The traffic situation gives the possibility to
change the TLC sub-area dynamically depending on the time of day and the
traffic flow. Depending on the traffic situation each TLC selects the
time plan dynamically.


**Return values**

**status** ``integer_as_string``

    Current traffic situation

    ===  =======
    max  ``255``
    min  ``1``
    ===  =======

**source** ``string_list_as_string``

    Source of the status change


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

.. _S0016:

S0016 Number of detector logics
^^^^^^^^

Available from SXL version: ``1.0.2``

Can be used by the management system to check the number of detector
logics configured in the controller.


**Return values**

**number** ``integer_as_string``

    Number of detector logics

    ===  =========
    max  ``65025``
    min  ``1``
    ===  =========

.. _S0017:

S0017 Number of signal groups
^^^^^^^^

Available from SXL version: ``1.0.2``

Can be used for the management system to check the number of signal
groups configured in the controller.


**Return values**

**number** ``integer_as_string``

    Number of signal groups

    ===  =========
    max  ``65025``
    min  ``1``
    ===  =========

.. _S0019:

S0019 Number of traffic situations
^^^^^^^^

Available from SXL version: ``1.0.2``

Can be used for the management system to check the number of traffic
situations configured in the controller.


**Return values**

**number** ``integer_as_string``

    Number of traffic situations

    ===  =========
    max  ``65025``
    min  ``1``
    ===  =========

.. _S0020:

S0020 Control mode
^^^^^^^^

Available from SXL version: ``1.0.2``

Can be used for the management system to check the current control mode
(startup, normal, standby, failure, test). Please note that all values
in this status uses comma-separated lists - one value for each
intersection, e.g. “1,2” and “startup,control”


**Return values**

**intersection** ``integer_list_as_string``

    Comma separated list of intersections which the status relates to, e.g. “1,2” |br|
    Use “0” for all intersections of the TLC.


**controlmode** ``string_list_as_string``



    =======  ======================================================================================================================
    Enum     Description
    =======  ======================================================================================================================
    startup  The controller starts up, performs a power on self test and performs each :term:`start-up interval`
    control  Normal 3-light control
    standby  The controller is in dark or yellow flash mode (either according to programming or manually set)
    failure  The controller has a “major fault” defined according to 3.8 in EN12675. The controller is in dark or yellow flash mode
    test     Mode used for various tests, e.g. signal lights
    =======  ======================================================================================================================

.. _S0021:

S0021 Manually set detector logic
^^^^^^^^

Available from SXL version: ``1.0.3``

Provides status of detector logic (1-255) regarding if they are either
forced to true or false. Can be used to connect RSMP compatible
detection equipment to the traffic light controller. Can also be used
for prioritization.


**Return values**

**detectorlogics** ``string``

    Manually set detector logic as text field |br|
    Each character represent the state in consecutive order, |br|
    where the leftmost character starts with detector logic 1. |br|
    0 : Detector logic not manually set |br|
    1 : Detector logic manually set |br|
    - : Detector logic is undefined/does not exist


.. _S0022:

S0022 List of time plans
^^^^^^^^

Available from SXL version: ``1.0.13``

Provides a list of the configured time plans which is possible to use.
This status was added due to status S0018 only provided the total number
of time plans and not which were possible to use with M0002. Can be used
for the management system to check the number of time plans configured
in the controller.


**Return values**

**status** ``integer_list_as_string``

    Comma separated list of configured time plans. E.g. "1,2,3,5"


.. _S0023:

S0023 Dynamic bands
^^^^^^^^

Available from SXL version: ``1.0.13``

Provides a list of all defined dynamic bands. Dynamic bands moves start
of signal groups in the cycle and changes the signal timings. A typical
usage of dynamic bands is scenario based control where changing of
signal timings is used for optimal traffic flow.


**Return values**

**status** ``string``

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


.. _S0024:

S0024 Offset time
^^^^^^^^

Available from SXL version: ``1.0.13``

Offset time is used to define an offset between intersections in
coordinated control. It is based on the expected travel time between
intersections. Can be used by the management system to check to fine
tune the coordination for optimal traffic flow.


**Return values**

**status** ``string_list_as_string``

    Offset table |br|
    Each offset time is written as p-t where: |br|
    p=time plan number (from 1 to 255) |br|
    t=offset time in seconds (from 0 to 255) |br|
    |br|
    Each offset time is separated with a comma |br|
    |br|
    E.g. |br|
    1-0,2-13-3-7


.. _S0025:

S0025 Time-of-Green / Time-of-Red
^^^^^^^^

Available from SXL version: ``1.0.13``

Provides predicted signal timings of green and red for each signal
group. Max, min and likely time to green and red.


**Return values**

**minToGEstimate** ``timestamp``

    Time stamp for the minimum time for the signal group to go to green. If the signal group is green, it is the minimum time for the next green


**maxToGEstimate** ``timestamp``

    Time stamp for the maximum time for the signal group to go to green. If the signal group is green, it is the maximum time for the next green


**likelyToGEstimate** ``timestamp``

    Time stamp for the most likely time for the signal group to go to green. If the signal group is green, it is the most likely time for the next green


**ToGConfidence** ``integer_as_string``

    Confidence of the likelyToGEstimate. 0-100%

    ===  =======
    max  ``100``
    min  ``0``
    ===  =======

**minToREstimate** ``timestamp``

    Time stamp for the minimum time for the signal group to go to red. If the signal group is red, it is the minimum time for the next red


**maxToREstimate** ``timestamp``

    Time stamp for the maximum time for the signal group to go to red. If the signal group is red, it is the maximum time for the next red


**likelyToREstimate** ``timestamp``

    Time stamp for the most likely time for the signal group to go to red. If the signal group is red, it is the most likely time for the next red


**ToRConfidence** ``integer_as_string``

    Confidence of the likelyToREstimate. 0-100%

    ===  =======
    max  ``100``
    min  ``0``
    ===  =======

.. _S0026:

S0026 Week time table
^^^^^^^^

Available from SXL version: ``1.0.13``

Week time table for signal programs (time plan) to use for each day
during a week. The week time table determine which predefined signal
timings (time plan) to use during the week for optimal traffic flow.


**Return values**

**status** ``string_list_as_string``

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


.. _S0027:

S0027 Time tables
^^^^^^^^

Available from SXL version: ``1.0.13``

Time of day for when to switch signal program (time plan). The signal
timings (time plan) to use during time of day for optimal traffic flow.


**Return values**

**status** ``string_list_as_string``

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


.. _S0028:

S0028 Cycle time
^^^^^^^^

Available from SXL version: ``1.0.13``

Cycle time (or cycle length) is the sum of all phases in a time plan
(traffic program). This time is fixed when using fixed time control or
coordination (except “local coordination”). When the cycle counter
reaches this length it is reset back to zero. Changing the cycle time
can be used as part of scenario based control.


**Return values**

**status** ``string_list_as_string``

    Cycle time table |br|
    Each cycle time is written as pp-tt where: |br|
    pp=time plan |br|
    tt=cycle time in seconds |br|
    |br|
    Each cycle time is separated with a comma |br|
    |br|
    E.g. |br|
    pp-tt,pp-tt


.. _S0029:

S0029 Forced input status
^^^^^^^^

Available from SXL version: ``1.0.13``

Provide status of input (1-255) regarding if they are forced or not. Can
be used for all types of input where the traffic light controller must
react to external control. Can be used for bus priority, coordination
between traffic controllers, external control systems, and much more.


**Return values**

**status** ``string``

    Forced input status as text field |br|
    Each character represent the state in consecutive order, |br|
    where the leftmost character starts with input 1. |br|
    0 : Input not forced |br|
    1 : Input forced |br|
    - : Input undefined/does not exist


.. _S0030:

S0030 Forced output status
^^^^^^^^

Available from SXL version: ``1.0.15``

Provide status of output (1-255) regarding if they are forced or not.
Can be used for all types of output where the traffic light controller
needs to control other equipment. Can be used for bus priority,
coordination between traffic controllers, external control systems, and
much more.


**Return values**

**status** ``string``

    Forced output status as text field |br|
    Each character represent the state in consecutive order, |br|
    where the leftmost character starts with output 1. |br|
    0 : Output not forced |br|
    1 : Output forced |br|
    - : Output undefined/does not exist


.. _S0031:

S0031 Trigger level sensitivity for loop detector
^^^^^^^^

Available from SXL version: ``1.0.15``

The trigger level sensitivity determines at what level the loop detector
should trigger. If it set too low then then traffic will not be detected
as intended. If it is set too high the detector might give false
positives. Can be used to make sure that the detectors detect traffic as
intended.


**Return values**

**status** ``string_list_as_string``

    Loop detector trigger level sensitivity is written as dd-ss where: |br|
    dd=loop detector number |br|
    ss=sensitivity value |br|
    Each loop detector is separated with a comma. E.g.dd-ss,dd-ss.


.. _S0032:

S0032 Coordinated control
^^^^^^^^

Available from SXL version: ``1.1.0``

This status is used when coordination between traffic light controllers
is active. Coordination is described in detail in the corresponding
section Please note that all values in this status uses comma-separated
lists - one value for each intersection, e.g. “1,2” and
“centralized,off”


**Return values**

**intersection** ``integer_list_as_string``

    Comma separated list of intersections which the status relates to, e.g. “1,2” |br|
    Use “0” for all intersections of the TLC.


**status** ``string_list_as_string``



    ===========  ====================================
    Enum         Description
    ===========  ====================================
    local        Local coordination
    centralized  Coordination with synchronized clock
    off          Coordination not active
    ===========  ====================================

**source** ``string_list_as_string``

    Source of the status change


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

.. _S0033:

S0033 Signal Priority Status
^^^^^^^^

Available from SXL version: ``1.1.0``

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

**status** ``array``

    JSON array of priority status items


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

**status: r** ``string``

    ID of the priority request


**status: t** ``timestamp``

    Timestamp, indicating when the priority last changed state


**status: s** ``string``

    Current status of the priority request


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

**status: e** ``integer_as_string``

    (Optional) Estimated green extension provided by the priority, in seconds |br|
    Only used when state is ‘completed’.

    ===  =======
    max  ``255``
    min  ``0``
    ===  =======

**status: d** ``integer_as_string``

    (Optional) Estimated red reduction provided by the priority, in seconds |br|
    Only used when state is ‘completed’.

    ===  =======
    max  ``255``
    min  ``0``
    ===  =======

.. _S0034:

S0034 Timeout for dynamic bands
^^^^^^^^

Available from SXL version: ``1.1.0``

Time until a designated time plan is entered due to lost connection with
the supervisor. Disabled if set to ‘0’. Used in conjunction with dynamic
bands, M0014


**Return values**

**status** ``integer_as_string``

    Timeout, in minutes

    ===  =========
    max  ``65535``
    min  ``0``
    ===  =========

.. _S0035:

S0035 Emergency route
^^^^^^^^

Available from SXL version: ``1.2.0``

The status is active during emergency prioritization. Used in situations
where full priority is given in the emergency vehicle program or for
other types of priority in some cases.

This status is similar to S0006, but supports multiple routes


**Return values**

**emergencyroutes** ``array``

    Active emergency routes


    ======  ============================
    Name    Description
    ======  ============================
    id      ID of active emergency route
    ======  ============================

**emergencyroutes: id** ``integer_as_string``

    ID of active emergency route

    ===  =======
    max  ``255``
    min  ``1``
    ===  =======

.. _S0091:

S0091 Operator logged in/out OP-panel
^^^^^^^^

Available from SXL version: ``1.0.1``

Provides information if maintenance personnel is currently working on
site.


**Return values**

**user** ``integer_as_string``



    ======  ==========================================
      Enum  Description
    ======  ==========================================
         0  Nobody logged in
         1  Operator logged in at level 1 (read only)
         2  Operator logged in at level 2 (read/write)
    ======  ==========================================

.. _S0092:

S0092 Operator logged in/out web-interface
^^^^^^^^

Available from SXL version: ``1.0.1``

Provides information if maintenance personnel is currently working with
the controller.


**Return values**

**user** ``integer_as_string``



    ======  ==========================================
      Enum  Description
    ======  ==========================================
         0  Nobody logged in
         1  Operator logged in at level 1 (read only)
         2  Operator logged in at level 2 (read/write)
    ======  ==========================================

.. _S0095:

S0095 Version of Traffic Light Controller
^^^^^^^^

Available from SXL version: ``1.0.1``

Provides diagnostic version information.


**Return values**

**status** ``string``

    Manufacturer, product name and version of traffic light controller


.. _S0096:

S0096 Current date and time
^^^^^^^^

Available from SXL version: ``1.0.1``

Note: UTC is used. Provides diagnostic information about the current
date and time set in the controller.


**Return values**

**year** ``integer_as_string``

    Year

    ===  ========
    max  ``9999``
    min  ``0``
    ===  ========

**month** ``integer_as_string``

    Month

    ===  ======
    max  ``12``
    min  ``1``
    ===  ======

**day** ``integer_as_string``

    Day of month

    ===  ======
    max  ``31``
    min  ``1``
    ===  ======

**hour** ``integer_as_string``

    Hour

    ===  ======
    max  ``23``
    min  ``0``
    ===  ======

**minute** ``integer_as_string``

    Minute

    ===  ======
    max  ``59``
    min  ``0``
    ===  ======

**second** ``integer_as_string``

    Second

    ===  ======
    max  ``59``
    min  ``0``
    ===  ======

.. _S0097:

S0097 Checksum of traffic parameters
^^^^^^^^

Available from SXL version: ``1.0.15``

Can be used to check if any traffic parameter has been changed. For
instance, depending on controller, maintenance personnel can modify
traffic parameters on site to optimize traffic flow. This status
provides the ability to monitor if any traffic parameter has been
changed. The traffic parameters may be downloaded with S0098.


**Return values**

**checksum** ``string``

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


**timestamp** ``timestamp``

    Time stamp of the checksum


.. _S0098:

S0098 Configuration of traffic parameters
^^^^^^^^

Available from SXL version: ``1.0.15``

Can be used to download all traffic parameters from the controller. For
instance, depending on controller, maintenance personnel can modify
traffic parameters on site to optimize traffic flow. This status
provides the ability to downloaded them.


**Return values**

**config** ``base64``

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


**timestamp** ``timestamp``

    Time stamp of the config


**version** ``string_list_as_string``

    Version information of the configuration. Contains basic information such as controller id, changes to config and other information |br|
    The format is not specified in detail.


.. _S0201:

S0201 Traffic Counting: Number of vehicles
^^^^^^^^

Available from SXL version: ``1.0.5``

Used for Traffic counting. Please see Section 4: “Traffic counting” for
additional requirements.


**Return values**

**starttime** ``timestamp``

    Time stamp for start of measuring


**vehicles** ``integer_as_string``

    Number of vehicles on a given detector logic (since last update)

    ===  =========
    max  ``65535``
    min  ``0``
    ===  =========

.. _S0202:

S0202 Traffic Counting: Vehicle speed
^^^^^^^^

Available from SXL version: ``1.0.5``

Used for Traffic counting. Please see Section 4: “Traffic counting” for
additional requirements.


**Return values**

**starttime** ``timestamp``

    Time stamp for start of measuring


**speed** ``integer_as_string``

    Average speed in km/h

    ===  =========
    max  ``65535``
    min  ``0``
    ===  =========

.. _S0203:

S0203 Traffic Counting: Occupancy
^^^^^^^^

Available from SXL version: ``1.0.5``

Used for Traffic counting. Please see Section 4: “Traffic counting” for
additional requirements.


**Return values**

**starttime** ``timestamp``

    Time stamp for start of measuring


**occupancy** ``integer_as_string``

    Occupancy in percent (0-100%)

    ===  =======
    max  ``100``
    min  ``0``
    ===  =======

.. _S0204:

S0204 Traffic Counting: Number of vehicles of given classification
^^^^^^^^

Available from SXL version: ``1.0.5``

Used for Traffic counting. Please see Section 4: “Traffic counting” for
additional requirements.


**Return values**

**starttime** ``timestamp``

    Time stamp for start of measuring


**P** ``integer_as_string``

    Number of cars

    ===  =========
    max  ``65535``
    min  ``0``
    ===  =========

**PS** ``integer_as_string``

    Number of cars with trailers

    ===  =========
    max  ``65535``
    min  ``0``
    ===  =========

**L** ``integer_as_string``

    Number of trucks

    ===  =========
    max  ``65535``
    min  ``0``
    ===  =========

**LS** ``integer_as_string``

    Number of trucks with trailers

    ===  =========
    max  ``65535``
    min  ``0``
    ===  =========

**B** ``integer_as_string``

    Number of buses

    ===  =========
    max  ``65535``
    min  ``0``
    ===  =========

**SP** ``integer_as_string``

    Number of trams

    ===  =========
    max  ``65535``
    min  ``0``
    ===  =========

**MC** ``integer_as_string``

    Number of motor cycles

    ===  =========
    max  ``65535``
    min  ``0``
    ===  =========

**C** ``integer_as_string``

    Number of bicycles

    ===  =========
    max  ``65535``
    min  ``0``
    ===  =========

**F** ``integer_as_string``

    Number of pedestrians

    ===  =========
    max  ``65535``
    min  ``0``
    ===  =========

.. _S0205:

S0205 Traffic Counting: Number of vehicles
^^^^^^^^

Available from SXL version: ``1.0.14``

This status was introduced to improve performance in case traffic
counting is done on all all detectors. Please see Section 4: “Traffic
counting” for additional requirements.


**Return values**

**start** ``timestamp``

    Time stamp for start of measuring


**vehicles** ``integer_list_as_string``

    Number of vehicles |br|
    - Value expressed as an integer with a range of 0-65535. |br|
    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
    - The value is set to “-1” if no data could be measured (e.g. detector fault)


.. _S0206:

S0206 Traffic Counting: Vehicle speed
^^^^^^^^

Available from SXL version: ``1.0.14``

This status was introduced to improve performance in case traffic
counting is done on all all detectors. Please see Section 4: “Traffic
counting” for additional requirements.


**Return values**

**start** ``timestamp``

    Time stamp for start of measuring


**speed** ``integer_list_as_string``

    Average speed in km/h (integer) |br|
    - Value expressed as an integer with a range of 0-65535. |br|
    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
    - The value is set to “-1” if no data could be measured (e.g. detector fault)


.. _S0207:

S0207 Traffic Counting: Occupancy
^^^^^^^^

Available from SXL version: ``1.0.14``

This status was introduced to improve performance in case traffic
counting is done on all all detectors. Please see Section 4: “Traffic
counting” for additional requirements.


**Return values**

**start** ``timestamp``

    Time stamp for start of measuring


**occupancy** ``integer_list_as_string``

    Occupancy in percent (%) (0-100) |br|
    - Value expressed as an integer with a range of 0-100. |br|
    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
    - The value is set to “-1” if no data could be measured (e.g. detector fault)


.. _S0208:

S0208 Traffic Counting: Number of vehicles of given classification
^^^^^^^^

Available from SXL version: ``1.0.14``

This status was introduced to improve performance in case traffic
counting is done on all all detectors. Please see Section 4: “Traffic
counting” for additional requirements.


**Return values**

**start** ``timestamp``

    Time stamp for start of measuring


**P** ``integer_list_as_string``

    Number of cars |br|
    - Value expressed as an integer with a range of 0-65535. |br|
    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
    - The value is set to “-1” if no data could be measured (e.g. detector fault)


**PS** ``integer_list_as_string``

    Number of cars with trailers |br|
    - Value expressed as an integer with a range of 0-65535. |br|
    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
    - The value is set to “-1” if no data could be measured (e.g. detector fault)


**L** ``integer_list_as_string``

    Number of trucks |br|
    - Value expressed as an integer with a range of 0-65535. |br|
    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
    - The value is set to “-1” if no data could be measured (e.g. detector fault)


**LS** ``integer_list_as_string``

    Number of trucks with trailers |br|
    - Value expressed as an integer with a range of 0-65535. |br|
    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
    - The value is set to “-1” if no data could be measured (e.g. detector fault)


**B** ``integer_list_as_string``

    Number of buses |br|
    - Value expressed as an integer with a range of 0-65535. |br|
    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
    - The value is set to “-1” if no data could be measured (e.g. detector fault)


**SP** ``integer_list_as_string``

    Number of trams |br|
    - Value expressed as an integer with a range of 0-65535. |br|
    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
    - The value is set to “-1” if no data could be measured (e.g. detector fault)


**MC** ``integer_list_as_string``

    Number of motor cycles |br|
    - Value expressed as an integer with a range of 0-65535. |br|
    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
    - The value is set to “-1” if no data could be measured (e.g. detector fault)


**C** ``integer_list_as_string``

    Number of bicycles |br|
    - Value expressed as an integer with a range of 0-65535. |br|
    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
    - The value is set to “-1” if no data could be measured (e.g. detector fault)


**F** ``integer_list_as_string``

    Number of pedestrians |br|
    - Value expressed as an integer with a range of 0-65535. |br|
    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
    - The value is set to “-1” if no data could be measured (e.g. detector fault)


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
   Traffic Light Controller  `M0004`_         setRestart             Reset Traffic Light Controller
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
   Traffic Light Controller  `M0024`_         clearAlarms            Clear all alarms
   Traffic Light Controller  `M0103`_         setSecurityCode        Set security code
   Traffic Light Controller  `M0104`_         setDate                Set clock
   ========================  ===============  =====================  ===============================================


.. _M0001:

M0001 Sets functional position
^^^^^

Available from SXL version: ``1.0.1``

Sets the controller to yellow flash, dark mode or normal control.
Requires security code 2.

Normal control is the default mode of operation where the time plan is selected according 
to the day and week schedule, the M0002 command or local override.


**Arguments**

**status** ``string``

    Set operating mode


    =============  ====================
    Enum           Description
    =============  ====================
    NormalControl  Normal Control
    YellowFlash    Enables yellow flash
    Dark           Enables dark mode
    =============  ====================

**securityCode** ``string``

    Security code 2


**timeout** ``integer_as_string``

    (Optional) Time in minutes until controller automatically reverts to previous functional position |br|
    0=no automatic return

    ===  ========
    max  ``1440``
    min  ``0``
    ===  ========

**intersection** ``integer_as_string``

    (Optional) Intersection number |br|
    Command only applies to specified intersection. Other intersections remains in their respective operating mode(s). |br|
    0: All intersections

    ===  =======
    max  ``255``
    min  ``0``
    ===  =======

.. _M0002:

M0002 Sets current time plan
^^^^^

Available from SXL version: ``1.0.1``

Change of traffic program of the traffic light controller. Typical
usages is scenario based control where change of program is used to
change signal timings etc. This command changes the signal timings for
optimal traffic flow. Requires security code 2


**Arguments**

**status** ``boolean_as_string``

    False: Controller uses time plan according to programming |br|
    True: Controller uses time plan according to command


**securityCode** ``string``

    Security code 2


**timeplan** ``integer_as_string``

    designation of time plan

    ===  =======
    max  ``255``
    min  ``1``
    ===  =======

.. _M0003:

M0003 Sets traffic situation the controller uses
^^^^^

Available from SXL version: ``1.0.1``

Used for area-based control where this command can be sent to a master
traffic light controller about which predefined traffic situation to use
(1-255). Traffic situation is a concept used to divide multiple TLC’s
into areas and sub-areas. The traffic situation gives the possibility to
change the TLC sub-area dynamically depending on the time of day and the
traffic flow. Depending on the traffic situation each TLC selects the
time plan dynamically. Requires security code 2


**Arguments**

**status** ``boolean_as_string``

    False: Controller uses traffic situation according to own programming |br|
    True: Controller uses traffic situation according to command


**securityCode** ``string``

    Security code 2


**traficsituation** ``integer_as_string``

    designation of traficsituation

    ===  =======
    max  ``255``
    min  ``1``
    ===  =======

.. _M0004:

M0004 Reset Traffic Light Controller
^^^^^

Available from SXL version: ``1.0.1``

This command is used as a last resort to attempt to remotely fix serious
faults. If unsuccessful, manual intervention on site is probably
required.

The controller must attempt all available safe action to reset to a
functional state. Depending on regulations and controller capabilities,
examples actions could be:

- resetting parameters to defaults
- restarting applications
- restarting peripheral hardware
- going through a shutdown/startup sequence and cycling power

The controller must also clear all alarms.

Requires security code 2. The attribute ‘status’ is deprecated and must
be set to true.


**Arguments**

**status** ``boolean_as_string``

    True: Reset controller


**securityCode** ``string``

    Security code 2


.. _M0005:

M0005 Activate emergency route
^^^^^

Available from SXL version: ``1.0.1``

The function is made for emergency prioritization. Works in the same way
as the M0006 and M0008 where the traffic light controller responds to an
input. Should be used in situations where full priority is given in the
emergency vehicle program. Requires security code 2.


**Arguments**

**status** ``boolean_as_string``

    False: Deactivate emergency route |br|
    True: Activate emergency route


**securityCode** ``string``

    Security code 2


**emergencyroute** ``integer_as_string``

    Number of emergency route

    ===  =======
    max  ``255``
    min  ``1``
    ===  =======

.. _M0006:

M0006 Activate input
^^^^^

Available from SXL version: ``1.0.1``

Set given input (1-255) of the controllers general purpose I/O to either
true or false. The function can provide an input to the traffic light
controller on which a predefined action can be taken. Can be used for
all types of input where the traffic light controller must react to
external control. Typical usages are bus priority, coordination between
traffic controllers, external control systems, and much more. Requires
security code 2.


**Arguments**

**status** ``boolean_as_string``

    False: Deactivate input |br|
    True: Activate input


**securityCode** ``string``

    Security code 2


**input** ``integer_as_string``

    Number of Input

    ===  =======
    max  ``255``
    min  ``1``
    ===  =======

.. _M0007:

M0007 Activate fixed time control
^^^^^

Available from SXL version: ``1.0.2``

Deactivates the traffic actuated control using detectors and activates
pre-timed control. Can be used in case normal detectors can’t be used,
e.g. during maintenance work. Requires security code 2.


**Arguments**

**status** ``boolean_as_string``

    False: Deactivate fixed time control |br|
    True: Activate fixed time control


**securityCode** ``string``

    Security code 2


.. _M0008:

M0008 Force detector logic
^^^^^

Available from SXL version: ``1.0.3``

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

**status** ``boolean_as_string``

    False: Release detector logic, 'mode' is ignored |br|
    True: Force detector logic to the value in 'mode'.


**duration** ``integer_as_string``

    If set, automatically release after this number of |br|
    milliseconds. Ignored if 'status' is false. |br|
    Setting to zero is the same as leaving out, and means |br|
    no automatic release will happen.

    ===  =====
    min  ``0``
    ===  =====

**securityCode** ``string``

    Security code 2


**mode** ``boolean_as_string``

    Mode to force to (ignored if 'status' is false) |br|
    False: Deactivate detector logic |br|
    True: Activate detector logic


.. _M0010:

M0010 ``Reserved``
^^^^^

Available from SXL version: ``1.0.8``

``Reserved``

**Arguments**

**status** ``boolean_as_string``

    ``Reserved``


**securityCode** ``string``

    ``Reserved``


.. _M0011:

M0011 ``Reserved``
^^^^^

Available from SXL version: ``1.0.8``

``Reserved``

**Arguments**

**status** ``boolean_as_string``

    ``Reserved``


**securityCode** ``string``

    ``Reserved``


.. _M0012:

M0012 ``Reserved``
^^^^^

Available from SXL version: ``1.0.8``

``Reserved``

**Arguments**

**status** ``string_list_as_string``

    ``Reserved``


**securityCode** ``string``

    ``Reserved``


.. _M0013:

M0013 Activate a series of inputs
^^^^^

Available from SXL version: ``1.0.8``

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

- ‘Offset’ defines where the 16 inputs starts from
- ‘Bits to set’ defines which bit(s) to set. ‘0’ if unused
- ‘Bits to unset’ defines which bit(s) to unset. ‘0’ if unused

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

**status** ``string_list_as_string``

    Sets/Unsets a block of 16 inputs at a time. Can be repeated to set several blocks of 16 inputs. Values are separated with comma. Blocks are separated with semicolon |br|
    Format: [Offset];[Bits to set];[Bits to unset];…


**securityCode** ``string``

    Security code 2


.. _M0014:

M0014 Set dynamic bands
^^^^^

Available from SXL version: ``1.0.13``

Can be used to change between predefined signal timings. Moves the start
of signal groups in the cycle. This command can be used to change the
split of green time during the cycle. A typical usage is scenario based
control where changing of signal timings is used for optimal traffic
flow. Requires security code 2


**Arguments**

**plan** ``integer_as_string``

    Plan to be changed

    ===  =======
    max  ``255``
    min  ``0``
    ===  =======

**status** ``string_list_as_string``

    Dynamic bands |br|
    Each dynamic band are written as dd-ee where: |br|
    dd=Dynamic band number (from 1-10) |br|
    ee=Extension in seconds in this band |br|
    |br|
    Each dynamic band is separated with a comma. |br|
    |br|
    E.g. |br|
    dd-ee,dd-ee


**securityCode** ``string``

    Security code 2


.. _M0015:

M0015 Set Offset time
^^^^^

Available from SXL version: ``1.0.13``

Offset time is used to define an offset between intersections in
coordinated control. It is based on the expected travel time between
intersections. This command can be used to fine tune the coordination
for optimal traffic flow. Requires security code 2.


**Arguments**

**status** ``integer_as_string``

    Set offset time in seconds

    ===  =======
    max  ``255``
    min  ``0``
    ===  =======

**plan** ``integer_as_string``

    Time plan nr

    ===  =======
    max  ``255``
    min  ``0``
    ===  =======

**securityCode** ``string``

    Security code 2


.. _M0016:

M0016 Set week time table
^^^^^

Available from SXL version: ``1.0.13``

Set which time table for signal programs to use for each day during a
week. This command changes the signal timings during the week for
optimal traffic flow. Requires security code 2.


**Arguments**

**status** ``string_list_as_string``

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
    E.g. |br|
    d-t,d-t


**securityCode** ``string``

    Security code 2


.. _M0017:

M0017 Set time tables
^^^^^

Available from SXL version: ``1.0.13``

Set time of day for when to automatically switch signal program (time
plan). This command changes the signal timings according to time of day
for optimal traffic flow. Requires security code 2.


**Arguments**

**status** ``string_list_as_string``

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


**securityCode** ``string``

    Security code 2


.. _M0018:

M0018 Set Cycle time
^^^^^

Available from SXL version: ``1.0.13``

Cycle time (or cycle length) is the sum of all phases in a time plan
(traffic program). This time is fixed when using fixed time control or
coordination (except “local coordination”). When the cycle counter
reaches this length it is reset back to zero. This command provides the
ability to change the cycle time when using coordinated or fixed time
control. It changes the timings for optimal traffic flow. Can be used
with scenario based control. Requires security code 2.


**Arguments**

**status** ``integer_as_string``

    Set cycle time in seconds

    ===  =======
    max  ``255``
    min  ``1``
    ===  =======

**plan** ``integer_as_string``

    Time plan nr

    ===  =======
    max  ``255``
    min  ``0``
    ===  =======

**securityCode** ``string``

    Security code 2


.. _M0019:

M0019 Force input
^^^^^

Available from SXL version: ``1.0.13``

Force a given input (1-255) of the controllers general purpose I/O to
either True or False. Can be used for all types of input where the
traffic light controller must react to external control. Can be used for
bus priority, coordination between traffic controllers, external control
systems, and much more. Requires security code 2.


**Arguments**

**status** ``boolean_as_string``

    False: Release input |br|
    True: Force input


**securityCode** ``string``

    Security code 2


**input** ``integer_as_string``

    Number of Input

    ===  =======
    max  ``255``
    min  ``1``
    ===  =======

**inputValue** ``boolean_as_string``

    False: input forced to False |br|
    True: input forced to True


.. _M0020:

M0020 Force output
^^^^^

Available from SXL version: ``1.0.15``

Force a given output (1-255) of the controllers general purpose I/O to
either True of False. Can be used for all types of output where the
traffic light controller needs to control other equipment. Can be used
for bus priority, coordination between traffic controllers, external
control systems, and much more. When the output is released
(status=False), the outputValue is ignored. Requires security code 2.


**Arguments**

**status** ``boolean_as_string``

    True: Force output |br|
    False: Release output


**securityCode** ``string``

    Security code 2


**output** ``integer_as_string``

    Number of Output

    ===  =======
    max  ``255``
    min  ``1``
    ===  =======

**outputValue** ``boolean_as_string``

    False: output forced off |br|
    True: output forced on


.. _M0021:

M0021 Set trigger level sensitivity for loop detector
^^^^^

Available from SXL version: ``1.0.15``

The trigger level sensitivity determines at what level a loop detector
should trigger. If it set too low then then traffic will not be detected
as intended. If it is set too high the detector might give false
positives. This command provides the ability to fine tune loop detectors
to make sure they detect traffic as intended. Requires security code 2


**Arguments**

**status** ``string_list_as_string``

    Loop detector trigger level sensitivity is written as dd-ss where: |br|
    dd=loop detector number |br|
    ss=sensitivity value


**securityCode** ``string``

    Security code 2


.. _M0022:

M0022 Request Signal Priority
^^^^^

Available from SXL version: ``1.1.0``

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

- Reference a signal group by setting ‘signalGroupId’. This method is
  simple, but will not allow you to have different priority mechanism
  for the same signal group, unless they can be distinguished by the
  vehicle type. For example, if you need to trigger different priorities
  depending on whether a bus goes straight or makes a turn for the same
  signal group, you need to use of the other referencing methods.
- Reference an input by setting ‘inputId’. This can be useful if you
  previously used inputs to activate priority. The input will not be
  activated, only the priority.
- Reference a connection by setting ‘connectionId’. A connection is a
  movement from a specific ingoing lane to a specific outgoing lane.
- Reference an intersection approach by setting ‘approachId’.
- Reference an ingoing lane by setting ‘laneInId’, and optionally also
  reference an outgoing lane by setting ‘laneOutId’.

Referencing attributes that are not used must be left out, rather than
set to null or empty strings. This includes:

- signalGroupId
- inputId
- connectionId
- approachId
- laneInId
- laneOutId

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

**requestId** ``string``

    A string that uniquely identifies the request on the controller


**signalGroupId** ``string``

    (Optional) ID of a signal group component


**inputId** ``integer_as_string``

    (Optional) ID of an input, using the same numbering scheme as M0006

    ===  =======
    max  ``255``
    min  ``0``
    ===  =======

**connectionId** ``integer_as_string``

    (Optional) ID of a connection, connecting an ingoing and an outgoing lane

    ===  =======
    max  ``255``
    min  ``0``
    ===  =======

**approachId** ``integer_as_string``

    (Optional) ID of an intersection approach

    ===  ======
    max  ``16``
    min  ``0``
    ===  ======

**laneInId** ``integer_as_string``

    (Optional) ID of an ingoing lane

    ===  =======
    max  ``255``
    min  ``0``
    ===  =======

**laneOutId** ``integer_as_string``

    (Optional) ID of an outgoing lane

    ===  =======
    max  ``255``
    min  ``0``
    ===  =======

**priorityId** ``integer_as_string``

    (Optional) ID of a priority

    ===  =======
    max  ``255``
    min  ``0``
    ===  =======

**type** ``string``



    ======  ===================================
    Enum    Description
    ======  ===================================
    new     New priority request
    update  Update to existing priority request
    cancel  Cancel an existing priority
    ======  ===================================

**level** ``integer_as_string``

    0: Lowest, 14: Highest

    ===  ======
    max  ``14``
    min  ``0``
    ===  ======

**eta** ``integer_as_string``

    (Optional) Estimated time of arrival to the intersection, in seconds

    ===  =======
    max  ``255``
    min  ``0``
    ===  =======

**vehicleType** ``string``

    (Optional) Vehicle type


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

.. _M0023:

M0023 Set timeout for dynamic bands
^^^^^

Available from SXL version: ``1.1.0``

Switch to a designated time plan if this timeout is reached due to lost
connection with the supervisor. Disable by setting timeout to ‘0’. Used
in conjunction with dynamic bands, M0014 Requires security code 2.


**Arguments**

**status** ``integer_as_string``

    Timeout, in minutes

    ===  =========
    max  ``65535``
    min  ``0``
    ===  =========

**securityCode** ``string``

    Security code 2


.. _M0024:

M0024 Clear all alarms
^^^^^

Available from SXL version: ``1.3.0``

Clear all active alarms in the traffic light controller. If the cause of
an alarm is still present, the alarm will be reactivated again.


**Arguments**

**status** ``boolean``

    True: Clear all alarms


.. _M0103:

M0103 Set security code
^^^^^

Available from SXL version: ``1.0.1``

Change the security code to use when sending commands Security codes are
used as an extra layer of security in many commands. They need to match
between the supervision system and the traffic light controller in order
for the commands to be executed.


**Arguments**

**status** ``string``



    ======  ======================
    Enum    Description
    ======  ======================
    Level1  Change security code 1
    Level2  Change security code 2
    ======  ======================

**oldSecurityCode** ``string``

    Previous security code


**newSecurityCode** ``string``

    New security code


.. _M0104:

M0104 Set clock
^^^^^

Available from SXL version: ``1.0.1``

This command will be removed in an upcoming version. You should instead
use automatic time synchronization using e.g. using NTP or GPS.

Can be used to manually set the clock of the traffic light controller in
case automatic time synchronization is not available, e.g. during
maintenance work.

If automatic time synchronization is active, the command returns a
normal response, but is otherwise ignored and does not set the clock.

UTC is used. Requires security code 1.


**Arguments**

**securityCode** ``string``

    Security code 1


**year** ``integer_as_string``

    Year

    ===  ========
    max  ``9999``
    min  ``0``
    ===  ========

**month** ``integer_as_string``

    Month

    ===  ======
    max  ``12``
    min  ``1``
    ===  ======

**day** ``integer_as_string``

    Day of month

    ===  ======
    max  ``31``
    min  ``1``
    ===  ======

**hour** ``integer_as_string``

    Hour

    ===  ======
    max  ``23``
    min  ``0``
    ===  ======

**minute** ``integer_as_string``

    Minute

    ===  ======
    max  ``59``
    min  ``0``
    ===  ======

**second** ``integer_as_string``

    Second

    ===  ======
    max  ``59``
    min  ``0``
    ===  ======

.. |br| replace:: |br_html| |br_latex|

.. |br_html| raw:: html

   <br>

.. |br_latex| raw:: latex

   \newline

