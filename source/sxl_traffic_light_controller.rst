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


   ===========  ===========================  ==============================================================================================================================================
     State-Bit  Description                  Comment
   ===========  ===========================  ==============================================================================================================================================
             1  Local mode                   Traffic Light Controller is in local mode. NTS has no control.
             2  No Communications
             3  High Priority Fault          Traffic Light Controller is in fail safe mode; e.g. yellow flash or dark mode
             4  Medium Priority Fault        Traffic Light Controller has a medium priority fault, but not in fail safe mode. E.g. several lamp faults or detector fault
             5  Low Priority Fault           Traffic Light Controller has a low priority fault. E.g. Detector fault
             6  Connected / Normal - In Use
             7  Connected / Normal - Idle    Traffic Light Controller dark according to configuration. NOTE! When dark according to configuration the controller is considered to be in use
             8  Not Connected
   ===========  ===========================  ==============================================================================================================================================


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



.. tabularcolumns:: |\Yl{0.15}|\Yl{0.10}|\Yl{0.20}|\Yl{0.55}|

.. table:: A0007
   :class: longtable


   ========  ======  ==========  ==================================================
   Name      Type    Enum        Comment
   ========  ======  ==========  ==================================================
   protocol  string  -rsmp |br|  Type of communication error, e.g. NTP or RSMP |br|
                     -ntp        rsmp: RSMP |br|
                                 ntp: NTP
   ========  ======  ==========  ==================================================


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



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.44999999999999996}|

.. table:: A0008
   :class: longtable


   ========  =======  =====  =====  =================
   Name      Type       Min    Max  Comment
   ========  =======  =====  =====  =================
   timeplan  integer      1    255  Current time plan
   ========  =======  =====  =====  =================


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



.. tabularcolumns:: |\Yl{0.15}|\Yl{0.10}|\Yl{0.20}|\Yl{0.55}|

.. table:: A0201
   :class: longtable


   ======  ======  ============  ===================
   Name    Type    Enum          Comment
   ======  ======  ============  ===================
   color   string  -red |br|     Color of lamp |br|
                   -yellow |br|  red: red |br|
                   -green        yellow: yellow |br|
                                 green: green
   ======  ======  ============  ===================


A0202
^^^^^

Less serious lamp error

Used for lamp errors. Is a “minor fault” defined according to 3.11 in
EN12675.



.. tabularcolumns:: |\Yl{0.15}|\Yl{0.10}|\Yl{0.20}|\Yl{0.55}|

.. table:: A0202
   :class: longtable


   ======  ======  ============  ===================
   Name    Type    Enum          Comment
   ======  ======  ============  ===================
   color   string  -red |br|     Color of lamp |br|
                   -yellow |br|  red: red |br|
                   -green        yellow: yellow |br|
                                 green: green
   ======  ======  ============  ===================


A0301
^^^^^

Detector error (hardware)

Is a “minor fault” defined according to 3.11 in EN12675.



.. tabularcolumns:: |\Yl{0.15}|\Yl{0.10}|\Yl{0.20}|\Yl{0.55}|

.. table:: A0301
   :class: longtable


   =========  =======  ==========  ===============================================
   Name       Type     Enum        Comment
   =========  =======  ==========  ===============================================
   detector   string               Designation of the detector (hardware)
   type       string   -loop |br|  Type of detector |br|
                       -input      loop: Inductive detector loop |br|
                                   input: External input
   errormode  string   -on |br|    Detector forced on/off while detector error
                       -off
   manual     boolean              Manually controlled detector logic (True/False)
   =========  =======  ==========  ===============================================


A0302
^^^^^

Detector error (logic error)

For instance; detector continuously on or off during an extended time.
Is a “minor fault” defined according to 3.11 in EN12675.



.. tabularcolumns:: |\Yl{0.15}|\Yl{0.10}|\Yl{0.20}|\Yl{0.55}|

.. table:: A0302
   :class: longtable


   ==========  =======  ================  ==================================================================
   Name        Type     Enum              Comment
   ==========  =======  ================  ==================================================================
   detector    string                     Designation of the detector (hardware)
   type        string   -loop |br|        Type of detector |br|
                        -input            loop: Inductive detector loop |br|
                                          input: External input
   errormode   string   -on |br|          Detector forced on/off while detector error
                        -off
   manual      boolean                    Manually controlled detector logic (True/False)
   logicerror  string   -always_off |br|  Type of logic error |br|
                        -always_on |br|   always_off: no detection during predefined max time |br|
                        -intermittent     always_on: detection constantly on during predefined max time |br|
                                          intermittent: intermittent logic fault (flutter)
   ==========  =======  ================  ==================================================================


A0303
^^^^^

Serious detector error (hardware)

Is a “major fault” defined according to 3.8 i EN12675 which causes the
controller to switch to a “failure mode” according to 3.6 in EN12675.



.. tabularcolumns:: |\Yl{0.15}|\Yl{0.10}|\Yl{0.20}|\Yl{0.55}|

.. table:: A0303
   :class: longtable


   =========  =======  ==========  ===============================================
   Name       Type     Enum        Comment
   =========  =======  ==========  ===============================================
   detector   string               Designation of the detector (hardware)
   type       string   -loop |br|  Type of detector |br|
                       -input      loop: Inductive detector loop |br|
                                   input: External input
   errormode  string   -on |br|    Detector forced on/off while detector error
                       -off
   manual     boolean              Manually controlled detector logic (True/False)
   =========  =======  ==========  ===============================================


A0304
^^^^^

Serious detector error (logic error)

For instance; detector continuously on or off during an extended time.
Is a “major fault” defined according to 3.8 i EN12675 which causes the
controller to switch to a “failure mode” according to 3.6 in EN12675



.. tabularcolumns:: |\Yl{0.15}|\Yl{0.10}|\Yl{0.20}|\Yl{0.55}|

.. table:: A0304
   :class: longtable


   ==========  =======  ================  ==================================================================
   Name        Type     Enum              Comment
   ==========  =======  ================  ==================================================================
   detector    string                     Designation of the detector (hardware)
   type        string   -loop |br|        Type of detector |br|
                        -input            loop: Inductive detector loop |br|
                                          input: External input
   errormode   string   -on |br|          Detector forced on/off while detector error
                        -off
   manual      boolean                    Manually controlled detector logic (True/False)
   logicerror  string   -always_off |br|  Type of logic error |br|
                        -always_on |br|   always_off: no detection during predefined max time |br|
                        -intermittent     always_on: detection constantly on during predefined max time |br|
                                          intermittent: intermittent logic fault (flutter)
   ==========  =======  ================  ==================================================================


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
   Traffic Light Controller  `S0018`_        Number of time plans
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



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.44999999999999996}|

.. table:: S0001
   :class: longtable


   =================  =======  =====  =====  =================================================================================
   Name               Type     Min    Max    Comment
   =================  =======  =====  =====  =================================================================================
   signalgroupstatus  string                 Signal group status as text field |br|
                                             Each character represent the state of the signal group in consecutive order. |br|
                                             Signal group status is described in detail in the corresponding section. |br|
                                             - = Signal group is undefined/does not exist
   cyclecounter       integer  0      999    Cycle counter |br|
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
   basecyclecounter   integer  0      999    Base cycle counter |br|
                                             Used for handling of coordination between TLC’s. |br|
                                             Synchronized between all TLC’s in an active coordination. |br|
                                             See the coordination section for more information.
   stage              integer  0      999    Current stage (isolated)
   =================  =======  =====  =====  =================================================================================


S0002
^^^^^^^^

Detector logic status

Provides the status of all detector logics of the controller. Can be
used to draw a live signal group diagram as well provide diagnostic
information about the performance of the controller. Can also be used
for bus priority, external control systems, and much more.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.6499999999999999}|

