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
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.20\linewidth} p{0.18\linewidth} p{0.18\linewidth} p{0.15\linewidth}

   ========================  ===============================  ====================  =================  =============
   ObjectType                Status                           functionalPosition    functionalState    Description
   ========================  ===============================  ====================  =================  =============
   Traffic Light Controller  See state-bit definitions below
   ========================  ===============================  ====================  =================  =============
..

.. figtable::
   :nofig:
   :label: State bits
   :caption: State bits
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.30\linewidth} p{0.45\linewidth}

   ==========================  ===========================  ==============================================================================================================================================
     State- Bit nr (12345678)  Description                  Comment
   ==========================  ===========================  ==============================================================================================================================================
                            1  Local mode                   Traffic Light Controller is in local mode. NTS has no control.
                            2  No Communications
                            3  High Priority Fault          Traffic Light Controller is in fail safe mode; e.g. yellow flash or dark mode
                            4  Medium Priority Fault        Traffic Light Controller has a medium priority fault, but not in fail safe mode. E.g. several lamp faults or detector fault
                            5  Low Priority Fault           Traffic Light Controller has a low priority fault. E.g. Detector fault
                            6  Connected / Normal - In Use
                            7  Connected / Normal - Idle    Traffic Light Controller dark according to configuration. NOTE! When dark according to configuration the controller is considered to be in use
                            8  Not Connected
   ==========================  ===========================  ==============================================================================================================================================
..

Alarms
------

.. figtable::
   :nofig:
   :label: Alarms
   :caption: Alarms
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.10\linewidth} p{0.45\linewidth} p{0.07\linewidth} p{0.07\linewidth}

   ========================  =============  ==================================================================================================================================================================  ==========  ==========
   ObjectType                alarmCodeId    Description                                                                                                                                                           Priority  Category
   ========================  =============  ==================================================================================================================================================================  ==========  ==========
   Traffic Light Controller  A0001          Serious hardware error                                                                                                                                                       2  D
   Traffic Light Controller  A0002          Less serious hardware error                                                                                                                                                  3  D
   Traffic Light Controller  A0003          Serious configuration error                                                                                                                                                  2  D
   Traffic Light Controller  A0004          Less serious configuration error                                                                                                                                             3  D
   Traffic Light Controller  A0005          Communication error between traffic light controllers / synchronisation error                                                                                                3  D
   Traffic Light Controller  A0006          Safety error                                                                                                                                                                 2  D
   Traffic Light Controller  A0007          Communication error between one or multiple traffic light controllers and central control system. Includes NTP connection loss if the TLC is configured to use NTP           3  D
   Signal group              `A0008`_       Dead lock error                                                                                                                                                              2  D
   Traffic Light Controller  A0009          Other error                                                                                                                                                                  3  D
   Traffic Light Controller  A0010          Door open                                                                                                                                                                    3  D
   Signal group              A0101          Pushbutton error                                                                                                                                                             3  D
   Signal group              `A0201`_       Serious lamp error                                                                                                                                                           2  D
   Signal group              `A0202`_       Less serious lamp error                                                                                                                                                      3  D
   Detector logic            `A0301`_       Detector error (hardware)                                                                                                                                                    3  D
   Detector logic            `A0302`_       Detector error (logic error)                                                                                                                                                 3  D
   ========================  =============  ==================================================================================================================================================================  ==========  ==========
..

A0008
^^^^^

Dead lock error


.. figtable::
   :nofig:
   :label: A0008
   :caption: A0008
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.35\linewidth}

   ========  =======  =============  =================
   Name      Type     Value          Comment
   ========  =======  =============  =================
   timeplan  integer  [designation]  Current time plan
   ========  =======  =============  =================
..

A0201
^^^^^

Serious lamp error


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

Less serious lamp error


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

Detector error (hardware)


.. figtable::
   :nofig:
   :label: A0301
   :caption: A0301
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.35\linewidth}

   =========  =======  =================  ===============================================================================
   Name       Type     Value              Comment
   =========  =======  =================  ===============================================================================
   detector   string   [designation]      Designation of the detector (hardware)
   type       string   -loop |br| -input  Type of detector. |br| loop: Inductive detector loop |br| input: External input
   errormode  string   -on |br| -off      Dectector forced on/off while detector error
   manual     boolean  -True |br| -False  Manually controlled detector logic (True/False)
   =========  =======  =================  ===============================================================================
