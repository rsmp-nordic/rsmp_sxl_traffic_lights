Signal Exchange List
====================

Object Types
------------

Grouped objects
^^^^^^^^^^^^^^^

.. figtable::
   :nofig:
   :label: Grouped objects
   :caption: Grouped objects
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.30\linewidth} p{0.50\linewidth}

   ========================  =============
   ObjectType                Description
   ========================  =============
   Traffic Light Controller
   ========================  =============
..

Single objects
^^^^^^^^^^^^^^

.. figtable::
   :nofig:
   :label: Single objects
   :caption: Single objects
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.30\linewidth} p{0.50\linewidth}

   ==============  =============
   ObjectType      Description
   ==============  =============
   Signal group
   Detector logic
   ==============  =============
..

Aggregated status
-----------------

.. figtable::
   :nofig:
   :label: Aggregated status
   :caption: Aggregated status
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.16\linewidth} p{0.16\linewidth} p{0.40\linewidth}

   ========================  ====================  =================  =============================================================
   ObjectType                functionalPosition    functionalState    Description
   ========================  ====================  =================  =============================================================
   Traffic Light Controller                                           functionalPosition and functionalState not used (set to null)
   ========================  ====================  =================  =============================================================
..

.. figtable::
   :nofig:
   :label: State bits
   :caption: State bits
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.10\linewidth} p{0.30\linewidth} p{0.50\linewidth}

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
..

Alarms
------

.. figtable::
   :nofig:
   :label: Alarms
   :caption: Alarms
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.10\linewidth} p{0.45\linewidth} p{0.07\linewidth} p{0.07\linewidth}

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
..

A0001
^^^^^

Serious hardware error |br|  |br| Is a "major fault" defined according to 3.8 i EN12675 which causes the controller to switch to a "failure mode" according to 3.6 in EN12675.


A0002
^^^^^

Less serious hardware error |br|  |br| Is a "minor fault" defined according to 3.11 in EN12675.


A0003
^^^^^

Serious configuration error |br|  |br| Is a "major fault" defined according to 3.8 in EN12675 which causes the controller to switch to a "failure mode" according to 3.6 in EN12675.


A0004
^^^^^

Less serious configuration error |br|  |br| Is a "minor fault" defined according to 3.11 in EN12675.


A0005
^^^^^

Synchronisation error (coordination) |br|  |br| Is a "minor fault" defined according to 3.11 in EN12675.


A0006
^^^^^

Safety error |br|  |br| Is a "major fault" defined according to 3.8 in EN12675 which causes the controller to switch to a "failure mode" according to 3.6 in EN12675.


A0007
^^^^^

Communication error |br|  |br| Used for communication errors with the central system. Includes NTP connection loss if the TLC is configured to use NTP. |br|  |br| Is a "minor fault" defined according to 3.11 in EN12675.


.. figtable::
   :nofig:
   :label: A0007
   :caption: A0007
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.35\linewidth}

   ========  ======  ===============  =============================================
   Name      Type    Value            Comment
   ========  ======  ===============  =============================================
   protocol  string  -rsmp |br| -ntp  Type of communication error, e.g. NTP or RSMP
   ========  ======  ===============  =============================================
..

A0008
^^^^^

Dead lock error |br|  |br| Used for dead lock errors. |br|  |br| For instance; a signal group has requested green but is unable to switch due to a conflicting signal group for an extended period of time. At some point the request times out and the controller goes failure mode. The cause for this error is due to configuration errors or external sources. |br|  |br| Is a "major fault" defined according to 3.8 in EN12675 which causes the controller to switch to a "failure mode" according to 3.6 in EN12675. |br| 


.. figtable::
   :nofig:
   :label: A0008
   :caption: A0008
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.35\linewidth}

   ========  =======  =======  =================
   Name      Type     Value    Comment
   ========  =======  =======  =================
   timeplan  integer  [1-255]  Current time plan
   ========  =======  =======  =================
..

A0009
^^^^^

Other error |br|  |br| Used for other errors not covered by any other alarm type |br|  |br| Is a "minor fault" defined according to 3.11 in EN12675.


A0010
^^^^^

Door open |br|  |br| Used for open door (room or cabinet).


A0101
^^^^^

Pushbutton error |br|  |br| Used for push buttons


A0201
^^^^^

Serious lamp error |br|  |br| Used for lamp errors |br|  |br| Is a "major fault" defined according to 3.8 in EN12675 which causes the controller to switch to a "failure mode" according to 3.6 in EN12675.


.. figtable::
   :nofig:
   :label: A0201
   :caption: A0201
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.35\linewidth}

   ======  ======  =============================  =============
   Name    Type    Value                          Comment
   ======  ======  =============================  =============
   color   string  -red |br| -yellow |br| -green  Color of lamp
   ======  ======  =============================  =============
..

A0202
^^^^^

Less serious lamp error |br|  |br| Used for lamp errors |br|  |br| Is a "minor fault" defined according to 3.11 in EN12675.


.. figtable::
   :nofig:
   :label: A0202
   :caption: A0202
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.35\linewidth}

   ======  ======  =============================  =============
   Name    Type    Value                          Comment
   ======  ======  =============================  =============
   color   string  -red |br| -yellow |br| -green  Color of lamp
   ======  ======  =============================  =============
..

A0301
^^^^^

Detector error (hardware) |br|  |br| Is a "minor fault" defined according to 3.11 in EN12675.


.. figtable::
   :nofig:
   :label: A0301
   :caption: A0301
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.35\linewidth}

   =========  =======  =================  ==============================================================================
   Name       Type     Value              Comment
   =========  =======  =================  ==============================================================================
   detector   string   [designation]      Designation of the detector (hardware)
   type       string   -loop |br| -input  Type of detector |br| loop: Inductive detector loop |br| input: External input
   errormode  string   -on |br| -off      Detector forced on/off while detector error
   manual     boolean  -True |br| -False  Manually controlled detector logic (True/False)
   =========  =======  =================  ==============================================================================
..

A0302
^^^^^

Detector error (logic error) |br|  |br| For instance; detector continuously on or off during an extended time. |br|  |br| Is a "minor fault" defined according to 3.11 in EN12675.


.. figtable::
   :nofig:
   :label: A0302
   :caption: A0302
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.35\linewidth}

   ==========  =======  ==============================================  =====================================================================================================================================================================================================
   Name        Type     Value                                           Comment
   ==========  =======  ==============================================  =====================================================================================================================================================================================================
   detector    string   [designation]                                   Designation of the detector (hardware)
   type        string   -loop |br| -input                               Type of detector. |br| loop: Inductive detector loop |br| input: External input
   errormode   string   -on |br| -off                                   Detector forced on/off while detector error
   manual      boolean  -True |br| -False                               Manually controlled detector logic (True/False)
   logicerror  string   -always_off |br| -always_on |br| -intermittent  Type of logic error |br| always_off: no detection during predefined max time |br| always_on: detection constantly on during predefined max time |br| intermittent: intermittent logic fault (flutter)
   ==========  =======  ==============================================  =====================================================================================================================================================================================================
..

A0303
^^^^^

Serious detector error (hardware) |br|  |br| Is a "major fault" defined according to 3.8 i EN12675 which causes the controller to switch to a "failure mode" according to 3.6 in EN12675.


.. figtable::
   :nofig:
   :label: A0303
   :caption: A0303
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.35\linewidth}

   =========  =======  =================  ==============================================================================
   Name       Type     Value              Comment
   =========  =======  =================  ==============================================================================
   detector   string   [designation]      Designation of the detector (hardware)
   type       string   -loop |br| -input  Type of detector |br| loop: Inductive detector loop |br| input: External input
   errormode  string   -on |br| -off      Detector forced on/off while detector error
   manual     boolean  -True |br| -False  Manually controlled detector logic (True/False)
   =========  =======  =================  ==============================================================================
..

A0304
^^^^^

Serious detector error (logic error) |br|  |br| For instance; detector continuously on or off during an extended time. |br|  |br| Is a "major fault" defined according to 3.8 i EN12675 which causes the controller to switch to a "failure mode" according to 3.6 in EN12675.


.. figtable::
   :nofig:
   :label: A0304
   :caption: A0304
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.35\linewidth}

   ==========  =======  ==============================================  =====================================================================================================================================================================================================
   Name        Type     Value                                           Comment
   ==========  =======  ==============================================  =====================================================================================================================================================================================================
   detector    string   [designation]                                   Designation of the detector (hardware)
   type        string   -loop |br| -input                               Type of detector. |br| loop: Inductive detector loop |br| input: External input
   errormode   string   -on |br| -off                                   Detector forced on/off while detector error
   manual      boolean  -True |br| -False                               Manually controlled detector logic (True/False)
   logicerror  string   -always_off |br| -always_on |br| -intermittent  Type of logic error |br| always_off: no detection during predefined max time |br| always_on: detection constantly on during predefined max time |br| intermittent: intermittent logic fault (flutter)
   ==========  =======  ==============================================  =====================================================================================================================================================================================================
..

Status
------

.. raw:: latex

    \newpage


.. figtable::
   :nofig:
   :label: Status
   :caption: Status
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.24\linewidth} p{0.10\linewidth} p{0.55\linewidth}

   ========================  ==============  ============================================================
   ObjectType                statusCodeId    Description
   ========================  ==============  ============================================================
   Traffic Light Controller  `S0001`_        Signal group status
   Traffic Light Controller  `S0002`_        Detector logic status
   Traffic Light Controller  `S0003`_        Input status
   Traffic Light Controller  `S0004`_        Output status
   Traffic Light Controller  `S0005`_        Traffic Light Controller starting
   Traffic Light Controller  `S0006`_        Emergency stage
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
..

S0001
^^^^^^^^

Signal group status |br|  |br| Provides the status of each signal group, including basic information such as green, yellow and red. But also detailed technical information. |br|  |br| Can be used to draw a live signal group diagram as well provide diagnostic information about the performance of the controller.