.. table:: S0002
   :class: longtable


   ===================  ======  ===================================================================================
   Name                 Type    Comment
   ===================  ======  ===================================================================================
   detectorlogicstatus  string  Detector logic status as text field |br|
                                Each character represent the state of the detector logic in consecutive order. |br|
                                0 : Detector logic is not active |br|
                                1 : Detector logic is active |br|
                                - : Detector logic is undefined/does not exist
   ===================  ======  ===================================================================================


S0003
^^^^^^^^

Input status

Input (1-255) of the controllers general purpose I/O. Input is used
where the traffic light controller must react to external control. It
could be external detectors, bus priority, and much more.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.6499999999999999}|

.. table:: S0003
   :class: longtable


   ===================  ======  ==========================================================================================
   Name                 Type    Comment
   ===================  ======  ==========================================================================================
   inputstatus          string  Input status as text field |br|
                                Each character represent the state of the input in consecutive order. |br|
                                0 : Input is not active |br|
                                1 : Input is active |br|
                                - : Input is undefined/does not exist
   extendedinputstatus  string  ``Deprecated`` Extended input status as text field |br|
                                Each character represent the state of the extended input status in consecutive order. |br|
                                0 : Input is not active |br|
                                1 : Input is active |br|
                                - : Input is undefined/does not exist
   ===================  ======  ==========================================================================================


S0004
^^^^^^^^

Output status

Output (1-255) of the controllers general purpose I/O. Can be used for
all types of output where the traffic light controller needs to control
other equipment. Can be used for bus priority, coordination between
traffic controllers, external control systems, and much more.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.6499999999999999}|

.. table:: S0004
   :class: longtable


   ====================  ======  ===========================================================================================
   Name                  Type    Comment
   ====================  ======  ===========================================================================================
   outputstatus          string  Output status as text field |br|
                                 Each character represent the state of the output status in consecutive order. |br|
                                 0 : Output is not active |br|
                                 1 : Output is active |br|
                                 - : Output is undefined/does not exist
   extendedoutputstatus  string  ``Deprecated`` Extended output status as text field |br|
                                 Each character represent the state of the extended output status in consecutive order. |br|
                                 0 : Output is not active |br|
                                 1 : Output is active |br|
                                 - : Output is undefined/does not exist
   ====================  ======  ===========================================================================================


S0005
^^^^^^^^

Traffic Light Controller starting

The traffic signal is starting, e.g. it is in startup mode and has not
begun working normally yet. During startup mode the traffic controller
shows dark, red, yellow flash or using the predetermined start cycle
(minimum times).



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.6499999999999999}|

.. table:: S0005
   :class: longtable


   ======  =======  ==============================================
   Name    Type     Comment
   ======  =======  ==============================================
   status  boolean  False: Controller is not in start up mode |br|
                    True: Controller is currently in start up mode
   ======  =======  ==============================================


S0006
^^^^^^^^

Emergency route

The status is active during emergency prioritization. Used in situations
where full priority is given in the emergency vehicle program. If no
emergency route is active, status should be set to False, and
emergencystage to zero.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.44999999999999996}|

.. table:: S0006
   :class: longtable


   ==============  =======  =====  =====  =============================================================
   Name            Type     Min    Max    Comment
   ==============  =======  =====  =====  =============================================================
   status          boolean                False: Emergency route inactive |br|
                                          True: Emergency route active
   emergencystage  integer  0      255    Number of emergency route (set to zero if no route is active)
   ==============  =======  =====  =====  =============================================================


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



.. tabularcolumns:: |\Yl{0.15}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.20}|\Yl{0.35}|

.. table:: S0007
   :class: longtable


   ============  =======  =====  =====  ====================  ==================================================================================
   Name          Type     Min    Max    Enum                  Comment
   ============  =======  =====  =====  ====================  ==================================================================================
   intersection  integer  0      255                          Comma separated list of intersections which the status relates to, e.g. “1,2” |br|
                                                              Use “0” for all intersections of the TLC.
   status        boolean                                      False: Traffic Light Controller in dark mode |br|
                                                              True: Traffic Light Controller not in dark mode
   source        string                 -operator_panel |br|  Source of the status change |br|
                                        -calendar_clock |br|  operator_panel: Operator panel |br|
                                        -control_block |br|   calendar_clock: Calendar/clock |br|
                                        -forced |br|          control_block: Control block |br|
                                        -startup |br|         forced: Forced due to external command e.g. supervisor |br|
                                        -other                startup: Set after startup mode |br|
                                                              other: Other reason
   ============  =======  =====  =====  ====================  ==================================================================================


S0008
^^^^^^^^

Manual control

Traffic control deactivated in controller. Signal timings is controlled
manually by service personnel using the operating panel of the
controller. Please note that all values in this status uses
comma-separated lists - one value for each intersection, e.g. “0” and
“True” (one intersection) or “1,2” and “True,False” (two intersections).



.. tabularcolumns:: |\Yl{0.15}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.20}|\Yl{0.35}|

.. table:: S0008
   :class: longtable


   ============  =======  =====  =====  ====================  ==================================================================================
   Name          Type     Min    Max    Enum                  Comment
   ============  =======  =====  =====  ====================  ==================================================================================
   intersection  integer  0      255                          Comma separated list of intersections which the status relates to, e.g. “1,2” |br|
                                                              Use “0” for all intersections of the TLC.
   status        boolean                                      False: Manual control inactive |br|
                                                              True: Manual control active
   source        string                 -operator_panel |br|  Source of the status change |br|
                                        -calendar_clock |br|  operator_panel: Operator panel |br|
                                        -control_block |br|   calendar_clock: Calendar/clock |br|
                                        -forced |br|          control_block: Control block |br|
                                        -startup |br|         forced: Forced due to external command e.g. supervisor |br|
                                        -other                startup: Set after startup mode |br|
                                                              other: Other reason
   ============  =======  =====  =====  ====================  ==================================================================================


S0009
^^^^^^^^

Fixed time control

Traffic actuated control deactivated and a pre-timed control is used.
Usually only used in case normal detectors can’t be used, e.g. during
maintenance work. Please note that all values in this status uses
comma-separated lists - one value for each intersection, e.g. “0” and
“True” (one intersection) or “1,2” and “True,False” (two intersections).



.. tabularcolumns:: |\Yl{0.15}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.20}|\Yl{0.35}|

.. table:: S0009
   :class: longtable


   ============  =======  =====  =====  ====================  ==================================================================================
   Name          Type     Min    Max    Enum                  Comment
   ============  =======  =====  =====  ====================  ==================================================================================
   intersection  integer  0      255                          Comma separated list of intersections which the status relates to, e.g. “1,2” |br|
                                                              Use “0” for all intersections of the TLC.
   status        boolean                                      False: Fixed time control inactive |br|
                                                              True: Fixed time control active
   source        string                 -operator_panel |br|  Source of the status change |br|
                                        -calendar_clock |br|  operator_panel: Operator panel |br|
                                        -control_block |br|   calendar_clock: Calendar/clock |br|
                                        -forced |br|          control_block: Control block |br|
                                        -startup |br|         forced: Forced due to external command e.g. supervisor |br|
                                        -other                startup: Set after startup mode |br|
                                                              other: Other reason
   ============  =======  =====  =====  ====================  ==================================================================================


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



.. tabularcolumns:: |\Yl{0.15}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.20}|\Yl{0.35}|

.. table:: S0010
   :class: longtable


   ============  =======  =====  =====  ====================  ==================================================================================
   Name          Type     Min    Max    Enum                  Comment
   ============  =======  =====  =====  ====================  ==================================================================================
   intersection  integer  0      255                          Comma separated list of intersections which the status relates to, e.g. “1,2” |br|
                                                              Use “0” for all intersections of the TLC.
   status        boolean                                      False: Isolated control disabled |br|
                                                              True: Isolated control enabled (Vehicle actuated control or Fixed time control)
   source        string                 -operator_panel |br|  Source of the status change |br|
                                        -calendar_clock |br|  operator_panel: Operator panel |br|
                                        -control_block |br|   calendar_clock: Calendar/clock |br|
                                        -forced |br|          control_block: Control block |br|
                                        -startup |br|         forced: Forced due to external command e.g. supervisor |br|
                                        -other                startup: Set after startup mode |br|
                                                              other: Other reason
   ============  =======  =====  =====  ====================  ==================================================================================