..

A0302
^^^^^

Detector error (logic error)


.. figtable::
   :nofig:
   :label: A0302
   :caption: A0302
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.35\linewidth}

   ==========  =======  ==============================================  ===================================================================================================================================================================================================
   Name        Type     Value                                           Comment
   ==========  =======  ==============================================  ===================================================================================================================================================================================================
   detector    string   [designation]                                   Designation of the detector (hardware)
   type        string   -loop |br| -input                               Type of detector. |br| loop: Inductive detector loop |br| input: External input
   errormode   string   -on |br| -off                                   Dectector forced on/off while detector error
   manual      boolean  -True |br| -False                               Manually controlled detector logic (True/False)
   logicerror  string   -always_off |br| -always_on |br| -intermittent  Type of logic error |br| always_off: no detection during prefined max time |br| always on: detection constantly on during predefined max time |br| intermittent: intermittent logic fault (flutter)
   ==========  =======  ==============================================  ===================================================================================================================================================================================================
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

Signal group status


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

Detector logic status


.. figtable::
   :nofig:
   :label: S0002
   :caption: S0002
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ===================  ======  =======  ===================================
   Name                 Type    Value    Comment
   ===================  ======  =======  ===================================
   detectorlogicstatus  string  [text]   Detector logic status as text field
   ===================  ======  =======  ===================================
..

S0003
^^^^^^^^

Input status


.. figtable::
   :nofig:
   :label: S0003
   :caption: S0003
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ===================  ======  =======  ===================================
   Name                 Type    Value    Comment
   ===================  ======  =======  ===================================
   inputstatus          string  [text]   Input status as text field
   extendedinputstatus  string  [text]   Extended input status as text field
   ===================  ======  =======  ===================================
..

S0004
^^^^^^^^

Output status


.. figtable::
   :nofig:
   :label: S0004
   :caption: S0004
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ====================  ======  =======  ====================================
   Name                  Type    Value    Comment
   ====================  ======  =======  ====================================
   outputstatus          string  [text]   Output status as text field
   extendedoutputstatus  string  [text]   Extended output status as text field
   ====================  ======  =======  ====================================
..

S0005
^^^^^^^^

Traffic Light Controller starting


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

Emergency stage


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

Controller switched on


.. figtable::
   :nofig:
   :label: S0007
   :caption: S0007
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ============  =======  =================  =========================================================================================================================================================
   Name          Type     Value              Comment
   ============  =======  =================  =========================================================================================================================================================
   intersection  integer  [0-255]            0: Not applicable (only one intersection exists or applicable for all intersection of the traffic light controller) |br| Other value: Intersection number
   status        boolean  -False |br| -True  False: Traffic Light Controller in dark mode |br| True: Traffic Light Controller not in dark mode
   ============  =======  =================  =========================================================================================================================================================
..

S0008
^^^^^^^^

Manual control


.. figtable::
   :nofig:
   :label: S0008
   :caption: S0008
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ============  =======  =================  =========================================================================================================================================================
   Name          Type     Value              Comment
   ============  =======  =================  =========================================================================================================================================================
   intersection  integer  [0-255]            0: Not applicable (only one intersection exists or applicable for all intersection of the traffic light controller) |br| Other value: Intersection number
   status        boolean  -False |br| -True  False: Manual control inactive |br| True: Manual control active
   ============  =======  =================  =========================================================================================================================================================
..

S0009
^^^^^^^^

Fixed time control


.. figtable::
   :nofig:
   :label: S0009
   :caption: S0009
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ============  =======  =================  =========================================================================================================================================================
   Name          Type     Value              Comment
   ============  =======  =================  =========================================================================================================================================================
   intersection  integer  [0-255]            0: Not applicable (only one intersection exists or applicable for all intersection of the traffic light controller) |br| Other value: Intersection number
   status        boolean  -False |br| -True  False:  Fixed time control inactive |br| True:  Fixed time control active
   ============  =======  =================  =========================================================================================================================================================