.. figtable::
   :nofig:
   :label: S0001
   :caption: S0001
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   =================  =======  =======  =================================
   Name               Type     Value    Comment
   =================  =======  =======  =================================
   signalgroupstatus  string   [text]   Signal group status as text field
   cyclecounter       integer  [0-999]  Cycle counter
   basecyclecounter   integer  [0-999]  Base cycle counter
   stage              integer  [0-999]  Current stage (isolated)
   =================  =======  =======  =================================
..

S0002
^^^^^^^^

Detector logic status |br|  |br| Provides the status of all detector logics of the controller. |br|  |br| Can be used to draw a live signal group diagram as well provide diagnostic information about the performance of the controller. Can also be used for bus priority, external control systems, and much more.


.. figtable::
   :nofig:
   :label: S0002
   :caption: S0002
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ===================  ======  =======  ==========================================================================================================================================================================================================================================================
   Name                 Type    Value    Comment
   ===================  ======  =======  ==========================================================================================================================================================================================================================================================
   detectorlogicstatus  string  [text]   Detector logic status as text field. |br|  |br| Each character represent the state of the detector logic in consecutive order. |br| 0 = Detector logic is not active |br| 1 = Detector logic is active |br| - = Detector logic is undefined/does not exist
   ===================  ======  =======  ==========================================================================================================================================================================================================================================================
..

S0003
^^^^^^^^

Input status |br|  |br| Input (1-255) of the controllers general purpose I/O. |br|  |br| Input is used where the traffic light controller must react to external control. It could be external detectors, bus priority, and much more.


.. figtable::
   :nofig:
   :label: S0003
   :caption: S0003
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ===================  ======  =======  =====================================================================================================================================================================================================================================
   Name                 Type    Value    Comment
   ===================  ======  =======  =====================================================================================================================================================================================================================================
   inputstatus          string  [text]   Input status as text field |br|  |br| Each character represent the state of the input in consecutive order. |br| 0 = Input is not active |br| 1 = Input is active |br| - = Input is undefined/does not exist
   extendedinputstatus  string  [text]   Extended input status as text field |br|  |br| Each character represent the state of the extended input status in consecutive order. |br| 0 = Input is not active |br| 1 = Input is active |br| - = Input is undefined/does not exist
   ===================  ======  =======  =====================================================================================================================================================================================================================================
..

S0004
^^^^^^^^

Output status |br|  |br| Output (1-255) of the controllers general purpose I/O. |br|  |br| Can be used for all types of output where the traffic light controller needs to control other equipment. Can be used for bus priority, coordination between traffic controllers, external control systems, and much more.


.. figtable::
   :nofig:
   :label: S0004
   :caption: S0004
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ====================  ======  =======  ================================================================================================================================================================================================================================
   Name                  Type    Value    Comment
   ====================  ======  =======  ================================================================================================================================================================================================================================
   outputstatus          string  [text]   Output status as text field |br|  |br| Each character represent the state of the output status in consecutive order. |br| 0 = Output is not active |br| 1 = Output is active |br| - = Output is undefined/does not exist
   extendedoutputstatus  string  [text]   Output status as text field |br|  |br| Each character represent the state of the exteded output status in consecutive order. |br| 0 = Output is not active |br| 1 = Output is active |br| - = Output is undefined/does not exist
   ====================  ======  =======  ================================================================================================================================================================================================================================
..

S0005
^^^^^^^^

Traffic Light Controller starting |br|  |br| The traffic signal is starting, e.g. it is in startup mode and has not begun working normally yet. |br|  |br| During startup mode the traffic controller shows dark, red, yellow flash or using the predetermined start cycle (minimum times).


.. figtable::
   :nofig:
   :label: S0005
   :caption: S0005
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ======  =======  =================  =============================================================================================
   Name    Type     Value              Comment
   ======  =======  =================  =============================================================================================
   status  boolean  -False |br| -True  False: Controller is not in start up mode |br| True: Controller is currently in start up mode
   ======  =======  =================  =============================================================================================
..

S0006
^^^^^^^^

Emergency stage |br|  |br| The status is active during emergency prioritization. |br|  |br| Used in situations where full priority is given in the emergency vehicle program.


.. figtable::
   :nofig:
   :label: S0006
   :caption: S0006
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ==============  =======  =================  =================================================================
   Name            Type     Value              Comment
   ==============  =======  =================  =================================================================
   status          boolean  -False |br| -True  False: Emergency stage inactive |br| True: Emergency stage active
   emergencystage  integer  [1-255]            Number of emergency stage
   ==============  =======  =================  =================================================================
..

S0007
^^^^^^^^

Controller switched on |br|  |br| The controller is active and is not in dark mode. |br|  |br| Used to determine if the controller is operating, e.g. it shows red, green or yellow to the vehicles. |br|  |br| During maintenance work the controller might be using dark mode (no output to the signal heads). |br|  |br| Please note that all values in this status uses comma-separated lists |br| - one value for each intersection, e.g. "1,2" and "True,False" |br| 


.. figtable::
   :nofig:
   :label: S0007
   :caption: S0007
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ============  =======  ===============================================================================================  ======================================================================================================================================================================================================================================================================================
   Name          Type     Value                                                                                            Comment
   ============  =======  ===============================================================================================  ======================================================================================================================================================================================================================================================================================
   intersection  integer  [0-255]                                                                                          Comma separated list of intersections which the status relates to, |br| e.g. "1,2". Use "0" for all intersections of the TLC
   status        boolean  -False |br| -True                                                                                False: Traffic Light Controller in dark mode |br| True: Traffic Light Controller not in dark mode
   source        string   -operator_panel |br| -calendar_clock |br| -control_block |br| -forced |br| -startup |br| -other  operator_panel: Operator panel is the source |br| calendar_clock: Calendar/clock is the source |br| control_block: Control block is the source |br| forced: Forced due to command from e.g. RSMP |br| startup: Set after startup mode |br| other: TLC switched status due other reason
   ============  =======  ===============================================================================================  ======================================================================================================================================================================================================================================================================================
..

S0008
^^^^^^^^

Manual control |br|  |br| Traffic control deactivated in controller |br|  |br| Signal timings is controlled manually by service personnel using the operating panel of the controller. |br|  |br| Please note that all values in this status uses comma-separated lists |br| - one value for each intersection, e.g. "1,2" and "True,False"


.. figtable::
   :nofig:
   :label: S0008
   :caption: S0008
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ============  =======  ===============================================================================================  ======================================================================================================================================================================================================================================================================================
   Name          Type     Value                                                                                            Comment
   ============  =======  ===============================================================================================  ======================================================================================================================================================================================================================================================================================
   intersection  integer  [0-255]                                                                                          Comma separated list of intersections which the status relates to, |br| e.g. "1,2". Use "0" for all intersections of the TLC
   status        boolean  -False |br| -True                                                                                False: Manual control inactive |br| True: Manual control active
   source        string   -operator_panel |br| -calendar_clock |br| -control_block |br| -forced |br| -startup |br| -other  operator_panel: Operator panel is the source |br| calendar_clock: Calendar/clock is the source |br| control_block: Control block is the source |br| forced: Forced due to command from e.g. RSMP |br| startup: Set after startup mode |br| other: TLC switched status due other reason
   ============  =======  ===============================================================================================  ======================================================================================================================================================================================================================================================================================
..

S0009
^^^^^^^^

Fixed time control |br|  |br| Traffic actuated control deactivated and a pre-timed control is used. |br|  |br| Usually only used in case normal detectors can't be used, e.g. during maintenance work. |br|  |br| Please note that all values in this status uses comma-separated lists |br| - one value for each intersection, e.g. "1,2" and "True,False"


.. figtable::
   :nofig:
   :label: S0009
   :caption: S0009
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ============  =======  ===============================================================================================  ======================================================================================================================================================================================================================================================================================
   Name          Type     Value                                                                                            Comment
   ============  =======  ===============================================================================================  ======================================================================================================================================================================================================================================================================================
   intersection  integer  [0-255]                                                                                          Comma separated list of intersections which the status relates to, |br| e.g. "1,2". Use "0" for all intersections of the TLC
   status        boolean  -False |br| -True                                                                                False:  Fixed time control inactive |br| True:  Fixed time control active
   source        string   -operator_panel |br| -calendar_clock |br| -control_block |br| -forced |br| -startup |br| -other  operator_panel: Operator panel is the source |br| calendar_clock: Calendar/clock is the source |br| control_block: Control block is the source |br| forced: Forced due to command from e.g. RSMP |br| startup: Set after startup mode |br| other: TLC switched status due other reason
   ============  =======  ===============================================================================================  ======================================================================================================================================================================================================================================================================================
..

S0010
^^^^^^^^

Isolated control |br|  |br| Isolated control mode indicates that the controller operates independently of any other traffic light controllers. This may different depending on traffic program (time plan). |br|  |br| Used to determine if the controller is operating independently or operating with other controllers (coordination). |br|  |br| Please note that all values in this status uses comma-separated lists |br| - one value for each intersection, e.g. "1,2" and "True,False"


.. figtable::
   :nofig:
   :label: S0010
   :caption: S0010
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ============  =======  ===============================================================================================  ======================================================================================================================================================================================================================================================================================
   Name          Type     Value                                                                                            Comment
   ============  =======  ===============================================================================================  ======================================================================================================================================================================================================================================================================================
   intersection  integer  [0-255]                                                                                          Comma separated list of intersections which the status relates to, |br| e.g. "1,2". Use "0" for all intersections of the TLC
   status        boolean  -False |br| -True                                                                                False: Isolated control disabled |br| True: Isolated control enabled (Vehicle actuated control or Fixed time control)
   source        string   -operator_panel |br| -calendar_clock |br| -control_block |br| -forced |br| -startup |br| -other  operator_panel: Operator panel is the source |br| calendar_clock: Calendar/clock is the source |br| control_block: Control block is the source |br| forced: Forced due to command from e.g. RSMP |br| startup: Set after startup mode |br| other: TLC switched status due other reason
   ============  =======  ===============================================================================================  ======================================================================================================================================================================================================================================================================================