S0011
^^^^^^^^

Yellow flash

The controller shows yellow flash. Yellow flash may be used during a
serious fault (depending on configuration) or maintenance work. It can
also be manually set using M0001. Some countries may use yellow flash as
an normal operating mode, and not necessarily during fault. Please note
that all values in this status uses comma-separated lists - one value
for each intersection, e.g. “1,2” and “True,False”



.. tabularcolumns:: |\Yl{0.15}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.20}|\Yl{0.35}|

.. table:: S0011
   :class: longtable


   ============  =======  =====  =====  ====================  ==================================================================================
   Name          Type     Min    Max    Enum                  Comment
   ============  =======  =====  =====  ====================  ==================================================================================
   intersection  integer  0      255                          Comma separated list of intersections which the status relates to, e.g. “1,2” |br|
                                                              Use “0” for all intersections of the TLC.
   status        boolean                                      False: Yellow flash disabled |br|
                                                              True: Yellow flash enabled
   source        string                 -operator_panel |br|  Source of the status change |br|
                                        -calendar_clock |br|  operator_panel: Operator panel |br|
                                        -control_block |br|   calendar_clock: Calendar/clock |br|
                                        -forced |br|          control_block: Control block |br|
                                        -startup |br|         forced: Forced due to external command e.g. supervisor |br|
                                        -other                startup: Set after startup mode |br|
                                                              other: Other reason
   ============  =======  =====  =====  ====================  ==================================================================================


S0012
^^^^^^^^

All red

The controller show all red. All red can be manually set using the
controllers operating panel during maintenance work. Please note that
all values in this status uses comma-separated lists - one value for
each intersection, e.g. “1,2” and “True,False”



.. tabularcolumns:: |\Yl{0.15}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.20}|\Yl{0.35}|

.. table:: S0012
   :class: longtable


   ============  =======  =====  =====  ====================  ==================================================================================
   Name          Type     Min    Max    Enum                  Comment
   ============  =======  =====  =====  ====================  ==================================================================================
   intersection  integer  0      255                          Comma separated list of intersections which the status relates to, e.g. “1,2” |br|
                                                              Use “0” for all intersections of the TLC.
   status        boolean                                      False: All red disabled |br|
                                                              True: All red enabled
   source        string                 -operator_panel |br|  Source of the status change |br|
                                        -calendar_clock |br|  operator_panel: Operator panel |br|
                                        -control_block |br|   calendar_clock: Calendar/clock |br|
                                        -forced |br|          control_block: Control block |br|
                                        -startup |br|         forced: Forced due to external command e.g. supervisor |br|
                                        -other                startup: Set after startup mode |br|
                                                              other: Other reason
   ============  =======  =====  =====  ====================  ==================================================================================


S0013
^^^^^^^^

Police key

The controller is forced to dark mode or yellow flash. The “police key”
is a external control switch present in some controllers that manually
switches the controller to either dark mode or yellow flash. Please note
that all values in this status uses comma-separated lists - one value
for each intersection, e.g. “1,2” and “0,1”



.. tabularcolumns:: |\Yl{0.15}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.20}|\Yl{0.35}|

.. table:: S0013
   :class: longtable


   ============  =======  =====  =====  =======  ==================================================================================
   Name          Type     Min    Max    Enum     Comment
   ============  =======  =====  =====  =======  ==================================================================================
   intersection  integer  0      255             Comma separated list of intersections which the status relates to, e.g. “1,2” |br|
                                                 Use “0” for all intersections of the TLC.
   status        integer                -0 |br|  0: disabled |br|
                                        -1 |br|  1: dark mode |br|
                                        -2 |br|  2: yellow flash |br|
                                        -3       3: all red
   ============  =======  =====  =====  =======  ==================================================================================


S0014
^^^^^^^^

Current time plan

The current time plan (signal program) used in the controller. There may
be 1-255 predefined time plans. The time plan (signal program) may
change signal timings, cycle time, control strategy and much more.
Typical usage is is scenario based control where change of program is
used to change priority etc.



.. tabularcolumns:: |\Yl{0.15}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.20}|\Yl{0.35}|

.. table:: S0014
   :class: longtable


   ======  =======  =====  =====  ====================  ===========================================================
   Name    Type     Min    Max    Enum                  Comment
   ======  =======  =====  =====  ====================  ===========================================================
   status  integer  1      255                          Current time plan
   source  string                 -operator_panel |br|  Source of the status change |br|
                                  -calendar_clock |br|  operator_panel: Operator panel |br|
                                  -control_block |br|   calendar_clock: Calendar/clock |br|
                                  -forced |br|          control_block: Control block |br|
                                  -startup |br|         forced: Forced due to external command e.g. supervisor |br|
                                  -other                startup: Set after startup mode |br|
                                                        other: Other reason
   ======  =======  =====  =====  ====================  ===========================================================


S0015
^^^^^^^^

Current traffic situation

The current traffic situation used in the controller. Used for
area-based control where a command can be sent to a master traffic light
controller about which predefined traffic situation to use (1-255).
Traffic situation is a concept used to divide multiple TLC’s into areas
and sub-areas. The traffic situation gives the possibility to change the
TLC sub-area dynamically depending on the time of day and the traffic
flow. Depending on the traffic situation each TLC selects the time plan
dynamically.



.. tabularcolumns:: |\Yl{0.15}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.20}|\Yl{0.35}|

.. table:: S0015
   :class: longtable


   ======  =======  =====  =====  ====================  ===========================================================
   Name    Type     Min    Max    Enum                  Comment
   ======  =======  =====  =====  ====================  ===========================================================
   status  integer  1      255                          Current traffic situation
   source  string                 -operator_panel |br|  Source of the status change |br|
                                  -calendar_clock |br|  operator_panel: Operator panel |br|
                                  -control_block |br|   calendar_clock: Calendar/clock |br|
                                  -forced |br|          control_block: Control block |br|
                                  -startup |br|         forced: Forced due to external command e.g. supervisor |br|
                                  -other                startup: Set after startup mode |br|
                                                        other: Other reason
   ======  =======  =====  =====  ====================  ===========================================================


S0016
^^^^^^^^

Number of detector logics

Can be used by the management system to check the number of detector
logics configured in the controller.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.44999999999999996}|

.. table:: S0016
   :class: longtable


   ======  =======  =====  =====  =========================
   Name    Type       Min    Max  Comment
   ======  =======  =====  =====  =========================
   number  integer      1  65025  Number of detector logics
   ======  =======  =====  =====  =========================


S0017
^^^^^^^^

Number of signal groups

Can be used for the management system to check the number of signal
groups configured in the controller.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.44999999999999996}|

.. table:: S0017
   :class: longtable


   ======  =======  =====  =====  =======================
   Name    Type       Min    Max  Comment
   ======  =======  =====  =====  =======================
   number  integer      1  65025  Number of signal groups
   ======  =======  =====  =====  =======================


S0018
^^^^^^^^

Number of time plans

Can be used for the management system to check the number of time plans
configured in the controller.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.44999999999999996}|

.. table:: S0018
   :class: longtable


   ======  =======  =====  =====  ==================================
   Name    Type       Min    Max  Comment
   ======  =======  =====  =====  ==================================
   number  integer      1  65025  Number of time plans (depreciated)
   ======  =======  =====  =====  ==================================


S0019
^^^^^^^^

Number of traffic situations

Can be used for the management system to check the number of traffic
situations configured in the controller.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.44999999999999996}|

.. table:: S0019
   :class: longtable


   ======  =======  =====  =====  ============================
   Name    Type       Min    Max  Comment
   ======  =======  =====  =====  ============================
   number  integer      1  65025  Number of traffic situations
   ======  =======  =====  =====  ============================


S0020
^^^^^^^^

Control mode