..

S0010
^^^^^^^^

Isolated control


.. figtable::
   :nofig:
   :label: S0010
   :caption: S0010
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ============  =======  =================  =========================================================================================================================================================
   Name          Type     Value              Comment
   ============  =======  =================  =========================================================================================================================================================
   intersection  integer  [0-255]            0: Not applicable (only one intersection exists or applicable for all intersection of the traffic light controller) |br| Other value: Intersection number
   status        boolean  -False |br| -True  False: Isolated control disabled |br| True: Isolated control enabled (Vehicle actuated control or Fixed time control)
   ============  =======  =================  =========================================================================================================================================================
..

S0011
^^^^^^^^

Yellow flash


.. figtable::
   :nofig:
   :label: S0011
   :caption: S0011
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ============  =======  =================  =========================================================================================================================================================
   Name          Type     Value              Comment
   ============  =======  =================  =========================================================================================================================================================
   intersection  integer  [0-255]            0: Not applicable (only one intersection exists or applicable for all intersection of the traffic light controller) |br| Other value: Intersection number
   status        boolean  -False |br| -True  False: Yellow flash disabled |br| True: Yellow flash enabled
   ============  =======  =================  =========================================================================================================================================================
..

S0012
^^^^^^^^

All red


.. figtable::
   :nofig:
   :label: S0012
   :caption: S0012
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ============  =======  =================  =========================================================================================================================================================
   Name          Type     Value              Comment
   ============  =======  =================  =========================================================================================================================================================
   intersection  integer  [0-255]            0: Not applicable (only one intersection exists or applicable for all intersection of the traffic light controller) |br| Other value: Intersection number
   status        boolean  -False |br| -True  False: All red disabled |br| True: All red enabled
   ============  =======  =================  =========================================================================================================================================================
..

S0013
^^^^^^^^

Police key


.. figtable::
   :nofig:
   :label: S0013
   :caption: S0013
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ============  =======  ==================  =========================================================================================================================================================
   Name          Type     Value               Comment
   ============  =======  ==================  =========================================================================================================================================================
   intersection  integer  [0-255]             0: Not applicable (only one intersection exists or applicable for all intersection of the traffic light controller) |br| Other value: Intersection number
   status        integer  -0 |br| -1 |br| -2  0: disabled |br| 1: dark mode |br| 2: yellow flash
   ============  =======  ==================  =========================================================================================================================================================
..

S0014
^^^^^^^^

Current time plan


.. figtable::
   :nofig:
   :label: S0014
   :caption: S0014
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ======  =======  =======  =================
   Name    Type     Value    Comment
   ======  =======  =======  =================
   status  integer  [1-255]  Current time plan
   ======  =======  =======  =================
..

S0015
^^^^^^^^

Current traffic situation


.. figtable::
   :nofig:
   :label: S0015
   :caption: S0015
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ======  =======  =======  =========================
   Name    Type     Value    Comment
   ======  =======  =======  =========================
   status  integer  [1-255]  Current traffic situation
   ======  =======  =======  =========================
..

S0016
^^^^^^^^

Number of detector logics


.. figtable::
   :nofig:
   :label: S0016
   :caption: S0016
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ======  ======  =========  =========================
   Name    Type    Value      Comment
   ======  ======  =========  =========================
   number  long    [1-65025]  Number of detector logics
   ======  ======  =========  =========================
..

S0017
^^^^^^^^

Number of signal groups


.. figtable::
   :nofig:
   :label: S0017
   :caption: S0017
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ======  ======  =========  =======================
   Name    Type    Value      Comment
   ======  ======  =========  =======================
   number  long    [1-65025]  Number of signal groups
   ======  ======  =========  =======================
..

S0018
^^^^^^^^

Number of time plans


.. figtable::
   :nofig:
   :label: S0018
   :caption: S0018
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ======  ======  =========  ==================================
   Name    Type    Value      Comment
   ======  ======  =========  ==================================
   number  long    [1-65025]  Number of time plans (depreciated)
   ======  ======  =========  ==================================