..

S0011
^^^^^^^^

Yellow flash |br|  |br| The controller shows yellow flash. |br|  |br| Yellow flash may be used during a serious fault (depending on configuration) or maintenance work. However, some countries may use yellow flash as an normal operating mode, and not necessarily during fault. This status can also be manually set using M0001. |br|  |br| Please note that all values in this status uses comma-separated lists |br| - one value for each intersection, e.g. "1,2" and "True,False"


.. figtable::
   :nofig:
   :label: S0011
   :caption: S0011
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ============  =======  ===============================================================================================  ======================================================================================================================================================================================================================================================================================
   Name          Type     Value                                                                                            Comment
   ============  =======  ===============================================================================================  ======================================================================================================================================================================================================================================================================================
   intersection  integer  [0-255]                                                                                          Comma separated list of intersections which the status relates to, |br| e.g. "1,2". Use "0" for all intersections of the TLC
   status        boolean  -False |br| -True                                                                                False: Yellow flash disabled |br| True: Yellow flash enabled
   source        string   -operator_panel |br| -calendar_clock |br| -control_block |br| -forced |br| -startup |br| -other  operator_panel: Operator panel is the source |br| calendar_clock: Calendar/clock is the source |br| control_block: Control block is the source |br| forced: Forced due to command from e.g. RSMP |br| startup: Set after startup mode |br| other: TLC switched status due other reason
   ============  =======  ===============================================================================================  ======================================================================================================================================================================================================================================================================================
..

S0012
^^^^^^^^

All red |br|  |br| The controller show all red |br|  |br| All red can be manually set using the controllers operating panel during maintenance work. |br|  |br| Please note that all values in this status uses comma-separated lists |br| - one value for each intersection, e.g. "1,2" and "True,False"


.. figtable::
   :nofig:
   :label: S0012
   :caption: S0012
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ============  =======  ===============================================================================================  ======================================================================================================================================================================================================================================================================================
   Name          Type     Value                                                                                            Comment
   ============  =======  ===============================================================================================  ======================================================================================================================================================================================================================================================================================
   intersection  integer  [0-255]                                                                                          Comma separated list of intersections which the status relates to, |br| e.g. "1,2". Use "0" for all intersections of the TLC
   status        boolean  -False |br| -True                                                                                False: All red disabled |br| True: All red enabled
   source        string   -operator_panel |br| -calendar_clock |br| -control_block |br| -forced |br| -startup |br| -other  operator_panel: Operator panel is the source |br| calendar_clock: Calendar/clock is the source |br| control_block: Control block is the source |br| forced: Forced due to command from e.g. RSMP |br| startup: Set after startup mode |br| other: TLC switched status due other reason
   ============  =======  ===============================================================================================  ======================================================================================================================================================================================================================================================================================
..

S0013
^^^^^^^^

Police key |br|  |br| The controller is forced to dark mode or yellow flash. |br|  |br| The "police key" is a external control switch present in some controllers that manually switches the controller to either dark mode or yellow flash. |br|  |br| Please note that all values in this status uses comma-separated lists |br| - one value for each intersection, e.g. "1,2" and "0,1"


.. figtable::
   :nofig:
   :label: S0013
   :caption: S0013
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ============  =======  ==========================  ============================================================================================================================
   Name          Type     Value                       Comment
   ============  =======  ==========================  ============================================================================================================================
   intersection  integer  [0-255]                     Comma separated list of intersections which the status relates to, |br| e.g. "1,2". Use "0" for all intersections of the TLC
   status        integer  -0 |br| -1 |br| -2 |br| -3  0: disabled |br| 1: dark mode |br| 2: yellow flash |br| 3: all red
   ============  =======  ==========================  ============================================================================================================================
..

S0014
^^^^^^^^

Current time plan |br|  |br| The current time plan (signal program) used in the controller. There may be 1-255 predefined time plans. |br|  |br| The time plan (signal program) may change signal timings, cycle time, control strategy and much more. Typical usage is is scenario based control where change of program is used to change priority etc.


.. figtable::
   :nofig:
   :label: S0014
   :caption: S0014
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ======  =======  ===============================================================================================  ======================================================================================================================================================================================================================================================================================
   Name    Type     Value                                                                                            Comment
   ======  =======  ===============================================================================================  ======================================================================================================================================================================================================================================================================================
   status  integer  [1-255]                                                                                          Current time plan
   source  string   -operator_panel |br| -calendar_clock |br| -control_block |br| -forced |br| -startup |br| -other  operator_panel: Operator panel is the source |br| calendar_clock: Calendar/clock is the source |br| control_block: Control block is the source |br| forced: Forced due to command from e.g. RSMP |br| startup: Set after startup mode |br| other: TLC switched status due other reason
   ======  =======  ===============================================================================================  ======================================================================================================================================================================================================================================================================================
..

S0015
^^^^^^^^

Current traffic situation |br|  |br| The current traffic situation used in the controller. |br|  |br| Used for area-based control where a command can be sent to a master traffic light controller about which predefined traffic situation to use (1-255). |br|  |br| Traffic situation is a concept used to divide multiple TLC's into areas and sub-areas. The traffic situation gives the possibility to change the TLC sub-area dynamically depending on the time of day and the traffic flow. Depending on the traffic situation each TLC selects the time plan dynamically.


.. figtable::
   :nofig:
   :label: S0015
   :caption: S0015
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ======  =======  ===============================================================================================  ======================================================================================================================================================================================================================================================================================
   Name    Type     Value                                                                                            Comment
   ======  =======  ===============================================================================================  ======================================================================================================================================================================================================================================================================================
   status  integer  [1-255]                                                                                          Current traffic situation
   source  string   -operator_panel |br| -calendar_clock |br| -control_block |br| -forced |br| -startup |br| -other  operator_panel: Operator panel is the source |br| calendar_clock: Calendar/clock is the source |br| control_block: Control block is the source |br| forced: Forced due to command from e.g. RSMP |br| startup: Set after startup mode |br| other: TLC switched status due other reason
   ======  =======  ===============================================================================================  ======================================================================================================================================================================================================================================================================================
..

S0016
^^^^^^^^

Number of detector logics |br|  |br| Can be used by the management system to check the number of detector logics configured in the controller.


.. figtable::
   :nofig:
   :label: S0016
   :caption: S0016
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ======  =======  =========  =========================
   Name    Type     Value      Comment
   ======  =======  =========  =========================
   number  integer  [1-65025]  Number of detector logics
   ======  =======  =========  =========================
..

S0017
^^^^^^^^

Number of signal groups |br|  |br| Can be used for the management system to check the number of signal groups configured in the controller.


.. figtable::
   :nofig:
   :label: S0017
   :caption: S0017
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ======  =======  =========  =======================
   Name    Type     Value      Comment
   ======  =======  =========  =======================
   number  integer  [1-65025]  Number of signal groups
   ======  =======  =========  =======================
..

S0018
^^^^^^^^

Number of time plans |br|  |br| Can be used for the management system to check the number of time plans configured in the controller.


.. figtable::
   :nofig:
   :label: S0018
   :caption: S0018
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ======  =======  =========  ==================================
   Name    Type     Value      Comment
   ======  =======  =========  ==================================
   number  integer  [1-65025]  Number of time plans (depreciated)
   ======  =======  =========  ==================================
..

S0019
^^^^^^^^

Number of traffic situations |br|  |br| Can be used for the management system to check the number of traffic situations configured in the controller.


.. figtable::
   :nofig:
   :label: S0019
   :caption: S0019
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ======  =======  =========  ============================
   Name    Type     Value      Comment
   ======  =======  =========  ============================
   number  integer  [1-65025]  Number of traffic situations
   ======  =======  =========  ============================
..

S0020
^^^^^^^^

Control mode |br|  |br| Can be used for the management system to check the current control mode (startup, normal, standby, failure, test). |br|  |br| Please note that all values in this status uses comma-separated lists |br| - one value for each intersection, e.g. "1,2" and "startup,control"


.. figtable::
   :nofig:
   :label: S0020
   :caption: S0020
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ============  =======  =============================================================  =============================================================================================================================
   Name          Type     Value                                                          Comment
   ============  =======  =============================================================  =============================================================================================================================
   intersection  integer  [0-255]                                                        Comma separated list of intersections which the status relates to, |br| e.g. "1,2". Use "0" for all intersections of the TLC
   controlmode   string   -startup |br| -control |br| -standby |br| -failure |br| -test  startup: Startup mode |br| control: Normal control |br| standby: Standby mode |br| failure: Failure mode |br| test: Test mode
   ============  =======  =============================================================  =============================================================================================================================
..

S0021
^^^^^^^^

Manually set detector logic |br|  |br| Provides status of detector logic (1-255) regarding if they are either forced to true or false. |br|  |br| Can be used to connect RSMP compatible detection equipment to the traffic light controller. Can also be used for prioritization.


.. figtable::
   :nofig:
   :label: S0021
   :caption: S0021
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ==============  ======  =======  ================================================
   Name            Type    Value    Comment
   ==============  ======  =======  ================================================
   detectorlogics  string  [text]   Manually set detector logics (1/0) as text field
   ==============  ======  =======  ================================================
..

S0022
^^^^^^^^

List of time plans |br|  |br| Provides a list of the configured time plans which is possible to use. This status was added due to status S0018 only provides the total number of time plans and not which were possible to use with M0002. |br|  |br| Can be used for the management system to check the number of time plans configured in the controller.


.. figtable::
   :nofig:
   :label: S0022
   :caption: S0022
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ======  ======  =======  =============================================================
   Name    Type    Value    Comment
   ======  ======  =======  =============================================================
   status  string  [text]   Comma separated list of configured time plans. E.g. "1,2,3,5"
   ======  ======  =======  =============================================================
..

S0023
^^^^^^^^

Dynamic bands |br|  |br| Provides a list of all defined dynamic bands. Dynamic bands moves start of signal groups in the cycle and changes the signal timings. |br|  |br| A typical usage of dynamic bands is scenario based control where changing of signal timings is used for optimal traffic flow.