Can be used for the management system to check the current control mode
(startup, normal, standby, failure, test). Please note that all values
in this status uses comma-separated lists - one value for each
intersection, e.g. “1,2” and “startup,control”



.. tabularcolumns:: |\Yl{0.15}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.20}|\Yl{0.35}|

.. table:: S0020
   :class: longtable


   ============  =======  =====  =====  =============  ==================================================================================
   Name          Type     Min    Max    Enum           Comment
   ============  =======  =====  =====  =============  ==================================================================================
   intersection  integer  0      255                   Comma separated list of intersections which the status relates to, e.g. “1,2” |br|
                                                       Use “0” for all intersections of the TLC.
   controlmode   string                 -startup |br|  startup: Startup mode |br|
                                        -control |br|  control: Normal control |br|
                                        -standby |br|  standby: Standby mode |br|
                                        -failure |br|  failure: Failure mode |br|
                                        -test          test: Test mode
   ============  =======  =====  =====  =============  ==================================================================================


S0021
^^^^^^^^

Manually set detector logic

Provides status of detector logic (1-255) regarding if they are either
forced to true or false. Can be used to connect RSMP compatible
detection equipment to the traffic light controller. Can also be used
for prioritization.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.6499999999999999}|

.. table:: S0021
   :class: longtable


   ==============  ======  ================================================
   Name            Type    Comment
   ==============  ======  ================================================
   detectorlogics  string  Manually set detector logics (1/0) as text field
   ==============  ======  ================================================


S0022
^^^^^^^^

List of time plans

Provides a list of the configured time plans which is possible to use.
This status was added due to status S0018 only provides the total number
of time plans and not which were possible to use with M0002. Can be used
for the management system to check the number of time plans configured
in the controller.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.6499999999999999}|

.. table:: S0022
   :class: longtable


   ======  ======  =============================================================
   Name    Type    Comment
   ======  ======  =============================================================
   status  string  Comma separated list of configured time plans. E.g. "1,2,3,5"
   ======  ======  =============================================================


S0023
^^^^^^^^

Dynamic bands

Provides a list of all defined dynamic bands. Dynamic bands moves start
of signal groups in the cycle and changes the signal timings. A typical
usage of dynamic bands is scenario based control where changing of
signal timings is used for optimal traffic flow.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.6499999999999999}|

.. table:: S0023
   :class: longtable


   ======  ======  =====================================================
   Name    Type    Comment
   ======  ======  =====================================================
   status  string  Dynamic bands |br|
                   Each dynamic band are written as pp-dd-ee where: |br|
                   pp=Time plan |br|
                   dd=Dynamic band number (from 1-10) |br|
                   ee=Extension in seconds in this band |br|
                   |br|
                   Each dynamic band is separated with a comma. |br|
                   |br|
                   E.g. |br|
                   pp-dd-ee,pp-dd-ee
   ======  ======  =====================================================


S0024
^^^^^^^^

Offset time

Offset time is used to define an offset between intersections in
coordinated control. It is based on the expected travel time between
intersections. Can be used by the management system to check to fine
tune the coordination for optimal traffic flow.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.6499999999999999}|

.. table:: S0024
   :class: longtable


   ======  ======  ===============================================
   Name    Type    Comment
   ======  ======  ===============================================
   status  string  Offset table |br|
                   Each offset time is written as p-t where: |br|
                   p=time plan number (from 1 to 255) |br|
                   t=offset time in seconds (from 0 to 255) |br|
                   |br|
                   Each offset time is separated with a comma |br|
                   |br|
                   E.g. |br|
                   1-0,2-13-3-7
   ======  ======  ===============================================


S0025
^^^^^^^^

Time-of-Green / Time-of-Red

Provides predicted signal timings of green and red for each signal
group. Max, min and likely time to green and red.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.44999999999999996}|

.. table:: S0025
   :class: longtable


   =================  =========  =====  =====  =========================================================================================================================================================
   Name               Type       Min    Max    Comment
   =================  =========  =====  =====  =========================================================================================================================================================
   minToGEstimate     timestamp                Time stamp for the minimum time for the signal group to go to green. If the signal group is green, it is the minimum time for the next green |br|
                                               Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   maxToGEstimate     timestamp                Time stamp for the maximum time for the signal group to go to green. If the signal group is green, it is the maximum time for the next green |br|
                                               Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   likelyToGEstimate  timestamp                Time stamp for the most likely time for the signal group to go to green. If the signal group is green, it is the most likely time for the next green |br|
                                               Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   ToGConfidence      integer    0      100    Confidence of the likelyToGEstimate. 0-100%
   minToREstimate     timestamp                Time stamp for the minimum time for the signal group to go to red. If the signal group is red, it is the minimum time for the next red |br|
                                               Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   maxToREstimate     timestamp                Time stamp for the maximum time for the signal group to go to red. If the signal group is red, it is the maximum time for the next red |br|
                                               Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   likelyToREstimate  timestamp                Time stamp for the most likely time for the signal group to go to red. If the signal group is red, it is the most likely time for the next red |br|
                                               Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   ToRConfidence      integer    0      100    Confidence of the likelyToREstimate. 0-100%
   =================  =========  =====  =====  =========================================================================================================================================================


S0026
^^^^^^^^

Week time table

Week time table for signal programs (time plan) to use for each day
during a week. The week time table determine which predefined signal
timings (time plan) to use during the week for optimal traffic flow.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.6499999999999999}|

.. table:: S0026
   :class: longtable


   ======  ======  =================================================================
   Name    Type    Comment
   ======  ======  =================================================================
   status  string  Week time table. Defines time table to use for each week day |br|
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
   ======  ======  =================================================================


S0027
^^^^^^^^

Time tables

Time of day for when to switch signal program (time plan). The signal
timings (time plan) to use during time of day for optimal traffic flow.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.6499999999999999}|

.. table:: S0027
   :class: longtable


   ======  ======  ======================================================
   Name    Type    Comment
   ======  ======  ======================================================
   status  string  Time Table. Defines time tables |br|
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
   ======  ======  ======================================================


S0028
^^^^^^^^

Cycle time

Cycle time (or cycle length) is the sum of all phases in a time plan
(traffic program). This time is fixed when using fixed time control or
coordination (except “local coordination”). When the cycle counter
reaches this length it is reset back to zero. Changing the cycle time
can be used as part of scenario based control.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.6499999999999999}|

.. table:: S0028
   :class: longtable


   ======  ======  ===============================================
   Name    Type    Comment
   ======  ======  ===============================================
   status  string  Cycle time table |br|
                   Each cycle time is written as pp-tt where: |br|
                   pp=time plan |br|
                   tt=cycle time in seconds |br|
                   |br|
                   Each cycle time is separated with a comma |br|
                   |br|
                   E.g. |br|
                   pp-tt,pp-tt
   ======  ======  ===============================================


S0029
^^^^^^^^

Forced input status

Provide status of input (1-255) regarding if they are forced or not. Can
be used for all types of input where the traffic light controller must
react to external control. Can be used for bus priority, coordination
between traffic controllers, external control systems, and much more.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.6499999999999999}|

.. table:: S0029
   :class: longtable


   ======  ======  =================================
   Name    Type    Comment
   ======  ======  =================================
   status  string  Forced input status as text field
   ======  ======  =================================


S0030
^^^^^^^^

Forced output status

Provide status of output (1-255) regarding if they are forced or not.
Can be used for all types of output where the traffic light controller
needs to control other equipment. Can be used for bus priority,
coordination between traffic controllers, external control systems, and
much more.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.6499999999999999}|

.. table:: S0030
   :class: longtable


   ======  ======  ==================================
   Name    Type    Comment
   ======  ======  ==================================
   status  string  Forced output status as text field
   ======  ======  ==================================


S0031
^^^^^^^^

Trigger level sensitivity for loop detector

The trigger level sensitivity determines at what level the loop detector
should trigger. If it set too low then then traffic will not be detected
as intended. If it is set too high the detector might give false
positives. Can be used to make sure that the detectors detect traffic as
intended.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.6499999999999999}|