..

S0019
^^^^^^^^

Number of traffic situations


.. figtable::
   :nofig:
   :label: S0019
   :caption: S0019
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ======  ======  =========  ============================
   Name    Type    Value      Comment
   ======  ======  =========  ============================
   number  long    [1-65025]  Number of traffic situations
   ======  ======  =========  ============================
..

S0020
^^^^^^^^

Control mode


.. figtable::
   :nofig:
   :label: S0020
   :caption: S0020
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ============  =======  =============================================================  =========================================================================================================================================================
   Name          Type     Value                                                          Comment
   ============  =======  =============================================================  =========================================================================================================================================================
   intersection  integer  [0-255]                                                        0: Not applicable (only one intersection exists or applicable for all intersection of the traffic light controller) |br| Other value: Intersection number
   controlmode   string   -startup |br| -control |br| -standby |br| -failure |br| -test  -Startup mode |br| -Normal control |br| -Standby mode |br| -Failure mode |br| -Test mode
   ============  =======  =============================================================  =========================================================================================================================================================
..

S0021
^^^^^^^^

Manually set detector logic


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

List of time plans


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

Dynamic bands


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

Offset time


.. figtable::
   :nofig:
   :label: S0024
   :caption: S0024
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ======  ======  =======  ===========================================================================================================================================================================================================
   Name    Type    Value    Comment
   ======  ======  =======  ===========================================================================================================================================================================================================
   status  string  [text]   Offset table |br| Each offset time is written as pp-tt where: |br| pp=time plan |br| tt=offset time in seconds |br|  |br| Each offset time is separated with a comma |br|  |br|  |br| E.g. |br| pp-tt,pp-tt
   ======  ======  =======  ===========================================================================================================================================================================================================
..

S0025
^^^^^^^^

Time-of-Green / Time-of-Red


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

Week time table


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

Time tables


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

Cycle time


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

Forced input status


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

Forced output status


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

Trigger level sensitivity for loop detector


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

S0091
^^^^^^^^

Operator logged in/out OP-panel


.. figtable::
   :nofig:
   :label: S0091
   :caption: S0091
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ======  ======  ==========================  =============================================================================
   Name    Type    Value                       Comment
   ======  ======  ==========================  =============================================================================
   user    string  -[username] |br| -[nobody]  username: User currently logged in |br| nobody: No one logged in
   status  string  -login |br| -logout         -login: Somebody currently logged in |br| -logout: Nobody currently logged in
   ======  ======  ==========================  =============================================================================
..

S0092
^^^^^^^^

Operator logged in/out web-interface


.. figtable::
   :nofig:
   :label: S0092
   :caption: S0092
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ======  ======  ==========================  =============================================================================
   Name    Type    Value                       Comment
   ======  ======  ==========================  =============================================================================
   user    string  -[username] |br| -[nobody]  username: User currently logged in |br| nobody: No one logged in
   status  string  -login |br| -logout         -login: Somebody currently logged in |br| -logout: Nobody currently logged in
   ======  ======  ==========================  =============================================================================
..

S0095
^^^^^^^^

Version of Traffic Light Controller


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

Current date and time


.. figtable::
   :nofig:
   :label: S0096
   :caption: S0096
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   ======  =======  =======  ===============================================================
   Name    Type     Value    Comment
   ======  =======  =======  ===============================================================
   year    integer  YYYY     Year according to format YYYY. NOTE: UTC is used
   month   integer  MM       Month (01-12) according to format MM. Note: UTC is used
   day     integer  DD       Day of month (01-31) according to format DD.  Note: UTC is used
   hour    integer  HH       Hour of day (00-23) according to format DD. Note: UTC is used
   minute  integer  MM       Minute (00-59) according to format MM. Note: UTC is used
   second  integer  SS       Second (00-59) according to format SS. Note: UTC is used
   ======  =======  =======  ===============================================================
..

S0097
^^^^^^^^

Checksum of traffic parameters


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

Configuration of traffic parameters


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
   version    string  [text]        Version information of the configuration. Contains basic information such as controller id, changes to config and other information. The format is not specified in detail.
   =========  ======  ============  =================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