.. figtable::
   :nofig:
   :label: S0023
   :caption: S0023
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ======  ======  =======  =======================================================================================================================================================================================================================================================================
   Name    Type    Value    Comment
   ======  ======  =======  =======================================================================================================================================================================================================================================================================
   status  string  [text]   Dynamic bands. |br| Each dynamic band are written as pp-dd-ee where: |br| pp=Time plan |br| dd=Dynamic band number (from 1-10) |br| ee=Extension in seconds in this band |br|  |br| Each dynamic band is separated with a comma. |br|  |br| E.g. |br| pp-dd-ee,pp-dd-ee
   ======  ======  =======  =======================================================================================================================================================================================================================================================================
..

S0024
^^^^^^^^

Offset time |br|  |br| Offset time is used to define an offset between intersections in coordinated control. It is based on the expected travel time between intersections. |br|  |br| Can be used by the management system to check to fine tune the coordination for optimal traffic flow.


.. figtable::
   :nofig:
   :label: S0024
   :caption: S0024
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ======  ======  =======  =====================================================================================================================================================================================================
   Name    Type    Value    Comment
   ======  ======  =======  =====================================================================================================================================================================================================
   status  string  [text]   Offset table |br| Each offset time is written as pp-tt where: |br| pp=time plan |br| tt=offset time in seconds |br|  |br| Each offset time is separated with a comma |br|  |br| E.g. |br| pp-tt,pp-tt
   ======  ======  =======  =====================================================================================================================================================================================================
..

S0025
^^^^^^^^

Time-of-Green / Time-of-Red |br|  |br| Provides predicted signal timings of green and red for each signal group. Max, min and likely time to green and red.


.. figtable::
   :nofig:
   :label: S0025
   :caption: S0025
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   =================  =======  ============  ============================================================================================================================================================================================================================================================================================
   Name               Type     Value         Comment
   =================  =======  ============  ============================================================================================================================================================================================================================================================================================
   minToGEstimate     string   [time stamp]  Time stamp for the minimum time for the signal group to go to green. If the signal group is green, it is the minimum time for the next green. |br| Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   maxToGEstimate     string   [time stamp]  Time stamp for the maximum time for the signal group to go to green. If the signal group is green, it is the maximum time for the next green. |br| Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   likelyToGEstimate  string   [time stamp]  Time stamp for the most likely time for the signal group to go to green. If the signal group is green, it is the most likely time for the next green. |br| Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   ToGConfidence      integer  [0-100]       Confidence of the likelyToGEstimate. 0-100%
   minToREstimate     string   [time stamp]  Time stamp for the minimum time for the signal group to go to red. If the signal group is red, it is the minimum time for the next red. |br| Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   maxToREstimate     string   [time stamp]  Time stamp for the maximum time for the signal group to go to red. If the signal group is red, it is the maximum time for the next red. |br| Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   likelyToREstimate  string   [time stamp]  Time stamp for the most likely time for the signal group to go to red. If the signal group is red, it is the most likely time for the next red. |br| Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   ToRConfidence      integer  [0-100]       Confidence of the likelyToREstimate. 0-100%
   =================  =======  ============  ============================================================================================================================================================================================================================================================================================
..

S0026
^^^^^^^^

Week time table |br|  |br| Week time table for signal programs (time plan) to use for each day during a week. |br|  |br| The week time table determine which predefined signal timings (time plan) to use during the week for optimal traffic flow.


.. figtable::
   :nofig:
   :label: S0026
   :caption: S0026
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ======  ======  =======  =============================================================================================================================================================================================================================================================================================================================================================
   Name    Type    Value    Comment
   ======  ======  =======  =============================================================================================================================================================================================================================================================================================================================================================
   status  string  [text]   Week time table. Defines time table to use for each week day |br| Each day is written as d-t where: |br| d=day of week |br| t=time table nr |br|  |br| Day of week legend: |br| 0=Monday |br| 1=Tuesday |br| 2=Wednesday |br| 3=Thursday |br| 4=Friday |br| 5=Saturday |br| 6=Sunday |br|  |br| Each segment is separated with a comma |br| E.g. |br| d-t,d-t
   ======  ======  =======  =============================================================================================================================================================================================================================================================================================================================================================
..

S0027
^^^^^^^^

Time tables |br|  |br| Time of day for when to switch signal program (time plan). |br|  |br| The signal timings (time plan) to use during time of day for optimal traffic flow.


.. figtable::
   :nofig:
   :label: S0027
   :caption: S0027
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ======  ======  =======  ============================================================================================================================================================================================================================================================================================================================================================================================================================================================================
   Name    Type    Value    Comment
   ======  ======  =======  ============================================================================================================================================================================================================================================================================================================================================================================================================================================================================
   status  string  [text]   Time Table. Defines time tables. |br| Each time definition is written as t-o-h-m where: |br| t=time table nr (1-12) |br| o=function |br| h=hour - switching time |br| m=minute - switching minute |br|  |br| Function legend: |br| 0=no plan is selected by time table |br| 1=set plan 1 |br| … |br| 16= set plan 16 |br|  |br| hour and minute is using local time (not UTC) |br|  |br| Each time definition is separated with a comma |br|  |br| E.g. |br| t-o-h-m,t-o-h-m
   ======  ======  =======  ============================================================================================================================================================================================================================================================================================================================================================================================================================================================================
..

S0028
^^^^^^^^

Cycle time |br|  |br| Cycle time (or cycle length) is the sum of all phases in a time plan (traffic program). This time is fixed when using fixed time control or coordination (except "local coordination"). When the cycle counter reaches this length it is reset back to zero. |br|  |br| Changing the cycle time can be used as part of scenario based control.


.. figtable::
   :nofig:
   :label: S0028
   :caption: S0028
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ======  ======  =======  ============================================================================================================================================================================================================
   Name    Type    Value    Comment
   ======  ======  =======  ============================================================================================================================================================================================================
   status  string  [text]   Cycle time table |br| Each cycle time is written as pp-tt where: |br| pp=time plan |br| tt=cycle time in seconds |br|  |br| Each cycle time is separated with a comma |br|  |br|  |br| E.g. |br| pp-tt,pp-tt
   ======  ======  =======  ============================================================================================================================================================================================================
..

S0029
^^^^^^^^

Forced input status |br|  |br| Provide status of input (1-255) regarding if they are forced or not. Can be used for all types of input where the traffic light controller must react to external control. |br|  |br| Can be used for bus priority, coordination between traffic controllers, external control systems, and much more.


.. figtable::
   :nofig:
   :label: S0029
   :caption: S0029
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ======  ======  =======  =================================
   Name    Type    Value    Comment
   ======  ======  =======  =================================
   status  string  [text]   Forced input status as text field
   ======  ======  =======  =================================
..

S0030
^^^^^^^^

Forced output status |br|  |br| Provide status of output (1-255) regarding if they are forced or not. Can be used for all types of output where the traffic light controller needs to control other equipment. |br|  |br| Can be used for bus priority, coordination between traffic controllers, external control systems, and much more.


.. figtable::
   :nofig:
   :label: S0030
   :caption: S0030
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ======  ======  =======  ==================================
   Name    Type    Value    Comment
   ======  ======  =======  ==================================
   status  string  [text]   Forced output status as text field
   ======  ======  =======  ==================================
..

S0031
^^^^^^^^

Trigger level sensitivity for loop detector |br|  |br| The trigger level sensitivity determines at what level the loop detector should trigger. If it set too low then then traffic will not be detected as intended. If it is set too high the detector might give false positives. |br|  |br| Can be used to make sure that the detectors detect traffic as intended.


.. figtable::
   :nofig:
   :label: S0031
   :caption: S0031
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ======  ======  =======  =============================================================================================================================================================================================
   Name    Type    Value    Comment
   ======  ======  =======  =============================================================================================================================================================================================
   status  string  [text]   Loop detector trigger level sensitivity is written as dd-ss where: |br| dd=loop detector number |br| ss=sensitivity value |br| Each loop detector is separated with a comma. E.g.dd-ss,dd-ss.
   ======  ======  =======  =============================================================================================================================================================================================
..

S0032
^^^^^^^^

Coordinated control |br|  |br| This status is used when coordination between traffic light controllers is active. |br| Coordination is described in detail in the corresponding section |br|  |br| Please note that all values in this status uses comma-separated lists |br| - one value for each intersection, e.g. "1,2" and "centralized,off"


.. figtable::
   :nofig:
   :label: S0032
   :caption: S0032
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ============  =======  ===============================================================================================  ======================================================================================================================================================================================================================================================================================
   Name          Type     Value                                                                                            Comment
   ============  =======  ===============================================================================================  ======================================================================================================================================================================================================================================================================================
   intersection  integer  [0-255]                                                                                          Comma separated list of intersections which the status relates to, |br| e.g. "1,2". Use "0" for all intersections of the TLC
   status        string   -local |br| -centralized |br| -False                                                             local: Local coordination |br| centralized: Coordination with synchronized clock |br| False: Coordination not active
   source        string   -operator_panel |br| -calendar_clock |br| -control_block |br| -forced |br| -startup |br| -other  operator_panel: Operator panel is the source |br| calendar_clock: Calendar/clock is the source |br| control_block: Control block is the source |br| forced: Forced due to command from e.g. RSMP |br| startup: Set after startup mode |br| other: TLC switched status due other reason
   ============  =======  ===============================================================================================  ======================================================================================================================================================================================================================================================================================
..

S0091
^^^^^^^^

Operator logged in/out OP-panel |br|  |br| Provides information if maintenance personnel is currently working on site.


.. figtable::
   :nofig:
   :label: S0091
   :caption: S0091
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ======  =======  ==================  ========================================================================================================================
   Name    Type     Value               Comment
   ======  =======  ==================  ========================================================================================================================
   user    integer  -0 |br| -1 |br| -2  0: Nobody logged in |br| 1: Operator logged in at level 1 (read only) |br| 2: Operator logged in at level 2 (read/write)
   ======  =======  ==================  ========================================================================================================================