.. table:: S0031
   :class: longtable


   ======  ======  =======================================================================
   Name    Type    Comment
   ======  ======  =======================================================================
   status  string  Loop detector trigger level sensitivity is written as dd-ss where: |br|
                   dd=loop detector number |br|
                   ss=sensitivity value |br|
                   Each loop detector is separated with a comma. E.g.dd-ss,dd-ss.
   ======  ======  =======================================================================


S0032
^^^^^^^^

Coordinated control

This status is used when coordination between traffic light controllers
is active. Coordination is described in detail in the corresponding
section Please note that all values in this status uses comma-separated
lists - one value for each intersection, e.g. “1,2” and
“centralized,off”



.. tabularcolumns:: |\Yl{0.15}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.20}|\Yl{0.35}|

.. table:: S0032
   :class: longtable


   ============  =======  =====  =====  ====================  ==================================================================================
   Name          Type     Min    Max    Enum                  Comment
   ============  =======  =====  =====  ====================  ==================================================================================
   intersection  integer  0      255                          Comma separated list of intersections which the status relates to, e.g. “1,2” |br|
                                                              Use “0” for all intersections of the TLC.
   status        string                 -local |br|           local: Local coordination |br|
                                        -centralized |br|     centralized: Coordination with synchronized clock |br|
                                        -off                  off: Coordination not active
   source        string                 -operator_panel |br|  Source of the status change |br|
                                        -calendar_clock |br|  operator_panel: Operator panel |br|
                                        -control_block |br|   calendar_clock: Calendar/clock |br|
                                        -forced |br|          control_block: Control block |br|
                                        -startup |br|         forced: Forced due to external command e.g. supervisor |br|
                                        -other                startup: Set after startup mode |br|
                                                              other: Other reason
   ============  =======  =====  =====  ====================  ==================================================================================


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



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.6499999999999999}|

.. table:: S0033
   :class: longtable


   ======  ======  ===================================
   Name    Type    Comment
   ======  ======  ===================================
   status  array   JSON array of priority status items
   ======  ======  ===================================


.. tabularcolumns:: |\Yl{0.15}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.20}|\Yl{0.35}|

.. table:: S0033 status
   :class: longtable


   ======  =========  =====  =====  ===============  ============================================================================================
   Name    Type       Min    Max    Enum             Comment
   ======  =========  =====  =====  ===============  ============================================================================================
   r       string                                    ID of the priority request
   t       timestamp                                 Timestamp, indicating when the priority last changed state |br|
                                                     Format according to W3C XML dateTime with a resolution of 3 decimal places. |br|
                                                     All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   s       string                   -received |br|   Current status of the priority request |br|
                                    -queued |br|     received: A new priority request was received but has not yet been processed |br|
                                    -activated |br|  queued: The priority request has been queued for later activation |br|
                                    -completed |br|  activated: The priority was activated |br|
                                    -timeout |br|    completed: The priority was cancelled as expected |br|
                                    -rejected |br|   timeout: The priority has been queued for too long |br|
                                    -cooldown |br|   rejected: The priority request cannot be granted |br|
                                    -stale           cooldown: A similar priority request means the priority request cannot be activated now |br|
                                                     stale: The priority has been active too long without cancellation, and was therefore removed
   e       integer    0      255                     (Optional) Estimated green extension provided by the priority, in seconds |br|
                                                     Only used when state is ‘completed’.
   d       integer    0      255                     (Optional) Estimated red reduction provided by the priority, in seconds |br|
                                                     Only used when state is ‘completed’.
   ======  =========  =====  =====  ===============  ============================================================================================


S0034
^^^^^^^^

Timeout for dynamic bands

Time until a designated time plan is entered due to lost connection with
the supervisor. Disabled if set to ‘0’. Used in conjunction with dynamic
bands, M0014



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.44999999999999996}|

.. table:: S0034
   :class: longtable


   ======  =======  =====  =====  ===================
   Name    Type       Min    Max  Comment
   ======  =======  =====  =====  ===================
   status  integer      0  65535  Timeout, in minutes
   ======  =======  =====  =====  ===================


S0091
^^^^^^^^

Operator logged in/out OP-panel

Provides information if maintenance personnel is currently working on
site.



.. tabularcolumns:: |\Yl{0.15}|\Yl{0.10}|\Yl{0.20}|\Yl{0.55}|

.. table:: S0091
   :class: longtable


   ======  =======  =======  =================================================
   Name    Type     Enum     Comment
   ======  =======  =======  =================================================
   user    integer  -0 |br|  0: Nobody logged in |br|
                    -1 |br|  1: Operator logged in at level 1 (read only) |br|
                    -2       2: Operator logged in at level 2 (read/write)
   ======  =======  =======  =================================================


S0092
^^^^^^^^

Operator logged in/out web-interface

Provides information if maintenance personnel is currently working with
the controller.



.. tabularcolumns:: |\Yl{0.15}|\Yl{0.10}|\Yl{0.20}|\Yl{0.55}|

.. table:: S0092
   :class: longtable


   ======  =======  =======  =================================================
   Name    Type     Enum     Comment
   ======  =======  =======  =================================================
   user    integer  -0 |br|  0: Nobody logged in |br|
                    -1 |br|  1: Operator logged in at level 1 (read only) |br|
                    -2       2: Operator logged in at level 2 (read/write)
   ======  =======  =======  =================================================


S0095
^^^^^^^^

Version of Traffic Light Controller

Provides diagnostic version information.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.6499999999999999}|

.. table:: S0095
   :class: longtable


   ======  ======  ==================================================================
   Name    Type    Comment
   ======  ======  ==================================================================
   status  string  Manufacturer, product name and version of traffic light controller
   ======  ======  ==================================================================


S0096
^^^^^^^^

Current date and time

Note: UTC is used. Provides diagnostic information about the current
date and time set in the controller.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.44999999999999996}|

.. table:: S0096
   :class: longtable


   ======  =======  =====  =====  ============
   Name    Type       Min    Max  Comment
   ======  =======  =====  =====  ============
   year    integer      0   9999  Year
   month   integer      1     12  Month
   day     integer      1     31  Day of month
   hour    integer      0     23  Hour
   minute  integer      0     59  Minute
   second  integer      0     59  Second
   ======  =======  =====  =====  ============


S0097
^^^^^^^^

Checksum of traffic parameters

Can be used to check if any traffic parameter has been changed. For
instance, depending on controller, maintenance personnel can modify
traffic parameters on site to optimize traffic flow. This status
provides the ability to monitor if any traffic parameter has been
changed. The traffic parameters may be downloaded with S0098.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.6499999999999999}|

.. table:: S0097
   :class: longtable


   =========  =========  =============================================================================================================================================================
   Name       Type       Comment
   =========  =========  =============================================================================================================================================================
   checksum   string     Checksum of the traffic parameters |br|
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
   timestamp  timestamp  Time stamp of the checksum. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   =========  =========  =============================================================================================================================================================


S0098
^^^^^^^^

Configuration of traffic parameters

Can be used to download all traffic parameters from the controller. For
instance, depending on controller, maintenance personnel can modify
traffic parameters on site to optimize traffic flow. This status
provides the ability to downloaded them.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.6499999999999999}|

.. table:: S0098
   :class: longtable


   =========  =========  ===========================================================================================================================================================
   Name       Type       Comment
   =========  =========  ===========================================================================================================================================================
   config     base64     Traffic parameters |br|
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
   timestamp  timestamp  Time stamp of the config. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   version    string     Version information of the configuration. Contains basic information such as controller id, changes to config and other information |br|
                         The format is not specified in detail.
   =========  =========  ===========================================================================================================================================================


S0201
^^^^^^^^

Traffic Counting: Number of vehicles

Used for Traffic counting.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.44999999999999996}|