..

S0201
^^^^^^^^

Traffic Counting: Number of vehicles


.. figtable::
   :nofig:
   :label: S0201
   :caption: S0201
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   =========  ======  ============  ====================================================================================================================================================================
   Name       Type    Value         Comment
   =========  ======  ============  ====================================================================================================================================================================
   starttime  string  [time stamp]  Time stamp for start of measuring. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   vehicles   long    [number]      Number of vehicles on a given detector logic (since last update)
   =========  ======  ============  ====================================================================================================================================================================
..

S0202
^^^^^^^^

Traffic Counting: Vehicle speed


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
   speed      integer  [speed]       Average speed in km/h
   =========  =======  ============  ====================================================================================================================================================================
..

S0203
^^^^^^^^

Traffic Counting: Occupancy


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

Traffic Counting: Number of vehicles of given classification


.. figtable::
   :nofig:
   :label: S0204
   :caption: S0204
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   =========  ======  ============  ====================================================================================================================================================================
   Name       Type    Value         Comment
   =========  ======  ============  ====================================================================================================================================================================
   starttime  string  [time stamp]  Time stamp for start of measuring. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   P          long    [number]      Number of cars
   PS         long    [number]      Number of cars with trailers
   L          long    [number]      Number of trucks
   LS         long    [number]      Number of trucks with trailers
   B          long    [number]      Number of busses
   SP         long    [number]      Number of trams
   MC         long    [number]      Number of motor cycles
   C          long    [number]      Number of bicycles
   F          long    [number]      Number of pedestrians
   =========  ======  ============  ====================================================================================================================================================================
..

S0205
^^^^^^^^

Traffic Counting: Number of vehicles


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

Traffic Counting: Vehicle speed


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

Traffic Counting: Occupancy


.. figtable::
   :nofig:
   :label: S0207
   :caption: S0207
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.15\linewidth} p{0.08\linewidth} p{0.13\linewidth} p{0.50\linewidth}

   =========  ======  ============  ==============================================================================================================================================================================================================================================================================
   Name       Type    Value         Comment
   =========  ======  ============  ==============================================================================================================================================================================================================================================================================
   start      string  [time stamp]  Time stamp for start of measuring. Format according to W3C XML dateTime with a resolution of 3 decimal places. All time stamps in UTC. E.g. 2009-10-02T14:34:34.341Z
   occupancy  string  [0-100,...]   Occupancy in percent (%) (0-100) |br| - Value expressed as an integer with a range of 0-100. |br| - Contains data from all detector logics. Each detector logic is separated with a comma.  |br| - The value is set to “-1” if no data could be measured (e.g. detector fault)
   =========  ======  ============  ==============================================================================================================================================================================================================================================================================
..

S0208
^^^^^^^^

Traffic Counting: Number of vehicles of given classification


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

   ========================  ===============  ===============================================================================
   ObjectType                commandCodeId    Description
   ========================  ===============  ===============================================================================
   Traffic Light Controller  `M0001`_         Sets functional position |br| Requires security code 2
   Traffic Light Controller  `M0002`_         Sets current time plan |br| Requires security code 2
   Traffic Light Controller  `M0003`_         Sets traffic situation the controller uses. |br| Requires security code 2
   Traffic Light Controller  `M0004`_         Restarts Traffic Light Controller |br| Requires security code 2
   Traffic Light Controller  `M0005`_         Activate emergency route |br| Requires security code 2
   Traffic Light Controller  `M0006`_         Activate input |br| Requires security code 2
   Traffic Light Controller  `M0007`_         Activate fixed time control |br| Requires security code 2
   Detector logic            `M0008`_         Sets manual activation of detector logic. |br| Requires security code 2
   Signal group              `M0010`_         Start of signal group. Orders a signal group to green. Requires security code 2
   Signal group              `M0011`_         Stop of signal group. Orders a signal group to red. Requires security code 2
   Traffic Light Controller  `M0012`_         Request start or stop of a series of signal groups. Requires security code 2
   Traffic Light Controller  `M0013`_         Activate a series of inputs |br| Requires security code 2
   Traffic Light Controller  `M0014`_         Set dynamic bands |br| Requires security code 2
   Traffic Light Controller  `M0015`_         Set Offset time |br| Requires security code 2
   Traffic Light Controller  `M0016`_         Set week time table |br| Requires security code 2
   Traffic Light Controller  `M0017`_         Set time tables |br| Requires security code 2
   Traffic Light Controller  `M0018`_         Set Cycle time |br| Requires security code 2
   Traffic Light Controller  `M0019`_         Force input |br| Requires security code 2
   Traffic Light Controller  `M0020`_         Force output |br| Requires security code 2
   Traffic Light Controller  `M0021`_         Set trigger level sensitivity for loop detector |br| Requires security code 2
   Traffic Light Controller  `M0103`_         Set security code
   Traffic Light Controller  `M0104`_         Set clock |br| Requires security code 1
   ========================  ===============  ===============================================================================