..

S0092
^^^^^^^^

Operator logged in/out web-interface |br|  |br| Provides information if maintenance personnel is currently working with the controller.


.. figtable::
   :nofig:
   :label: S0092
   :caption: S0092
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ======  =======  ==================  ========================================================================================================================
   Name    Type     Value               Comment
   ======  =======  ==================  ========================================================================================================================
   user    integer  -0 |br| -1 |br| -2  0: Nobody logged in |br| 1: Operator logged in at level 1 (read only) |br| 2: Operator logged in at level 2 (read/write)
   ======  =======  ==================  ========================================================================================================================
..

S0095
^^^^^^^^

Version of Traffic Light Controller |br|  |br| Provides diagnostic version information.


.. figtable::
   :nofig:
   :label: S0095
   :caption: S0095
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ======  ======  =======  ==================================================================
   Name    Type    Value    Comment
   ======  ======  =======  ==================================================================
   status  string  [text]   Manufacturer, product name and version of traffic light controller
   ======  ======  =======  ==================================================================
..

S0096
^^^^^^^^

Current date and time |br|  |br| Provides diagnostic information about the current date and time set in the controller.


.. figtable::
   :nofig:
   :label: S0096
   :caption: S0096
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ======  =======  ========  ================================
   Name    Type     Value     Comment
   ======  =======  ========  ================================
   year    integer  [0-9999]  Year. Note: UTC is used
   month   integer  [1-12]    Month. Note: UTC is used
   day     integer  [1-31]    Day of month.  Note: UTC is used
   hour    integer  [0-23]    Hour of day. Note: UTC is used
   minute  integer  [0-59]    Minute. Note: UTC is used
   second  integer  [0-59]    Second. Note: UTC is used
   ======  =======  ========  ================================
..

S0097
^^^^^^^^

Checksum of traffic parameters |br|  |br| Can be used to check if any traffic parameter has been changed. |br|  |br| For instance, depending on controller, maintenance personnel can modify traffic parameters on site to optimize traffic flow. This status provides the ability to monitor if any traffic parameter has been changed. The traffic parameters may be downloaded with S0098.


.. figtable::
   :nofig:
   :label: S0097
   :caption: S0097
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   =========  ======  ============  ================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
   Name       Type    Value         Comment
   =========  ======  ============  ================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
   checksum   string  [text]        Checksum of the traffic parameters |br| Uses SHA-2 as hashing algorithm |br| Includes |br| - all signal programs, including program versions |br| - signal group settings |br| - time plans |br| - safety matrix |br| - intergreen times |br| - detector settings |br|  |br| It should NOT include: |br| - network settings |br| - log files |br| - software |br| - other device settings that are not part of the signal program |br|  |br| Note: |br| - The checksum should be calculated using the same data as used in S0098
   timestamp  string  [time stamp]  Time stamp of the checksum. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   =========  ======  ============  ================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
..

S0098
^^^^^^^^

Configuration of traffic parameters |br|  |br| Can be used to download all traffic parameters from the controller. |br|  |br| For instance, depending on controller, maintenance personnel can modify traffic parameters on site to optimize traffic flow. This status provides the ability to downloaded them.


.. figtable::
   :nofig:
   :label: S0098
   :caption: S0098
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   =========  ======  ============  =================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
   Name       Type    Value         Comment
   =========  ======  ============  =================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
   config     base64  [binary]      Traffic parameters |br| Includes |br| - all signal programs, including program versions |br| - signal group settings |br| - time plans |br| - safety matrix |br| - intergreen times |br| - detector setting |br|  |br| It should NOT include: |br| - network settings |br| - log files |br| - software |br| - other device settings that are not part of the signal program |br|  |br| Note: |br| - There is no way to upload this binary file to the TLC using RSMP |br| - The format of the binary file is not specified and is not expected to be compatible between suppliers
   timestamp  string  [time stamp]  Time stamp of the config. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   version    string  [text]        Version information of the configuration. Contains basic information such as controller id, changes to config and other information. The format is not specified in detail
   =========  ======  ============  =================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
..

S0201
^^^^^^^^

Traffic Counting: Number of vehicles |br|  |br| Used for Traffic counting.


.. figtable::
   :nofig:
   :label: S0201
   :caption: S0201
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   =========  =======  ============  ====================================================================================================================================================================
   Name       Type     Value         Comment
   =========  =======  ============  ====================================================================================================================================================================
   starttime  string   [time stamp]  Time stamp for start of measuring. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   vehicles   integer  [0-65535]     Number of vehicles on a given detector logic (since last update)
   =========  =======  ============  ====================================================================================================================================================================
..

S0202
^^^^^^^^

Traffic Counting: Vehicle speed |br|  |br| Used for Traffic counting.


.. figtable::
   :nofig:
   :label: S0202
   :caption: S0202
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   =========  =======  ============  ====================================================================================================================================================================
   Name       Type     Value         Comment
   =========  =======  ============  ====================================================================================================================================================================
   starttime  string   [time stamp]  Time stamp for start of measuring. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   speed      integer  [0-65535]     Average speed in km/h
   =========  =======  ============  ====================================================================================================================================================================
..

S0203
^^^^^^^^

Traffic Counting: Occupancy |br|  |br| Used for Traffic counting.


.. figtable::
   :nofig:
   :label: S0203
   :caption: S0203
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   =========  =======  ============  ====================================================================================================================================================================
   Name       Type     Value         Comment
   =========  =======  ============  ====================================================================================================================================================================
   starttime  string   [time stamp]  Time stamp for start of measuring. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   occupancy  integer  [0-100]       Occupancy in percent (0-100%)
   =========  =======  ============  ====================================================================================================================================================================
..

S0204
^^^^^^^^

Traffic Counting: Number of vehicles of given classification |br|  |br| Used for Traffic counting.


.. figtable::
   :nofig:
   :label: S0204
   :caption: S0204
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   =========  =======  ============  ====================================================================================================================================================================
   Name       Type     Value         Comment
   =========  =======  ============  ====================================================================================================================================================================
   starttime  string   [time stamp]  Time stamp for start of measuring. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   P          integer  [0-65535]     Number of cars
   PS         integer  [0-65535]     Number of cars with trailers
   L          integer  [0-65535]     Number of trucks
   LS         integer  [0-65535]     Number of trucks with trailers
   B          integer  [0-65535]     Number of busses
   SP         integer  [0-65535]     Number of trams
   MC         integer  [0-65535]     Number of motor cycles
   C          integer  [0-65535]     Number of bicycles
   F          integer  [0-65535]     Number of pedestrians
   =========  =======  ============  ====================================================================================================================================================================
..

S0205
^^^^^^^^

Traffic Counting: Number of vehicles |br|  |br| This status was introduced to improve performance in case traffic counting is done on all all detectors.


.. figtable::
   :nofig:
   :label: S0205
   :caption: S0205
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ========  ======  =============  =================================================================================================================================================================================================================================================================
   Name      Type    Value          Comment
   ========  ======  =============  =================================================================================================================================================================================================================================================================
   start     string  [time stamp]   Time stamp for start of measuring. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   vehicles  string  [0-65535,...]  Number of vehicles |br| - Value expressed as an integer with a range of 0-65535. |br| - Contains data from all detector logics. Each detector logic is separated with a comma. |br| - The value is set to “-1” if no data could be measured (e.g. detector fault)
   ========  ======  =============  =================================================================================================================================================================================================================================================================
..

S0206
^^^^^^^^

Traffic Counting: Vehicle speed |br|  |br| This status was introduced to improve performance in case traffic counting is done on all all detectors.


.. figtable::
   :nofig:
   :label: S0206
   :caption: S0206
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ======  ======  =============  ==============================================================================================================================================================================================================================================================================
   Name    Type    Value          Comment
   ======  ======  =============  ==============================================================================================================================================================================================================================================================================
   start   string  [time stamp]   Time stamp for start of measuring. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   speed   string  [0-65535,...]  Average speed in km/h (integer) |br| - Value expressed as an integer with a range of 0-65535. |br| - Contains data from all detector logics. Each detector logic is separated with a comma. |br| - The value is set to “-1” if no data could be measured (e.g. detector fault)
   ======  ======  =============  ==============================================================================================================================================================================================================================================================================
..

S0207
^^^^^^^^

Traffic Counting: Occupancy |br|  |br| This status was introduced to improve performance in case traffic counting is done on all all detectors.


.. figtable::
   :nofig:
   :label: S0207
   :caption: S0207
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   =========  ======  ============  =============================================================================================================================================================================================================================================================================
   Name       Type    Value         Comment
   =========  ======  ============  =============================================================================================================================================================================================================================================================================
   start      string  [time stamp]  Time stamp for start of measuring. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   occupancy  string  [0-100,...]   Occupancy in percent (%) (0-100) |br| - Value expressed as an integer with a range of 0-100. |br| - Contains data from all detector logics. Each detector logic is separated with a comma. |br| - The value is set to “-1” if no data could be measured (e.g. detector fault)
   =========  ======  ============  =============================================================================================================================================================================================================================================================================
..

S0208
^^^^^^^^

Traffic Counting: Number of vehicles of given classification |br|  |br| This status was introduced to improve performance in case traffic counting is done on all all detectors.