.. table:: S0201
   :class: longtable


   =========  =========  =====  =====  ====================================================================================================================================================================
   Name       Type       Min    Max    Comment
   =========  =========  =====  =====  ====================================================================================================================================================================
   starttime  timestamp                Time stamp for start of measuring. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   vehicles   integer    0      65535  Number of vehicles on a given detector logic (since last update)
   =========  =========  =====  =====  ====================================================================================================================================================================


S0202
^^^^^^^^

Traffic Counting: Vehicle speed

Used for Traffic counting.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.44999999999999996}|

.. table:: S0202
   :class: longtable


   =========  =========  =====  =====  ========================================================================
   Name       Type       Min    Max    Comment
   =========  =========  =====  =====  ========================================================================
   starttime  timestamp                Time stamp for start of measuring. Format according to W3C |br|
                                       XML dateTime with a resolution of 3 decimal places. All time stamps |br|
                                       in UTC. E.g. 2009-10-02T14:34:34.341Z
   speed      integer    0      65535  Average speed in km/h
   =========  =========  =====  =====  ========================================================================


S0203
^^^^^^^^

Traffic Counting: Occupancy

Used for Traffic counting.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.44999999999999996}|

.. table:: S0203
   :class: longtable


   =========  =========  =====  =====  ========================================================================
   Name       Type       Min    Max    Comment
   =========  =========  =====  =====  ========================================================================
   starttime  timestamp                Time stamp for start of measuring. Format according to W3C |br|
                                       XML dateTime with a resolution of 3 decimal places. All time stamps |br|
                                       in UTC. E.g. 2009-10-02T14:34:34.341Z
   occupancy  integer    0      100    Occupancy in percent (0-100%)
   =========  =========  =====  =====  ========================================================================


S0204
^^^^^^^^

Traffic Counting: Number of vehicles of given classification

Used for Traffic counting.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.44999999999999996}|

.. table:: S0204
   :class: longtable


   =========  =========  =====  =====  ========================================================================
   Name       Type       Min    Max    Comment
   =========  =========  =====  =====  ========================================================================
   starttime  timestamp                Time stamp for start of measuring. Format according to W3C |br|
                                       XML dateTime with a resolution of 3 decimal places. All time stamps |br|
                                       in UTC. E.g. 2009-10-02T14:34:34.341Z
   P          integer    0      65535  Number of cars
   PS         integer    0      65535  Number of cars with trailers
   L          integer    0      65535  Number of trucks
   LS         integer    0      65535  Number of trucks with trailers
   B          integer    0      65535  Number of buses
   SP         integer    0      65535  Number of trams
   MC         integer    0      65535  Number of motor cycles
   C          integer    0      65535  Number of bicycles
   F          integer    0      65535  Number of pedestrians
   =========  =========  =====  =====  ========================================================================


S0205
^^^^^^^^

Traffic Counting: Number of vehicles

This status was introduced to improve performance in case traffic
counting is done on all all detectors.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.44999999999999996}|

.. table:: S0205
   :class: longtable


   ========  =========  =====  =====  ====================================================================================================================================================================
   Name      Type       Min    Max    Comment
   ========  =========  =====  =====  ====================================================================================================================================================================
   start     timestamp                Time stamp for start of measuring. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   vehicles  integer    -1     65535  Number of vehicles |br|
                                      - Value expressed as an integer with a range of 0-65535. |br|
                                      - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
                                      - The value is set to “-1” if no data could be measured (e.g. detector fault)
   ========  =========  =====  =====  ====================================================================================================================================================================


S0206
^^^^^^^^

Traffic Counting: Vehicle speed

This status was introduced to improve performance in case traffic
counting is done on all all detectors.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.44999999999999996}|

.. table:: S0206
   :class: longtable


   ======  =========  =====  =====  =============================================================================================
   Name    Type       Min    Max    Comment
   ======  =========  =====  =====  =============================================================================================
   start   timestamp                Time stamp for start of measuring. Format according to W3C |br|
                                    XML dateTime with a resolution of 3 decimal places. All time stamps |br|
                                    in UTC. E.g. 2009-10-02T14:34:34.341Z
   speed   integer    -1     65535  Average speed in km/h (integer) |br|
                                    - Value expressed as an integer with a range of 0-65535. |br|
                                    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
                                    - The value is set to “-1” if no data could be measured (e.g. detector fault)
   ======  =========  =====  =====  =============================================================================================


S0207
^^^^^^^^

Traffic Counting: Occupancy

This status was introduced to improve performance in case traffic
counting is done on all all detectors.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.44999999999999996}|

.. table:: S0207
   :class: longtable


   =========  =========  =====  =====  =============================================================================================
   Name       Type       Min    Max    Comment
   =========  =========  =====  =====  =============================================================================================
   start      timestamp                Time stamp for start of measuring. Format according to W3C |br|
                                       XML dateTime with a resolution of 3 decimal places. All time stamps |br|
                                       in UTC. E.g. 2009-10-02T14:34:34.341Z
   occupancy  integer    -1     100    Occupancy in percent (%) (0-100) |br|
                                       - Value expressed as an integer with a range of 0-100. |br|
                                       - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
                                       - The value is set to “-1” if no data could be measured (e.g. detector fault)
   =========  =========  =====  =====  =============================================================================================


S0208
^^^^^^^^

Traffic Counting: Number of vehicles of given classification

This status was introduced to improve performance in case traffic
counting is done on all all detectors.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.44999999999999996}|

.. table:: S0208
   :class: longtable


   ======  =========  =====  =====  =============================================================================================
   Name    Type       Min    Max    Comment
   ======  =========  =====  =====  =============================================================================================
   start   timestamp                Time stamp for start of measuring. Format according to W3C |br|
                                    XML dateTime with a resolution of 3 decimal places. All time stamps |br|
                                    in UTC. E.g. 2009-10-02T14:34:34.341Z
   P       integer    -1     65535  Number of cars |br|
                                    - Value expressed as an integer with a range of 0-65535. |br|
                                    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
                                    - The value is set to “-1” if no data could be measured (e.g. detector fault)
   PS      integer    -1     65535  Number of cars with trailers |br|
                                    - Value expressed as an integer with a range of 0-65535. |br|
                                    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
                                    - The value is set to “-1” if no data could be measured (e.g. detector fault)
   L       integer    -1     65535  Number of trucks |br|
                                    - Value expressed as an integer with a range of 0-65535. |br|
                                    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
                                    - The value is set to “-1” if no data could be measured (e.g. detector fault)
   LS      integer    -1     65535  Number of trucks with trailers |br|
                                    - Value expressed as an integer with a range of 0-65535. |br|
                                    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
                                    - The value is set to “-1” if no data could be measured (e.g. detector fault)
   B       integer    -1     65535  Number of buses |br|
                                    - Value expressed as an integer with a range of 0-65535. |br|
                                    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
                                    - The value is set to “-1” if no data could be measured (e.g. detector fault)
   SP      integer    -1     65535  Number of trams |br|
                                    - Value expressed as an integer with a range of 0-65535. |br|
                                    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
                                    - The value is set to “-1” if no data could be measured (e.g. detector fault)
   MC      integer    -1     65535  Number of motor cycles |br|
                                    - Value expressed as an integer with a range of 0-65535. |br|
                                    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
                                    - The value is set to “-1” if no data could be measured (e.g. detector fault)
   C       integer    -1     65535  Number of bicycles |br|
                                    - Value expressed as an integer with a range of 0-65535. |br|
                                    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
                                    - The value is set to “-1” if no data could be measured (e.g. detector fault)
   F       integer    -1     65535  Number of pedestrians |br|
                                    - Value expressed as an integer with a range of 0-65535. |br|
                                    - Contains data from all detector logics. Each detector logic is separated with a comma. |br|
                                    - The value is set to “-1” if no data could be measured (e.g. detector fault)
   ======  =========  =====  =====  =============================================================================================


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
   Detector logic            `M0008`_         setForceDetectorLogic  Sets manual activation of detector logic
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



.. tabularcolumns:: |\Yl{0.15}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.20}|\Yl{0.35}|