..

M0001
^^^^^

Sets functional position |br| Requires security code 2


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

Sets current time plan |br| Requires security code 2


.. figtable::
   :nofig:
   :label: M0002
   :caption: M0002
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.14\linewidth} p{0.20\linewidth} p{0.07\linewidth} p{0.15\linewidth} p{0.30\linewidth}

   ============  =========  =======  =================  ==================================================================================================================
   Name          Command    Type     Value              Comment
   ============  =========  =======  =================  ==================================================================================================================
   status        setPlan    boolean  -False |br| -True  False: Controller uses time plan according to programming |br| True: Contoller uses time plan according to command
   securityCode  setPlan    string   [text]             Security code 2
   timeplan      setPlan    integer  [1-255]            designation of time plan
   ============  =========  =======  =================  ==================================================================================================================
..

M0003
^^^^^

Sets traffic situation the controller uses. |br| Requires security code 2


.. figtable::
   :nofig:
   :label: M0003
   :caption: M0003
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.14\linewidth} p{0.20\linewidth} p{0.07\linewidth} p{0.15\linewidth} p{0.30\linewidth}

   ===============  ===================  =======  =================  ======================================================================================================================================
   Name             Command              Type     Value              Comment
   ===============  ===================  =======  =================  ======================================================================================================================================
   status           setTrafficSituation  boolean  -False |br| -True  False: Controller uses traffic situation according to own programming |br| True: Contoller uses traffic situation according to command
   securityCode     setTrafficSituation  string   [text]             Security code 2
   traficsituation  setTrafficSituation  integer  [1-255]            designation of traficsituation
   ===============  ===================  =======  =================  ======================================================================================================================================
..

M0004
^^^^^

Restarts Traffic Light Controller |br| Requires security code 2


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

Activate emergency route |br| Requires security code 2


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

Activate input |br| Requires security code 2


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

Activate fixed time control |br| Requires security code 2


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

Sets manual activation of detector logic. |br| Requires security code 2


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

Start of signal group. Orders a signal group to green. Requires security code 2


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

Stop of signal group. Orders a signal group to red. Requires security code 2


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

Request start or stop of a series of signal groups. Requires security code 2


.. figtable::
   :nofig:
   :label: M0012
   :caption: M0012
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.14\linewidth} p{0.20\linewidth} p{0.07\linewidth} p{0.15\linewidth} p{0.30\linewidth}

   ============  =========  ======  =======  ===========================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
   Name          Command    Type    Value    Comment
   ============  =========  ======  =======  ===========================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
   status        setStart   string  [text]   Orders signal groups to green or red. Sets a block of 16 signal groups at a time. Can be repeated to set several blocks of 16 signal groups. Values are separated with comma. Blocks are separated with semicolon. Since semicolon breaks the SXL csv-format, colon is used in example below. |br|  |br| 1=Order signal group to green |br| 0=Order signal group to red |br|  |br| Format: [Offset],[Bits to set],[Bits to unset]:… |br|  |br| Offset sets where the 16 inputs starts from followed by two 16 bit values telling which bit to set and unset in binary format, i.e. first bit have value 1 and last bit have value 32768. |br|  |br| Example 1: |br| "5, 4134, 65" sets input 6,7,10,17 = on and 5,11 = off |br| (Input starts from no. 5 and bit 1,2,5,12 = 1 and bit 0,6 = 0) |br|  |br| Example 2: |br| "22, 1, 4" sets input 22 = on and 24 = off |br| (Input starts from no. 22 and bit 0 = 1 and bit 2 = 0) |br|  |br| And both thease examples could be sent in the same message as: |br| "5,4143,65:22,1,4" |br|  |br| Such a message would order signal group 6,7,10,17,22 to green and signal group 5,11,24 to red
   securityCode  setStart   string  [text]   Security code 2
   ============  =========  ======  =======  ===========================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