.. figtable::
   :nofig:
   :label: S0208
   :caption: S0208
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ======  ======  =============  =============================================================================================================================================================================================================================================================================
   Name    Type    Value          Comment
   ======  ======  =============  =============================================================================================================================================================================================================================================================================
   start   string  [time stamp]   Time stamp for start of measuring. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   P       string  [0-65535,...]  Number of cars |br| - Value expressed as an integer with a range of 0-65535. |br| - Contains data from all detector logics. Each detector logic is separated with a comma. |br| - The value is set to “-1” if no data could be measured (e.g. detector fault)
   PS      string  [0-65535,...]  Number of cars with trailers |br| - Value expressed as an integer with a range of 0-65535. |br| - Contains data from all detector logics. Each detector logic is separated with a comma. |br| - The value is set to “-1” if no data could be measured (e.g. detector fault)
   L       string  [0-65535,...]  Number of trucks |br| - Value expressed as an integer with a range of 0-65535. |br| - Contains data from all detector logics. Each detector logic is separated with a comma. |br| - The value is set to “-1” if no data could be measured (e.g. detector fault)
   LS      string  [0-65535,...]  Number of trucks with trailers |br| - Value expressed as an integer with a range of 0-65535. |br| - Contains data from all detector logics. Each detector logic is separated with a comma. |br| - The value is set to “-1” if no data could be measured (e.g. detector fault)
   B       string  [0-65535,...]  Number of busses |br| - Value expressed as an integer with a range of 0-65535. |br| - Contains data from all detector logics. Each detector logic is separated with a comma. |br| - The value is set to “-1” if no data could be measured (e.g. detector fault)
   SP      string  [0-65535,...]  Number of trams |br| - Value expressed as an integer with a range of 0-65535. |br| - Contains data from all detector logics. Each detector logic is separated with a comma. |br| - The value is set to “-1” if no data could be measured (e.g. detector fault)
   MC      string  [0-65535,...]  Number of motor cycles |br| - Value expressed as an integer with a range of 0-65535. |br| - Contains data from all detector logics. Each detector logic is separated with a comma. |br| - The value is set to “-1” if no data could be measured (e.g. detector fault)
   C       string  [0-65535,...]  Number of bicycles |br| - Value expressed as an integer with a range of 0-65535. |br| - Contains data from all detector logics. Each detector logic is separated with a comma. |br| - The value is set to “-1” if no data could be measured (e.g. detector fault)
   F       string  [0-65535,...]  Number of pedestrians |br| - Value expressed as an integer with a range of 0-65535. |br| - Contains data from all detector logics. Each detector logic is separated with a comma. |br| - The value is set to “-1” if no data could be measured (e.g. detector fault)
   ======  ======  =============  =============================================================================================================================================================================================================================================================================
..

Commands
--------

.. figtable::
   :nofig:
   :label: Commands
   :caption: Commands
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.24\linewidth} p{0.15\linewidth} p{0.40\linewidth}

   ========================  ===============  ======================================================
   ObjectType                commandCodeId    Description
   ========================  ===============  ======================================================
   Traffic Light Controller  `M0001`_         Sets functional position
   Traffic Light Controller  `M0002`_         Sets current time plan
   Traffic Light Controller  `M0003`_         Sets traffic situation the controller uses.
   Traffic Light Controller  `M0004`_         Restarts Traffic Light Controller
   Traffic Light Controller  `M0005`_         Activate emergency route
   Traffic Light Controller  `M0006`_         Activate input
   Traffic Light Controller  `M0007`_         Activate fixed time control
   Detector logic            `M0008`_         Sets manual activation of detector logic
   Signal group              `M0010`_         Start of signal group. Orders a signal group to green.
   Signal group              `M0011`_         Stop of signal group. Orders a signal group to red.
   Traffic Light Controller  `M0012`_         Request start or stop of a series of signal groups.
   Traffic Light Controller  `M0013`_         Activate a series of inputs
   Traffic Light Controller  `M0014`_         Set dynamic bands
   Traffic Light Controller  `M0015`_         Set Offset time
   Traffic Light Controller  `M0016`_         Set week time table
   Traffic Light Controller  `M0017`_         Set time tables
   Traffic Light Controller  `M0018`_         Set Cycle time
   Traffic Light Controller  `M0019`_         Force input
   Traffic Light Controller  `M0020`_         Force output
   Traffic Light Controller  `M0021`_         Set trigger level sensitivity for loop detector
   Traffic Light Controller  `M0103`_         Set security code
   Traffic Light Controller  `M0104`_         Set clock
   ========================  ===============  ======================================================
..

M0001
^^^^^

Sets functional position |br|  |br| Sets the controller to yellow flash, dark mode or normal control. |br|  |br| Requires security code 2


.. figtable::
   :nofig:
   :label: M0001
   :caption: M0001
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.14\linewidth} p{0.20\linewidth} p{0.07\linewidth} p{0.15\linewidth} p{0.30\linewidth}

   ============  =========  =======  ===========================================  ==================================================================================================================
   Name          Command    Type     Value                                        Comment
   ============  =========  =======  ===========================================  ==================================================================================================================
   status        setValue   string   -NormalControl |br| -YellowFlash |br| -Dark  NormalControl: Normal Control |br| YellowFlash: Enables yellow flash |br| Dark: Enables dark mode
   securityCode  setValue   string   [text]                                       Security code 2
   timeout       setValue   integer  [0-1440]                                     Time in minutes until controller automatically reverts to previous functional position. |br| 0=no automatic return
   intersection  setValue   integer  [0-255]                                      Intersection number
   ============  =========  =======  ===========================================  ==================================================================================================================
..

M0002
^^^^^

Sets current time plan |br|  |br| Change of traffic program of the traffic light controller. |br|  |br| Typical usages is scenario based control where change of program is used to change signal timings etc. |br|  |br| This command changes the signal timings for optimal traffic flow. |br|  |br| Requires security code 2


.. figtable::
   :nofig:
   :label: M0002
   :caption: M0002
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.14\linewidth} p{0.20\linewidth} p{0.07\linewidth} p{0.15\linewidth} p{0.30\linewidth}

   ============  =========  =======  =================  ===================================================================================================================
   Name          Command    Type     Value              Comment
   ============  =========  =======  =================  ===================================================================================================================
   status        setPlan    boolean  -False |br| -True  False: Controller uses time plan according to programming |br| True: Controller uses time plan according to command
   securityCode  setPlan    string   [text]             Security code 2
   timeplan      setPlan    integer  [1-255]            designation of time plan
   ============  =========  =======  =================  ===================================================================================================================
..

M0003
^^^^^

Sets traffic situation the controller uses. |br|  |br| Used for area-based control where a command can be sent to a master traffic light controller about which predefined traffic situation to use (1-255). |br|  |br| Traffic situation is a concept used to divide multiple TLC's into areas and sub-areas. The traffic situation gives the possibility to change the TLC sub-area dynamically depending on the time of day and the traffic flow. Depending on the traffic situation each TLC selects the time plan dynamically. |br|  |br| Requires security code 2


.. figtable::
   :nofig:
   :label: M0003
   :caption: M0003
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.14\linewidth} p{0.20\linewidth} p{0.07\linewidth} p{0.15\linewidth} p{0.30\linewidth}

   ===============  ===================  =======  =================  =======================================================================================================================================
   Name             Command              Type     Value              Comment
   ===============  ===================  =======  =================  =======================================================================================================================================
   status           setTrafficSituation  boolean  -False |br| -True  False: Controller uses traffic situation according to own programming |br| True: Controller uses traffic situation according to command
   securityCode     setTrafficSituation  string   [text]             Security code 2
   traficsituation  setTrafficSituation  integer  [1-255]            designation of traficsituation
   ===============  ===================  =======  =================  =======================================================================================================================================
..

M0004
^^^^^

Restarts Traffic Light Controller |br|  |br| Used in the event of serious faults in the device where a restart is considered to be able to remedy a problem. |br|  |br| Requires security code 2


.. figtable::
   :nofig:
   :label: M0004
   :caption: M0004
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.14\linewidth} p{0.20\linewidth} p{0.07\linewidth} p{0.15\linewidth} p{0.30\linewidth}

   ============  ==========  =======  =================  ========================
   Name          Command     Type     Value              Comment
   ============  ==========  =======  =================  ========================
   status        setRestart  boolean  -False |br| -True  True: Restart controller
   securityCode  setRestart  string   [text]             Security code 2
   ============  ==========  =======  =================  ========================
..

M0005
^^^^^

Activate emergency route |br|  |br| The function is made for emergency prioritization. Works in the same way as the M0006 and M0008 where the traffic light controller responds to an input. |br|  |br| Should be used in situations where full priority is given in the emergency vehicle program. |br|  |br| Requires security code 2.


.. figtable::
   :nofig:
   :label: M0005
   :caption: M0005
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.14\linewidth} p{0.20\linewidth} p{0.07\linewidth} p{0.15\linewidth} p{0.30\linewidth}

   ==============  ============  =======  =================  =====================================================================
   Name            Command       Type     Value              Comment
   ==============  ============  =======  =================  =====================================================================
   status          setEmergency  boolean  -False |br| -True  False: Activate emergency route |br| True: Deactivate emergency route
   securityCode    setEmergency  string   [text]             Security code 2
   emergencyroute  setEmergency  integer  [1-255]            Number of emergency route
   ==============  ============  =======  =================  =====================================================================
..

M0006
^^^^^

Activate input |br|  |br| Set given input (1-255) of the controllers general purpose I/O to either true or false. |br|  |br| The function can provide an input to the traffic light controller on which a predefined action can be taken. |br|  |br| Can be used for all types of input where the traffic light controller must react to external control. |br|  |br| Typical usages are bus priority, coordination between traffic controllers, external control systems, and much more. |br|  |br| Requires security code 2


.. figtable::
   :nofig:
   :label: M0006
   :caption: M0006
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.14\linewidth} p{0.20\linewidth} p{0.07\linewidth} p{0.15\linewidth} p{0.30\linewidth}

   ============  =========  =======  =================  =================================================
   Name          Command    Type     Value              Comment
   ============  =========  =======  =================  =================================================
   status        setInput   boolean  -False |br| -True  False: Deactivate input |br| True: Activate input
   securityCode  setInput   string   [text]             Security code 2
   input         setInput   integer  [1-255]            Number of Input
   ============  =========  =======  =================  =================================================
..

M0007
^^^^^

Activate fixed time control |br|  |br| Deactivates the traffic actuated control using detectors and activates pre-timed control. |br|  |br| Can be used in case normal detectors can't be used, e.g. during maintenance work. |br|  |br| Requires security code 2.