.. table:: M0001
   :class: longtable


   ============  =======  =====  =====  ===================  ===========================================================================================
   Name          Type     Min    Max    Enum                 Comment
   ============  =======  =====  =====  ===================  ===========================================================================================
   status        string                 -NormalControl |br|  Set operating mode |br|
                                        -YellowFlash |br|    NormalControl: Normal Control |br|
                                        -Dark                YellowFlash: Enables yellow flash |br|
                                                             Dark: Enables dark mode
   securityCode  string                                      Security code 2
   timeout       integer  0      1440                        Time in minutes until controller automatically reverts to previous functional position |br|
                                                             0=no automatic return
   intersection  integer  0      255                         Intersection number
   ============  =======  =====  =====  ===================  ===========================================================================================


M0002
^^^^^

Sets current time plan

Change of traffic program of the traffic light controller. Typical
usages is scenario based control where change of program is used to
change signal timings etc. This command changes the signal timings for
optimal traffic flow. Requires security code 2



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.44999999999999996}|

.. table:: M0002
   :class: longtable


   ============  =======  =====  =====  ==============================================================
   Name          Type     Min    Max    Comment
   ============  =======  =====  =====  ==============================================================
   status        boolean                False: Controller uses time plan according to programming |br|
                                        True: Controller uses time plan according to command
   securityCode  string                 Security code 2
   timeplan      integer  1      255    designation of time plan
   ============  =======  =====  =====  ==============================================================


M0003
^^^^^

Sets traffic situation the controller uses

Used for area-based control where a command can be sent to a master
traffic light controller about which predefined traffic situation to use
(1-255). Traffic situation is a concept used to divide multiple TLC’s
into areas and sub-areas. The traffic situation gives the possibility to
change the TLC sub-area dynamically depending on the time of day and the
traffic flow. Depending on the traffic situation each TLC selects the
time plan dynamically. Requires security code 2



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.44999999999999996}|

.. table:: M0003
   :class: longtable


   ===============  =======  =====  =====  ==========================================================================
   Name             Type     Min    Max    Comment
   ===============  =======  =====  =====  ==========================================================================
   status           boolean                False: Controller uses traffic situation according to own programming |br|
                                           True: Controller uses traffic situation according to command
   securityCode     string                 Security code 2
   traficsituation  integer  1      255    designation of traficsituation
   ===============  =======  =====  =====  ==========================================================================


M0004
^^^^^

Restarts Traffic Light Controller

Used in the event of serious faults in the device where a restart is
considered to be able to remedy a problem. Requires security code 2



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.6499999999999999}|

.. table:: M0004
   :class: longtable


   ============  =======  ========================
   Name          Type     Comment
   ============  =======  ========================
   status        boolean  True: Restart controller
   securityCode  string   Security code 2
   ============  =======  ========================


M0005
^^^^^

Activate emergency route

The function is made for emergency prioritization. Works in the same way
as the M0006 and M0008 where the traffic light controller responds to an
input. Should be used in situations where full priority is given in the
emergency vehicle program. Requires security code 2.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.44999999999999996}|

.. table:: M0005
   :class: longtable


   ==============  =======  =====  =====  ======================================
   Name            Type     Min    Max    Comment
   ==============  =======  =====  =====  ======================================
   status          boolean                False: Deactivate emergency route |br|
                                          True: Activate emergency route
   securityCode    string                 Security code 2
   emergencyroute  integer  1      255    Number of emergency route
   ==============  =======  =====  =====  ======================================


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



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.44999999999999996}|

.. table:: M0006
   :class: longtable


   ============  =======  =====  =====  ============================
   Name          Type     Min    Max    Comment
   ============  =======  =====  =====  ============================
   status        boolean                False: Deactivate input |br|
                                        True: Activate input
   securityCode  string                 Security code 2
   input         integer  1      255    Number of Input
   ============  =======  =====  =====  ============================


M0007
^^^^^

Activate fixed time control

Deactivates the traffic actuated control using detectors and activates
pre-timed control. Can be used in case normal detectors can’t be used,
e.g. during maintenance work. Requires security code 2.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.6499999999999999}|

.. table:: M0007
   :class: longtable


   ============  =======  =========================================
   Name          Type     Comment
   ============  =======  =========================================
   status        boolean  False: Deactivate fixed time control |br|
                          True: Activate fixed time control
   securityCode  string   Security code 2
   ============  =======  =========================================


M0008
^^^^^

Sets manual activation of detector logic

Set given detector logic (1-255) to either true or false. Can e.g. be
used to connect RSMP compatible detection equipment to the traffic light
controller. Can also be used for prioritization. Requires security code
2



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.6499999999999999}|

.. table:: M0008
   :class: longtable


   ============  =======  =======================================================
   Name          Type     Comment
   ============  =======  =======================================================
   status        boolean  False: Deactivate manual control of detector logic |br|
                          True: Activate manual control of detector logic
   securityCode  string   Security code 2
   mode          boolean  False: Deactivate detector logic |br|
                          True: Activate detector logic
   ============  =======  =======================================================


M0010
^^^^^

``Reserved``


.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.6499999999999999}|

.. table:: M0010
   :class: longtable


   ============  =======  ============
   Name          Type     Comment
   ============  =======  ============
   status        boolean  ``Reserved``
   securityCode  string   ``Reserved``
   ============  =======  ============


M0011
^^^^^

``Reserved``


.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.6499999999999999}|

.. table:: M0011
   :class: longtable


   ============  =======  ============
   Name          Type     Comment
   ============  =======  ============
   status        boolean  ``Reserved``
   securityCode  string   ``Reserved``
   ============  =======  ============


M0012
^^^^^

``Reserved``


.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.6499999999999999}|

.. table:: M0012
   :class: longtable


   ============  ======  ============
   Name          Type    Comment
   ============  ======  ============
   status        string  ``Reserved``
   securityCode  string  ``Reserved``
   ============  ======  ============


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



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.6499999999999999}|

.. table:: M0013
   :class: longtable


   ============  ======  =========================================================================================================================================================================
   Name          Type    Comment
   ============  ======  =========================================================================================================================================================================
   status        string  Sets/Unsets a block of 16 inputs at a time. Can be repeated to set several blocks of 16 inputs. Values are separated with comma. Blocks are separated with semicolon |br|
                         Format: [Offset];[Bits to set];[Bits to unset];…
   securityCode  string  Security code 2
   ============  ======  =========================================================================================================================================================================


M0014
^^^^^

Set dynamic bands

Can be used to change between predefined signal timings. Moves the start
of signal groups in the cycle. This command can be used to change the
split of green time during the cycle. A typical usage is scenario based
control where changing of signal timings is used for optimal traffic
flow. Requires security code 2



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.44999999999999996}|

.. table:: M0014
   :class: longtable


   ============  =======  =====  =====  ==================================================
   Name          Type     Min    Max    Comment
   ============  =======  =====  =====  ==================================================
   plan          integer  0      255    Plan to be changed
   status        string                 Dynamic bands |br|
                                        Each dynamic band are written as dd-ee where: |br|
                                        dd=Dynamic band number (from 1-10) |br|
                                        ee=Extension in seconds in this band |br|
                                        |br|
                                        Each dynamic band is separated with a comma. |br|
                                        |br|
                                        E.g. |br|
                                        dd-ee,dd-ee
   securityCode  string                 Security code 2
   ============  =======  =====  =====  ==================================================


M0015
^^^^^

Set Offset time

Offset time is used to define an offset between intersections in
coordinated control. It is based on the expected travel time between
intersections. This command can be used to fine tune the coordination
for optimal traffic flow. Requires security code 2.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.44999999999999996}|

.. table:: M0015
   :class: longtable


   ============  =======  =====  =====  ==========================
   Name          Type     Min    Max    Comment
   ============  =======  =====  =====  ==========================
   status        integer  0      255    Set offset time in seconds
   plan          integer  0      255    Time plan nr
   securityCode  string                 Security code 2
   ============  =======  =====  =====  ==========================