..

M0013
^^^^^

Activate a series of inputs |br| Requires security code 2


.. figtable::
   :nofig:
   :label: M0013
   :caption: M0013
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.14\linewidth} p{0.20\linewidth} p{0.07\linewidth} p{0.15\linewidth} p{0.30\linewidth}

   ============  =========  ======  =======  ========================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
   Name          Command    Type    Value    Comment
   ============  =========  ======  =======  ========================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
   status        setInput   string  [text]   Sets/Unsets a block of 16 inputs at a time. Can be repeated to set several blocks of 16 inputs. Values are separated with comma. Blocks are separated with semicolon. Since semicolon breaks the SXL csv-format,  colon, ":" is used in example below. |br|  |br| Format: [Offset],[Bits to set],[Bits to unset]:… |br|  |br| Offset sets where the 16 inputs starts from followed by two 16 bit values telling which bit to set and unset in binary format, i.e. first bit have value 1 and last bit have value 32768. |br|  |br| Example 1: |br| "5, 4134, 65" sets input 6,7,10,17 = on and 5,11 = off |br| (Input starts from no. 5 and bit 1,2,5,12 = 1 and bit 0,6 = 0) |br|  |br| Example 2: |br| "22, 1, 4" sets input 22 = on and 24 = off |br| (Input starts from no. 22 and bit 0 = 1 and bit 2 = 0) |br|  |br| And both thease examples could be sent in the same message as: |br| "5,4143:65:22,1,4" |br|  |br| Such a message would activate input 6,7,10,17,22 and deactive input 5,11,24
   securityCode  setInput   string  [text]   Security code 2
   ============  =========  ======  =======  ========================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
..

M0014
^^^^^

Set dynamic bands |br| Requires security code 2


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

Set Offset time |br| Requires security code 2


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

Set week time table |br| Requires security code 2


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

Set time tables |br| Requires security code 2


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

Set Cycle time |br| Requires security code 2


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

Force input |br| Requires security code 2


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

Force output |br| Requires security code 2


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

Set trigger level sensitivity for loop detector |br| Requires security code 2


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

Set security code


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

Set clock |br| Requires security code 1


.. figtable::
   :nofig:
   :label: M0104
   :caption: M0104
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.14\linewidth} p{0.20\linewidth} p{0.07\linewidth} p{0.15\linewidth} p{0.30\linewidth}

   ============  =========  =======  =======  ===================================================================================
   Name          Command    Type     Value    Comment
   ============  =========  =======  =======  ===================================================================================
   securityCode  setDate    string   [text]   Security code 1
   year          setDate    integer  [YYYY]   Changes internal clock. Note: UTC is used |br| Year according to YYYY
   month         setDate    integer  [MM]     Changes internal clock. Note: UTC is used |br| Month according to MM (01-12)
   day           setDate    integer  [DD]     Changes internal clock. Note: UTC is used |br| Day in month according to DD (01-31)
   hour          setDate    integer  [HH]     Changes internal clock. Note: UTC is used |br| Hour according to HH (00-23)
   minute        setDate    integer  [MM]     Changes internal clock. Note: UTC is used |br| Minute according to MM (00-23)
   second        setDate    integer  [SS]     Changes internal clock. Note: UTC is used |br| Second according to SS (00-59)
   ============  =========  =======  =======  ===================================================================================
..

.. |br| replace:: |br_html| |br_latex|

.. |br_html| raw:: html

   <br>

.. |br_latex| raw:: latex

   \newline