.. figtable::
   :nofig:
   :label: M0007
   :caption: M0007
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.14\linewidth} p{0.20\linewidth} p{0.07\linewidth} p{0.15\linewidth} p{0.30\linewidth}

   ============  ============  =======  =================  ===========================================================================
   Name          Command       Type     Value              Comment
   ============  ============  =======  =================  ===========================================================================
   status        setFixedTime  boolean  -False |br| -True  False: Deactivate fixed time control |br| True: Activate fixed time control
   securityCode  setFixedTime  string   [text]             Security code 2
   ============  ============  =======  =================  ===========================================================================
..

M0008
^^^^^

Sets manual activation of detector logic |br|  |br| Set given detector logic (1-255) to either true or false. |br|  |br| Can e.g. be used to connect RSMP compatible detection equipment to the traffic light controller. Can also be used for prioritization. |br|  |br| Requires security code 2


.. figtable::
   :nofig:
   :label: M0008
   :caption: M0008
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.14\linewidth} p{0.20\linewidth} p{0.07\linewidth} p{0.15\linewidth} p{0.30\linewidth}

   ============  =====================  =======  =================  =======================================================================================================
   Name          Command                Type     Value              Comment
   ============  =====================  =======  =================  =======================================================================================================
   status        setForceDetectorLogic  boolean  -False |br| -True  False: Deactivate manual control of detector logic |br| True: Activate manual control of detector logic
   securityCode  setForceDetectorLogic  string   [text]             Security code 2
   mode          setForceDetectorLogic  boolean  -False |br| -True  False: Deactivate detector logic |br| True: Activate detector logic
   ============  =====================  =======  =================  =======================================================================================================
..

M0010
^^^^^

Start of signal group. Orders a signal group to green. |br|  |br| Although this command is intended to be used with coordination it is not actually specified to be used for this yet. It is reserved in the SXL for possible future use. |br|  |br| Intended for use with coordination of signaling systems where a traffic light controller communicates with neighboring controllers. Only used when a primary controller orders signal group of other controller to green or red (Coordination with external control bits). |br|  |br| Requires security code 2


.. figtable::
   :nofig:
   :label: M0010
   :caption: M0010
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.14\linewidth} p{0.20\linewidth} p{0.07\linewidth} p{0.15\linewidth} p{0.30\linewidth}

   ============  =========  =======  =================  ====================================================================
   Name          Command    Type     Value              Comment
   ============  =========  =======  =================  ====================================================================
   status        setStart   boolean  -False |br| -True  False: No command (default) |br| True: Order a signal group to green
   securityCode  setStart   string   [text]             Security code 2
   ============  =========  =======  =================  ====================================================================
..

M0011
^^^^^

Stop of signal group. Orders a signal group to red. |br|  |br| Although this command is intended to be used with coordination it is not actually specified to be used for this yet. It is reserved in the SXL for possible future use. |br|  |br| Intended for use with coordination of signaling systems where a traffic light controller communicates with neighboring controllers. Only used when a primary controller orders signal group of other controller to green or red (Coordination with external control bits). |br|  |br| Requires security code 2


.. figtable::
   :nofig:
   :label: M0011
   :caption: M0011
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.14\linewidth} p{0.20\linewidth} p{0.07\linewidth} p{0.15\linewidth} p{0.30\linewidth}

   ============  =========  =======  =================  ==================================================================
   Name          Command    Type     Value              Comment
   ============  =========  =======  =================  ==================================================================
   status        setStop    boolean  -False |br| -True  False: No command (default) |br| True: Order a signal group to red
   securityCode  setStop    string   [text]             Security code 2
   ============  =========  =======  =================  ==================================================================
..

M0012
^^^^^

Request start or stop of a series of signal groups. |br|  |br| Starts or stops several signal groups. |br|  |br| This command was introduced due to coordination requirements needing to set many signal groups to green and red at the same time and M0010 and M0012 being to slow to send a message for each signal group individually. |br|  |br| Although this command is intended to be used with coordination it is not actually specified to be used for this yet. It is reserved in the SXL for possible future use. |br|  |br| Intended for use with coordination of signaling systems where a traffic light controller communicates with neighboring controllers. |br|  |br| Only used when a primary controller orders signal group of other controller to green or red (Coordination with external control bits). |br|  |br| May also include purposes for adaptive control where a UTC system or a local traffic light controller takes over the phase control (stage control). |br|  |br| Requires security code 2.


.. figtable::
   :nofig:
   :label: M0012
   :caption: M0012
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.14\linewidth} p{0.20\linewidth} p{0.07\linewidth} p{0.15\linewidth} p{0.30\linewidth}

   ============  =========  ======  =======  ===============================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
   Name          Command    Type    Value    Comment
   ============  =========  ======  =======  ===============================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
   status        setStart   string  [text]   Orders signal groups to green or red. Sets a block of 16 signal groups at a time. Can be repeated to set several blocks of 16 signal groups. Values are separated with comma. Blocks are separated with semicolon. |br|  |br| 1=Order signal group to green |br| 0=Order signal group to red |br|  |br| Format: [Offset],[Bits to set],[Bits to unset]:… |br|  |br| Offset sets where the 16 inputs starts from followed by two 16 bit values telling which bit to set and unset in binary format, i.e. first bit have value 1 and last bit have value 32768. |br|  |br| Example 1: |br| "5, 4134, 65" sets input 6,7,10,17 = on and 5,11 = off |br| (Input starts from no. 5 and bit 1,2,5,12 = 1 and bit 0,6 = 0) |br|  |br| Example 2: |br| "22, 1, 4" sets input 22 = on and 24 = off |br| (Input starts from no. 22 and bit 0 = 1 and bit 2 = 0) |br|  |br| And both these examples could be sent in the same message as: |br| "5,4143,65;22,1,4" |br|  |br| Such a message would order signal group 6,7,10,17,22 to green and signal group 5,11,24 to red
   securityCode  setStart   string  [text]   Security code 2
   ============  =========  ======  =======  ===============================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
..

M0013
^^^^^

Activate a series of inputs |br|  |br| Set given inputs (1-255) of the controllers general purpose I/O to either true or false. This command was introduced due to coordination requirements needing to set many inputs to true/false at the same time and M0006 being to slow to send a message for each input individually. With this command many inputs can be set to true/false at the same time using a single command message. It can be used for all types of input where the traffic light controller must react to external control. Typical usages are bus priority, coordination between traffic controllers, external control systems, and much more. Requires security code 2 |br|  |br| The parameter 'status' sets/unsets a block of 16 inputs at a time. It can be repeated to set several blocks of 16 inputs. Values are separated with comma. Blocks are separated with semicolon. |br| Format: [Offset];[Bits to set];[Bits to unset];… |br|  |br| - 'Offset' defines where the 16 inputs starts from |br| - 'Bits to set' defines which bit(s) to set. '0' if unsed |br| - 'Bits to unset' defines which bit(s) to unset. '0' if unused |br|  |br| Example 1: |br| "3,4134,65" sets input 4,5,8,15  and unsets 3,9 |br| - Input starts from no. 5 |br| - "4134" is 1 0000 0010 0110 in binary, but since input starts from 3, it is shifted 3 bits, e.g. 1000 0001 0011 0000 which are bits 4,5,8,15 |br| - "65" is 100 0001 in binary, but since input starts from 3, it is shifted 3 bits, e.g. 10 0000 1000 which are bits 3,9 |br|  |br| Example 2: |br| "12,1,4" sets input 12 and unsets 14 |br| - Input starts from no. 12 |br| - "1" is 1 in binary, but since input starts at 12 it is shifted 12 bits, e.g. 1 0000 0000 0000, which is bit 12 |br| - "4" is 100 in binary, but since input starts at 12 it is shifted 12 bits, e.g. 100 0000 0000 0000, which is bit 14 |br|  |br| And both these examples could be sent in the same message as: |br| "3,4143,65;12,1,4" |br|  |br| Such a message would set input 4,5,8,12,15 and unset input 3,9,14 |br|  |br| Example 3: |br| "0,1,2" sets input 0 and unsets 1 |br| - Input starts from 0 |br| - "1" is 1 in binary, which is bit 0 |br| - "2" is 10 in binary, which is bit 1 |br| 


.. figtable::
   :nofig:
   :label: M0013
   :caption: M0013
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.14\linewidth} p{0.20\linewidth} p{0.07\linewidth} p{0.15\linewidth} p{0.30\linewidth}

   ============  =========  ======  =======  ===========================================================================================================================================================================================================================
   Name          Command    Type    Value    Comment
   ============  =========  ======  =======  ===========================================================================================================================================================================================================================
   status        setInput   string  [text]   Sets/Unsets a block of 16 inputs at a time. Can be repeated to set several blocks of 16 inputs. Values are separated with comma. Blocks are separated with semicolon. |br| Format: [Offset];[Bits to set];[Bits to unset];…
   securityCode  setInput   string  [text]   Security code 2
   ============  =========  ======  =======  ===========================================================================================================================================================================================================================
..

M0014
^^^^^

Set dynamic bands |br|  |br| Can be used to change between predefined signal timings. Moves the start of signal groups in the cycle. |br|  |br| This command can be used to change the split of green time during the cycle. A typical usage is scenario based control where changing of signal timings is used for optimal traffic flow. |br|  |br| Requires security code 2


.. figtable::
   :nofig:
   :label: M0014
   :caption: M0014
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.14\linewidth} p{0.20\linewidth} p{0.07\linewidth} p{0.15\linewidth} p{0.30\linewidth}

   ============  ===========  =======  =======  ============================================================================================================================================================================================================================================
   Name          Command      Type     Value    Comment
   ============  ===========  =======  =======  ============================================================================================================================================================================================================================================
   plan          setCommands  integer  [0-255]  Plan to be changed
   status        setCommands  string   [text]   Dynamic bands. |br| Each dynamic band are written as dd-ee where: |br| dd=Dynamic band number (from 1-10) |br| ee=Extension in seconds in this band |br|  |br| Each dynamic band is separated with a comma. |br|  |br| E.g. |br| dd-ee,dd-ee
   securityCode  setCommands  string   [text]   Security code 2
   ============  ===========  =======  =======  ============================================================================================================================================================================================================================================