M0016
^^^^^

Set week time table

Set which time table for signal programs to use for each day during a
week. This command changes the signal timings during the week for
optimal traffic flow. Requires security code 2.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.6499999999999999}|

.. table:: M0016
   :class: longtable


   ============  ======  =================================================================
   Name          Type    Comment
   ============  ======  =================================================================
   status        string  Week time table. Defines time table to use for each week day |br|
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
   securityCode  string  Security code 2
   ============  ======  =================================================================


M0017
^^^^^

Set time tables

Set time of day for when to automatically switch signal program (time
plan). This command changes the signal timings according to time of day
for optimal traffic flow. Requires security code 2.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.6499999999999999}|

.. table:: M0017
   :class: longtable


   ============  ======  ======================================================
   Name          Type    Comment
   ============  ======  ======================================================
   status        string  Time Table. Defines time tables |br|
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
   securityCode  string  Security code 2
   ============  ======  ======================================================


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



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.44999999999999996}|

.. table:: M0018
   :class: longtable


   ============  =======  =====  =====  =========================
   Name          Type     Min    Max    Comment
   ============  =======  =====  =====  =========================
   status        integer  1      255    Set cycle time in seconds
   plan          integer  0      255    Time plan nr
   securityCode  string                 Security code 2
   ============  =======  =====  =====  =========================


M0019
^^^^^

Force input

Force a given input (1-255) of the controllers general purpose I/O to
either True or False. Can be used for all types of input where the
traffic light controller must react to external control. Can be used for
bus priority, coordination between traffic controllers, external control
systems, and much more. Requires security code 2.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.44999999999999996}|

.. table:: M0019
   :class: longtable


   ============  =======  =====  =====  =================================
   Name          Type     Min    Max    Comment
   ============  =======  =====  =====  =================================
   status        boolean                False: Release input |br|
                                        True: Force input
   securityCode  string                 Security code 2
   input         integer  1      255    Number of Input
   inputValue    boolean                False: input forced to False |br|
                                        True: input forced to True
   ============  =======  =====  =====  =================================


M0020
^^^^^

Force output

Force a given output (1-255) of the controllers general purpose I/O to
either True of False. Can be used for all types of output where the
traffic light controller needs to control other equipment. Can be used
for bus priority, coordination between traffic controllers, external
control systems, and much more. Requires security code 2.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.44999999999999996}|

.. table:: M0020
   :class: longtable


   ============  =======  =====  =====  ==================================
   Name          Type     Min    Max    Comment
   ============  =======  =====  =====  ==================================
   status        boolean                False: Force output |br|
                                        True: Release output
   securityCode  string                 Security code 2
   output        integer  1      255    Number of Output
   outputValue   boolean                False: output forced to False |br|
                                        True: output forced to True
   ============  =======  =====  =====  ==================================


M0021
^^^^^

Set trigger level sensitivity for loop detector

The trigger level sensitivity determines at what level a loop detector
should trigger. If it set too low then then traffic will not be detected
as intended. If it is set too high the detector might give false
positives. This command provides the ability to fine tune loop detectors
to make sure they detect traffic as intended. Requires security code 2



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.6499999999999999}|

.. table:: M0021
   :class: longtable


   ============  ======  =======================================================================
   Name          Type    Comment
   ============  ======  =======================================================================
   status        string  Loop detector trigger level sensitivity is written as dd-ss where: |br|
                         dd=loop detector number |br|
                         ss=sensitivity value
   securityCode  string  Security code 2
   ============  ======  =======================================================================


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



.. tabularcolumns:: |\Yl{0.15}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.20}|\Yl{0.35}|

.. table:: M0022
   :class: longtable


   =============  =======  =====  =====  ======================  =========================================================================
   Name           Type     Min    Max    Enum                    Comment
   =============  =======  =====  =====  ======================  =========================================================================
   requestId      string                                         A string that uniquely identifies the request on the controller
   signalGroupId  string                                         (Optional) ID of a signal group component
   inputId        integer  0      255                            (Optional) ID of an input, using the same numbering scheme as M0006
   connectionId   integer  0      255                            (Optional) ID of a connection, connecting an ingoing and an outgoing lane
   approachId     integer  0      16                             (Optional) ID of an intersection approach
   laneInId       integer  0      255                            (Optional) ID of an ingoing lane
   laneOutId      integer  0      255                            (Optional) ID of an outgoing lane
   priorityId     integer  0      255                            (Optional) ID of a priority
   type           string                 -new |br|               new: New priority request |br|
                                         -update |br|            update: Update to existing priority request |br|
                                         -cancel                 cancel: Cancel an existing priority
   level          integer  0      14                             0: Lowest, 14: Highest
   eta            integer  0      255                            (Optional) Estimated time of arrival to the intersection, in seconds
   vehicleType    string                 -pedestrian |br|        (Optional) Vehicle type |br|
                                         -bicycle |br|           pedestrian: Pedestrians |br|
                                         -motorcycle |br|        bicycle: Bicycles |br|
                                         -car |br|               motorcycle: Motorcycles |br|
                                         -bus |br|               car: Passenger vehicle |br|
                                         -lightTruck |br|        bus: Bus used for public transport |br|
                                         -heavyTruck |br|        lightTruck: Light truck |br|
                                         -tram |br|              heavyTruck: Heavy truck |br|
                                         -emergency |br|         tram: Trams used for Public transport |br|
                                         -safetyCar |br|         emergency: Police, fire or ambulance |br|
                                         -specialTransport |br|  safetyCar: For e.g. escort vehicles |br|
                                         -other                  specialTransport: For e.g. heavy load |br|
                                                                 other: Other type of vehicle
   =============  =======  =====  =====  ======================  =========================================================================


M0023
^^^^^

Set timeout for dynamic bands

Switch to a designated time plan if this timeout is reached due to lost
connection with the supervisor. Disable by setting timeout to ‘0’. Used
in conjunction with dynamic bands, M0014 Requires security code 2.



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.44999999999999996}|

.. table:: M0023
   :class: longtable


   ============  =======  =====  =====  ===================
   Name          Type     Min    Max    Comment
   ============  =======  =====  =====  ===================
   status        integer  0      65535  Timeout, in minutes
   securityCode  string                 Security code 2
   ============  =======  =====  =====  ===================


M0103
^^^^^

Set security code

Change the security code to use when sending commands Security codes are
used as an extra layer of security in many commands. They need to match
between the supervision system and the traffic light controller in order
for the commands to be executed.



.. tabularcolumns:: |\Yl{0.15}|\Yl{0.10}|\Yl{0.20}|\Yl{0.55}|

.. table:: M0103
   :class: longtable


   ===============  ======  ============  ===================================
   Name             Type    Enum          Comment
   ===============  ======  ============  ===================================
   status           string  -Level1 |br|  Level1: Change security code 1 |br|
                            -Level2       Level2: Change security code 2
   oldSecurityCode  string                Previous security code
   newSecurityCode  string                New security code
   ===============  ======  ============  ===================================


M0104
^^^^^

Set clock

Can be used to manually set the clock of the traffic light controller if
automatic time synchronization (NTP or watchdog sync) is not available.
For instance, during maintenance work. Note: UTC is used. Requires
security code 1



.. tabularcolumns:: |\Yl{0.25}|\Yl{0.10}|\Yl{0.10}|\Yl{0.10}|\Yl{0.44999999999999996}|

.. table:: M0104
   :class: longtable


   ============  =======  =====  =====  ===============
   Name          Type     Min    Max    Comment
   ============  =======  =====  =====  ===============
   securityCode  string                 Security code 1
   year          integer  0      9999   Year
   month         integer  1      12     Month
   day           integer  1      31     Day of month
   hour          integer  0      23     Hour
   minute        integer  0      59     Minute
   second        integer  0      59     Second
   ============  =======  =====  =====  ===============


.. |br| replace:: |br_html| |br_latex|

.. |br_html| raw:: html

   <br>

.. |br_latex| raw:: latex

   \newline