..

M0015
^^^^^

Set Offset time |br|  |br| Offset time is used to define an offset between intersections in coordinated control. It is based on the expected travel time between intersections. |br|  |br| This command can be used to fine tune the coordination for optimal traffic flow. |br|  |br| Requires security code 2.


.. figtable::
   :nofig:
   :label: M0015
   :caption: M0015
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.14\linewidth} p{0.20\linewidth} p{0.07\linewidth} p{0.15\linewidth} p{0.30\linewidth}

   ============  =========  =======  =======  ==========================
   Name          Command    Type     Value    Comment
   ============  =========  =======  =======  ==========================
   status        setOffset  integer  [0-255]  Set offset time in seconds
   plan          setOffset  integer  [0-255]  Time plan nr
   securityCode  setOffset  string   [text]   Security code 2
   ============  =========  =======  =======  ==========================
..

M0016
^^^^^

Set week time table |br|  |br| Set which time table for signal programs to use for each day during a week. |br|  |br| This command changes the signal timings during the week for optimal traffic flow. |br|  |br| Requires security code 2.


.. figtable::
   :nofig:
   :label: M0016
   :caption: M0016
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.14\linewidth} p{0.20\linewidth} p{0.07\linewidth} p{0.15\linewidth} p{0.30\linewidth}

   ============  ============  ======  =======  =======================================================================================================================================================================================================================================================================================================================================================================
   Name          Command       Type    Value    Comment
   ============  ============  ======  =======  =======================================================================================================================================================================================================================================================================================================================================================================
   status        setWeekTable  string  [text]   Week time table. Defines time table to use for each week day |br| Each segment is written as d-t where: |br| d=day of week |br| t=time table nr |br|  |br| Day of week legend: |br| 0=Monday |br| 1=Tuesday |br| 2=Wednesday |br| 3=Thursday |br| 4=Friday |br| 5=Saturday |br| 6=Sunday |br|  |br| Each segment is separated with a comma |br|  |br| E.g. |br| d-t,d-t
   securityCode  setWeekTable  string  [text]   Security code 2
   ============  ============  ======  =======  =======================================================================================================================================================================================================================================================================================================================================================================
..

M0017
^^^^^

Set time tables |br|  |br| Set time of day for when to automatically switch signal program (time plan). |br|  |br| This command changes the signal timings according to time of day for optimal traffic flow. |br|  |br| Requires security code 2.


.. figtable::
   :nofig:
   :label: M0017
   :caption: M0017
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.14\linewidth} p{0.20\linewidth} p{0.07\linewidth} p{0.15\linewidth} p{0.30\linewidth}

   ============  ============  ======  =======  =============================================================================================================================================================================================================================================================================================================================================================================================================================================================================
   Name          Command       Type    Value    Comment
   ============  ============  ======  =======  =============================================================================================================================================================================================================================================================================================================================================================================================================================================================================
   status        setTimeTable  string  [text]   Time Table. Defines time tables. |br| Each time definition is written as t-o-h-m where: |br| t=time table nr (1-12) |br| o=function |br| h=hour - switching time |br| m=minute - switching minute |br|  |br| Function legend: |br| 0=no plan is selected by time table |br| 1=set plan 1 |br| … |br| 16= set plan 16 |br|  |br| hour and minute is using local time (not UTC) |br|  |br| Each time definition is separated with a comma. |br|  |br| E.g. |br| t-o-h-m,t-o-h-m
   securityCode  setTimeTable  string  [text]   Security code 2
   ============  ============  ======  =======  =============================================================================================================================================================================================================================================================================================================================================================================================================================================================================
..

M0018
^^^^^

Set Cycle time |br|  |br| Cycle time (or cycle length) is the sum of all phases in a time plan (traffic program). This time is fixed when using fixed time control or coordination (except "local coordination"). When the cycle counter reaches this length it is reset back to zero. |br|  |br| This command provides the ability to change the cycle time when using coordinated or fixed time control. It changes the timings for optimal traffic flow. Can be used with scenario based control. |br|  |br| Requires security code 2.


.. figtable::
   :nofig:
   :label: M0018
   :caption: M0018
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.14\linewidth} p{0.20\linewidth} p{0.07\linewidth} p{0.15\linewidth} p{0.30\linewidth}

   ============  ============  =======  =======  =========================
   Name          Command       Type     Value    Comment
   ============  ============  =======  =======  =========================
   status        setCycleTime  integer  [1-255]  Set cycle time in seconds
   plan          setCycleTime  integer  [0-255]  Time plan nr
   securityCode  setCycleTime  string   [text]   Security code 2
   ============  ============  =======  =======  =========================
..

M0019
^^^^^

Force input |br|  |br| Force a given input (1-255) of the controllers general purpose I/O to either True or False. Can be used for all types of input where the traffic light controller must react to external control. |br|  |br| Can be used for bus priority, coordination between traffic controllers, external control systems, and much more. |br|  |br| Requires security code 2.


.. figtable::
   :nofig:
   :label: M0019
   :caption: M0019
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.14\linewidth} p{0.20\linewidth} p{0.07\linewidth} p{0.15\linewidth} p{0.30\linewidth}

   ============  =========  =======  =================  ============================================================
   Name          Command    Type     Value              Comment
   ============  =========  =======  =================  ============================================================
   status        setInput   boolean  -False |br| -True  False: Force input |br| True: Release input
   securityCode  setInput   string   [text]             Security code 2
   input         setInput   integer  [1-255]            Number of Input
   inputValue    setInput   boolean  -False |br| -True  False: input forced to False |br| True: input forced to True
   ============  =========  =======  =================  ============================================================
..

M0020
^^^^^

Force output |br|  |br| Force a given output (1-255) of the controllers general purpose I/O to either True of False. Can be used for all types of output where the traffic light controller needs to control other equipment. |br|  |br| Can be used for bus priority, coordination between traffic controllers, external control systems, and much more. |br|  |br| Requires security code 2.


.. figtable::
   :nofig:
   :label: M0020
   :caption: M0020
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.14\linewidth} p{0.20\linewidth} p{0.07\linewidth} p{0.15\linewidth} p{0.30\linewidth}

   ============  =========  =======  =================  ==============================================================
   Name          Command    Type     Value              Comment
   ============  =========  =======  =================  ==============================================================
   status        setOutput  boolean  -False |br| -True  False: Force output |br| True: Release output
   securityCode  setOutput  string   [text]             Security code 2
   output        setOutput  integer  [1-255]            Number of Output
   outputValue   setOutput  boolean  -False |br| -True  False: output forced to False |br| True: output forced to True
   ============  =========  =======  =================  ==============================================================
..

M0021
^^^^^

Set trigger level sensitivity for loop detector |br|  |br| The trigger level sensitivity determines at what level a loop detector should trigger. If it set too low then then traffic will not be detected as intended. If it is set too high the detector might give false positives. |br|  |br| This command provides the ability to fine tune loop detectors to make sure they detect traffic as intended. |br|  |br| Requires security code 2


.. figtable::
   :nofig:
   :label: M0021
   :caption: M0021
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.14\linewidth} p{0.20\linewidth} p{0.07\linewidth} p{0.15\linewidth} p{0.30\linewidth}

   ============  =========  ======  =======  =========================================================================================================================
   Name          Command    Type    Value    Comment
   ============  =========  ======  =======  =========================================================================================================================
   status        setLevel   string  [text]   Loop detector trigger level sensitivity is written as dd-ss where: |br| dd=loop detector number |br| ss=sensitivity value
   securityCode  setLevel   string  [text]   Security code 2
   ============  =========  ======  =======  =========================================================================================================================
..

M0103
^^^^^

Set security code |br|  |br| Change the security code to use when sending commands |br|  |br| Security codes are used as an extra layer of security in many commands. They need to match between the supervision system and the traffic light controller in order for the commands to be executed.


.. figtable::
   :nofig:
   :label: M0103
   :caption: M0103
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.14\linewidth} p{0.20\linewidth} p{0.07\linewidth} p{0.15\linewidth} p{0.30\linewidth}

   ===============  ===============  ======  ====================  ==================================================================
   Name             Command          Type    Value                 Comment
   ===============  ===============  ======  ====================  ==================================================================
   status           setSecurityCode  string  -Level1 |br| -Level2  Level1: Change security code 1 |br| Level2: Change security code 2
   oldSecurityCode  setSecurityCode  string  [text]                Previous security code
   newSecurityCode  setSecurityCode  string  [text]                New security code
   ===============  ===============  ======  ====================  ==================================================================
..

M0104
^^^^^

Set clock |br|  |br| Can be used to manually set the clock of the traffic light controller if automatic  time synchronization (NTP or watchdog sync) is not available. For instance, during maintenance work. |br|  |br| Requires security code 1


.. figtable::
   :nofig:
   :label: M0104
   :caption: M0104
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.14\linewidth} p{0.20\linewidth} p{0.07\linewidth} p{0.15\linewidth} p{0.30\linewidth}

   ============  =========  =======  ========  ===========================================================
   Name          Command    Type     Value     Comment
   ============  =========  =======  ========  ===========================================================
   securityCode  setDate    string   [text]    Security code 1
   year          setDate    integer  [0-9999]  Changes internal clock. Note: UTC is used |br| Year
   month         setDate    integer  [1-12]    Changes internal clock. Note: UTC is used |br| Month
   day           setDate    integer  [1-31]    Changes internal clock. Note: UTC is used |br| Day in month
   hour          setDate    integer  [0-23]    Changes internal clock. Note: UTC is used |br| Hour
   minute        setDate    integer  [0-59]    Changes internal clock. Note: UTC is used |br| Minute
   second        setDate    integer  [0-59]    Changes internal clock. Note: UTC is used |br| Second
   ============  =========  =======  ========  ===========================================================
..

.. |br| replace:: |br_html| |br_latex|

.. |br_html| raw:: html

   <br>

.. |br_latex| raw:: latex

   \newline

