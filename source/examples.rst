JSon Examples
=============

This document contains examples for all message types.

`Alarms`_

+ `A0001 Serious hardware error`_
+ `A0002 Less serious hardware error`_
+ `A0003 Serious configuration error`_
+ `A0004 Less serious configuration error`_
+ `A0005 Synchronisation error (coordination)`_
+ `A0006 Safety error`_
+ `A0007 Communication error`_
+ `A0008 Dead lock error`_
+ `A0009 Other error`_
+ `A0010 Door open`_
+ `A0101 Pushbutton error`_
+ `A0201 Serious lamp error`_
+ `A0202 Less serious lamp error`_
+ `A0301 Detector error (hardware)`_
+ `A0302 Detector error (logic error)`_
+ `A0303 Serious detector error (hardware)`_
+ `A0304 Serious detector error (logic error)`_

`Statuses`_

+ `S0001 Signal group status`_
+ `S0002 Detector logic status`_
+ `S0003 Input status`_
+ `S0004 Output status`_
+ `S0005 Traffic Light Controller starting`_
+ `S0006 Emergency stage`_
+ `S0007 Controller switched on`_
+ `S0008 Manual control`_
+ `S0009 Fixed time control`_
+ `S0010 Isolated control`_
+ `S0011 Yellow flash`_
+ `S0012 All red`_
+ `S0013 Police key`_
+ `S0014 Current time plan`_
+ `S0015 Current traffic situation`_
+ `S0016 Number of detector logics`_
+ `S0017 Number of signal groups`_
+ `S0018 Number of time plans`_
+ `S0019 Number of traffic situations`_
+ `S0020 Control mode`_
+ `S0021 Manually set detector logic`_
+ `S0022 List of time plans`_
+ `S0023 Command table`_
+ `S0024 Offset time`_
+ `S0025 Time-to-green`_
+ `S0026 Week time table`_
+ `S0027 Time tables`_
+ `S0028 Cycle time`_
+ `S0029 Forced input status`_
+ `S0030 Forced output status`_
+ `S0031 Trigger level sensitivity for loop detector`_
+ `S0032 Coordinated control`_
+ `S0033 Signal Priority Status`_
+ `S0034 Timeout for dynamic bands`_
+ `S0091 Operator logged in/out OP-panel`_
+ `S0092 Operator logged web-interface`_
+ `S0095 Version of Traffic Light Controller`_
+ `S0096 Current date and time`_
+ `S0097 Checksum of traffic parameters`_
+ `S0098 Configuration of traffic parameters`_
+ `S0201 Traffic Counting: Number of vehicles`_
+ `S0202 Traffic Counting: Vehicle speed`_
+ `S0203 Traffic Counting: Occupancy`_
+ `S0204 Traffic Counting: Number of vehicles of given classification`_
+ `S0205 Traffic Counting: Number of vehicles`_
+ `S0206 Traffic Counting: Vehicle speed`_
+ `S0207 Traffic Counting: Occupancy`_
+ `S0208 Traffic Counting: Number of vehicles of given classification`_

`Commands`_

+ `M0001 Sets functional position`_
+ `M0002 Sets current time plan`_
+ `M0003 Sets traffic situation the controller uses`_
+ `M0004 Restarts Traffic Light Controller`_
+ `M0005 Activate emergency route`_
+ `M0006 Activate input`_
+ `M0007 Activate fixed time control`_
+ `M0008 Sets manual activation of detector logic`_
+ `M0010 Start of signal group`_
+ `M0011 Stop of signal group`_
+ `M0012 Request start or stop of a series of signal groups`_
+ `M0013 Activate a series of inputs`_
+ `M0014 Set command table`_
+ `M0015 Set offset time`_
+ `M0016 Set week time table`_
+ `M0017 Set time tables`_
+ `M0018 Set cycle time`_
+ `M0019 Force input`_
+ `M0020 Force output`_
+ `M0021 Set trigger level sensitivity for loop detector`_
+ `M0022 Request Signal Priority`_
+ `M0023 Set timeout for dynamic bands`_
+ `M0103 Set security code`_
+ `M0104 Set clock`_

Alarms
------

A0001 Serious hardware error
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"Alarm",
   	"mId":"f9b27ba1-c342-4018-baf9-b7629d8df0af",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"aCId":"A0001",
   	"xACId":"ERROR GROUP #4 MISSING",
   	"xNACId":"",
   	"aSp":"Issue",
   	"ack":"notAcknowledged",
   	"aS":"Active",
   	"sS":"notSuspended",
   	"aTs":"2019-09-26T12:43:49.889Z",
   	"cat":"D",
   	"pri":"2",
   	"rvs":[]
   }

A0002 Less serious hardware error
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"Alarm",
   	"mId":"ee6c1417-a376-4401-8bc0-120faaef5962",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"aCId":"A0002",
   	"xACId":"ERROR IO #1 MISSING",
   	"xNACId":"",
   	"aSp":"Issue",
   	"ack":"notAcknowledged",
   	"aS":"Active",
   	"sS":"notSuspended",
   	"aTs":"2019-09-26T12:47:16.683Z",
   	"cat":"D",
   	"pri":"3",
   	"rvs":[]
   }

A0003 Serious configuration error
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"Alarm",
   	"mId":"843d9fd4-29a6-40c5-b325-d3ba430cc679",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"aCId":"A0003",
   	"xACId":"ERROR IO #1 ERROR",
   	"xNACId":"",
   	"aSp":"Issue",
   	"ack":"notAcknowledged",
   	"aS":"Active",
   	"sS":"notSuspended",
   	"aTs":"2019-09-26T12:48:00.285Z",
   	"cat":"D",
   	"pri":"2",
   	"rvs":[]}
   
A0004 Less serious configuration error
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"Alarm",
   	"mId":"13889d3e-a1ca-400b-8212-276d15bcfa5b",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"aCId":"A0004",
   	"xACId":"ERROR INSTRUCTION #5",
   	"xNACId":"",
   	"aSp":"Issue",
   	"ack":"notAcknowledged",
   	"aS":"Active",
   	"sS":"notSuspended",
   	"aTs":"2019-09-26T12:48:38.277Z",
   	"cat":"D",
   	"pri":"3",
   	"rvs":[]
   }
   
A0005 Synchronisation error (coordination)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"Alarm",
   	"mId":"9d29620a-0432-4eeb-826c-b9e4b08892a3",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"aCId":"A0005",
   	"xACId":"ERROR: SYNC ERROR 4",
   	"xNACId":"",
   	"aSp":"Issue",
   	"ack":"notAcknowledged",
   	"aS":"Active",
   	"sS":"notSuspended",
   	"aTs":"2019-09-26T12:49:05.721Z",
   	"cat":"D",
   	"pri":"3",
   	"rvs":[]
   }
   
A0006 Safety error
~~~~~~~~~~~~~~~~~~
   
.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"Alarm",
   	"mId":"625dc28c-4f91-4218-81c4-3094c438688d",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"aCId":"A0006",
   	"xACId":"ERROR MAINS #4",
   	"xNACId":"",
   	"aSp":"Issue",
   	"ack":"notAcknowledged",
   	"aS":"Active",
   	"sS":"notSuspended",
   	"aTs":"2019-09-26T12:49:47.590Z",
   	"cat":"D",
   	"pri":"2",
   	"rvs":[]
   }

A0007 Communication error
~~~~~~~~~~~~~~~~~~~~~~~~~
   
.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"Alarm",
   	"mId":"82f80c09-5320-4465-a45d-a8931bfc223d",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"aCId":"A0007",
   	"xACId":"ERROR NTP ERROR #9",
   	"xNACId":"",
   	"aSp":"Issue",
   	"ack":"notAcknowledged",
   	"aS":"Active",
   	"sS":"notSuspended",
   	"aTs":"2019-09-26T12:50:12.402Z",
   	"cat":"D",
   	"pri":"3",
   	"rvs":[{
                "n":"protocol",
                "v":"ntp"
        }]
   }

A0008 Dead lock error
~~~~~~~~~~~~~~~~~~~~~
   
.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"Alarm",
   	"mId":"148c4a38-d0ca-4a5e-81d4-951bcfc14df8",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001SG001",
   	"aCId":"A0008",
   	"xACId":"ERROR DELAY #10",
   	"xNACId":"",
   	"aSp":"Issue",
   	"ack":"notAcknowledged",
   	"aS":"Active",
   	"sS":"notSuspended",
   	"aTs":"2019-09-26T12:51:08.171Z",
   	"cat":"D",
   	"pri":"2",
   	"rvs":[{
   		"n":"timeplan",
   		"v":"9"
   	}]
   }

A0009 Other error
~~~~~~~~~~~~~~~~~
   
.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"Alarm",
   	"mId":"46d837c5-846b-43bb-adf9-e97e1c22bf08",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"aCId":"A0009",
   	"xACId":"ERROR NO PLANS",
   	"xNACId":"",
   	"aSp":"Issue",
   	"ack":"notAcknowledged",
   	"aS":"Active",
   	"sS":"notSuspended",
   	"aTs":"2019-09-26T12:50:37.701Z",
   	"cat":"D",
   	"pri":"3",
   	"rvs":[]
   }

A0010 Door open
~~~~~~~~~~~~~~~
   
.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"Alarm",
   	"mId":"48630a74-e8c1-4179-9e89-47d01ee27800",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001DO001",
   	"aCId":"A0010",
   	"xACId":"ERROR DOOR #5 OPEN",
   	"xNACId":"",
   	"aSp":"Issue",
   	"ack":"notAcknowledged",
   	"aS":"Active",
   	"sS":"notSuspended",
   	"aTs":"2019-09-30T13:20:58.183Z",
   	"cat":"D",
   	"pri":"3",
   	"rvs":[]
   }

A0101 Pushbutton error
~~~~~~~~~~~~~~~~~~~~~~
   
.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"Alarm",
   	"mId":"3dca0e6e-beab-47af-8860-bcc2699b6d06",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001SG001",
   	"aCId":"A0101",
   	"xACId":"ERROR PUSH BUTTON #3",
   	"xNACId":"",
   	"aSp":"Issue",
   	"ack":"notAcknowledged",
   	"aS":"Active",
   	"sS":"notSuspended",
   	"aTs":"2019-09-26T12:53:03.836Z",
   	"cat":"D",
   	"pri":"3",
   	"rvs":[]
   }

A0201 Serious lamp error
~~~~~~~~~~~~~~~~~~~~~~~~
   
.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"Alarm",
   	"mId":"34a3f91b-e5b7-42ae-aee3-c9ce8577358a",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001SG001",
   	"aCId":"A0201",
   	"xACId":"ERROR LAMP OFF RED #1",
   	"xNACId":"",
   	"aSp":"Issue",
   	"ack":"notAcknowledged",
   	"aS":"Active",
   	"sS":"notSuspended",
   	"aTs":"2019-09-26T12:54:03.598Z",
   	"cat":"D",
   	"pri":"2",
   	"rvs":[{
   		"n":"color",
   		"v":"red"
   	}]
   }

A0202 Less serious lamp error
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"Alarm",
   	"mId":"6b4bfd63-4aee-4a58-b58a-7c1c0d6a7b7f",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001SG001",
   	"aCId":"A0202",
   	"xACId":"ERROR LAMP E4 RED #1",
   	"xNACId":"",
   	"aSp":"Issue",
   	"ack":"notAcknowledged",
   	"aS":"Active",
   	"sS":"notSuspended",
   	"aTs":"2019-09-26T12:54:54.066Z",
   	"cat":"D",
   	"pri":"3",
   	"rvs":[{
   		"n":"color",
   		"v":"red"
   	}]
   }

A0301 Detector error (hardware)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"Alarm",
   	"mId":"ebeae300-c074-4658-a000-243265c3398f",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001DL001",
   	"aCId":"A0301",
   	"xACId":"ERROR LOOP OPEN #1",
   	"xNACId":"",
   	"aSp":"Issue",
   	"ack":"notAcknowledged",
   	"aS":"Active",
   	"sS":"notSuspended",
   	"aTs":"2019-09-26T12:56:09.935Z",
   	"cat":"D",
   	"pri":"3",
   	"rvs":[{
   		"n":"detector",
   		"v":"1"
   	},{
   		"n":"type",
   		"v":"loop"
   	},{
   		"n":"errormode",
   		"v":"on"
   	},{
   		"n":"manual",
   		"v":"True"
   	}]
   }

A0302 Detector error (logic error)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"Alarm",
   	"mId":"b8ec9178-fe18-4386-9570-225a8e690b50",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001DL001",
   	"aCId":"A0302",
   	"xACId":"ERROR DETECTOR LOGIC OPEN #1",
   	"xNACId":"",
   	"aSp":"Issue",
   	"ack":"notAcknowledged",
   	"aS":"Active",
   	"sS":"notSuspended",
   	"aTs":"2019-09-26T12:56:40.387Z",
   	"cat":"D",
   	"pri":"3",
   	"rvs":[{
   		"n":"detector",
   		"v":"1"
   	},{
   		"n":"type",
   		"v":"loop"
   	},{
   		"n":"errormode",
   		"v":"on"
   	},{
   		"n":"manual",
   		"v":"True"
   	},{
   		"n":"logicerror",
   		"v":"always_off"
   	}]
   }

A0303 Serious detector error (hardware)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: json

    {
        "mType":"rSMsg",
        "type":"Alarm",
        "mId":"efb6a4c5-f2ea-4947-9deb-667756926203",
        "ntsOId":"KK+AG9998=001TC000",
        "xNId":"",
        "cId":"KK+AG9998=001DL001",
        "aCId":"A0303",
        "xACId":"ERROR DETECTOR LOGIC OPEN #1",
        "xNACId":"",
        "aSp":"Issue",
        "ack":"notAcknowledged",
        "aS":"Active",
        "sS":"notSuspended",
        "aTs":"2021-12-13T09:35:25.602Z",
        "cat":"D",
        "pri":"2",
        "rvs":[{
                "n":"detector",
                "v":"1"
        },{
                "n":"type",
                "v":"loop"
        },{
                "n":"errormode",
                "v":"on"
        },{
                "n":"manual",
                "v":"True"
        }]
    }

A0304 Serious detector error (logic error)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: json

    {
        "mType":"rSMsg",
        "type":"Alarm",
        "mId":"efb6a4c5-f2ea-4947-9deb-667756926203",
        "ntsOId":"KK+AG9998=001TC000",
        "xNId":"",
        "cId":"KK+AG9998=001DL001",
        "aCId":"A0304",
        "xACId":"ERROR DETECTOR LOGIC OPEN #1",
        "xNACId":"",
        "aSp":"Issue",
        "ack":"notAcknowledged",
        "aS":"Active",
        "sS":"notSuspended",
        "aTs":"2021-12-13T09:35:25.602Z",
        "cat":"D",
        "pri":"2",
        "rvs":[{
                "n":"detector",
                "v":"1"
        },{
                "n":"type",
                "v":"loop"
        },{
                "n":"errormode",
                "v":"on"
        },{
                "n":"manual",
                "v":"True"
        },{
                "n":"logicerror",
                "v":"always_off"
        }]
    }

Statuses
--------

S0001 Signal group status
~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"2f9cb731-be46-4abe-88cb-c0f06e24b903",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0001",
   		"n":"signalgroupstatus"
   	},{
   		"sCI":"S0001",
   		"n":"cyclecounter"
   	},{
   		"sCI":"S0001",
   		"n":"basecyclecounter"
   	},{
   		"sCI":"S0001",
   		"n":"stage"
   	}]
   }

**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"e8c14802-e4a0-47b7-b360-c0e611718387",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2019-09-26T13:00:51.642Z",
   	"sS":[{
   		"sCI":"S0001",
   		"n":"signalgroupstatus",
   		"s":"FF3FFF0",
   		"q":"recent"
   	},{
   		"sCI":"S0001",
   		"n":"cyclecounter",
   		"s":"76",
   		"q":"recent"
   	},{
   		"sCI":"S0001",
   		"n":"basecyclecounter",
   		"s":"0",
   		"q":"recent"
   	},{
   		"sCI":"S0001",
   		"n":"stage",
   		"s":"2",
   		"q":"recent"
   	}]
   }

S0002 Detector logic status
~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"09204009-3853-49c9-a204-6955a7d752e3",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0002",
   		"n":"detectorlogicstatus"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"871383a4-3078-4767-a9ce-bdc916e893f9",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2019-09-26T13:02:59.156Z",
   	"sS":[{
   		"sCI":"S0002",
   		"n":"detectorlogicstatus",
   		"s":"11010101",
   		"q":"recent"
   	}]
   }

   
S0003 Input status
~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"397de512-0df0-4c9f-8094-0da5ab0c95dc",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0003",
   		"n":"inputstatus"
   	},{
   		"sCI":"S0003",
   		"n":"extendedinputstatus"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"830c5261-b5d1-41f9-abf9-a7653d9af8f2",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2019-09-26T13:04:14.310Z",
   	"sS":[{
   		"sCI":"S0003",
   		"n":"inputstatus",
   		"s":"0000000000000000001000000000000000000010",
   		"q":"recent"
   	},{
   		"sCI":"S0003",
   		"n":"extendedinputstatus",
   		"s":"0",
   		"q":"recent"
   	}]
   }

   
S0004 Output status
~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"cbcf6e98-ad60-413e-9f4c-a1351c44dd8e",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0004",
   		"n":"outputstatus"
   	},{
   		"sCI":"S0004",
   		"n":"extendedoutputstatus"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"3d7bc8ea-d658-47cb-b7a3-07b6d6842934",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2019-09-26T13:05:52.387Z",
   	"sS":[{
   		"sCI":"S0004",
   		"n":"outputstatus",
   		"s":"0000000000000000001000000000000000000010",
   		"q":"recent"
   	},{
   		"sCI":"S0004",
   		"n":"extendedoutputstatus",
   		"s":"0",
   		"q":"recent"
   	}]
   }

   
S0005 Traffic Light Controller starting
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"4abdf9b7-f915-41e9-bb8e-cb908fdd1f8d",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0005",
   		"n":"status"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"cfab4504-7d02-4c2e-92e9-b7d1a67fadc7",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2019-09-26T13:06:48.807Z",
   	"sS":[{
   		"sCI":"S0005",
   		"n":"status",
   		"s":"False",
   		"q":"recent"
   	}]
   }

   

S0006 Emergency stage
~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"1cf1a709-41fe-4072-94ea-75976229bf61",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0006",
   		"n":"status"
   	},{
   		"sCI":"S0006",
   		"n":"emergencystage"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"8f1cc2aa-06fa-45e6-9448-3d6207e12ece",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2019-09-26T13:08:27.792Z",
   	"sS":[{
   		"sCI":"S0006",
   		"n":"status",
   		"s":"True",
   		"q":"recent"
   	},{
   		"sCI":"S0006",
   		"n":"emergencystage",
   		"s":"0",
   		"q":"recent"
   	}]
   }

   
S0007 Controller switched on
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"71ba2859-05cd-4ae3-91b6-72e0ec80b9ff",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0007",
   		"n":"intersection"
   	},{
   		"sCI":"S0007",
   		"n":"status"
   	},{
                "sCI":"S0007",
                "n":"source"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"0eda8f5e-3bb9-452e-9890-4f7d0f343cab",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2019-09-26T13:09:30.860Z",
   	"sS":[{
   		"sCI":"S0007",
   		"n":"intersection",
   		"s":"1",
   		"q":"recent"
   	},{
   		"sCI":"S0007",
   		"n":"status",
   		"s":"True",
   		"q":"recent"
   	},{
   		"sCI":"S0007",
   		"n":"source",
   		"s":"forced",
   		"q":"recent"
   	}]
   }

   
S0008 Manual control
~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"81194636-cd7c-49fe-a00f-1c7a54de071c",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0008",
   		"n":"intersection"
   	},{
   		"sCI":"S0008",
   		"n":"status"
   	},{
                "sCI":"S0008",
                "n":"source"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"aa74fdc8-4e3e-40c0-a05d-9034b67e27c6",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2019-09-26T13:11:16.262Z",
   	"sS":[{
   		"sCI":"S0008",
   		"n":"intersection",
   		"s":"1",
   		"q":"recent"
   	},{
   		"sCI":"S0008",
   		"n":"status",
   		"s":"True",
   		"q":"recent"
   	},{
   		"sCI":"S0008",
   		"n":"source",
   		"s":"forced",
   		"q":"recent"
   	}]
   }

   
S0009 Fixed time control
~~~~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"1f5172e1-bacb-433f-bc7c-6810e16b5cea",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0009",
   		"n":"intersection"
   	},{
   		"sCI":"S0009",
   		"n":"status"
   	},{
   		"sCI":"S0009",
   		"n":"source"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"3cf01c8f-2faa-4db1-9fb7-9c3323a9c66c",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2019-09-26T13:12:26.610Z",
   	"sS":[{
   		"sCI":"S0009",
   		"n":"intersection",
   		"s":"1",
   		"q":"recent"
   	},{
   		"sCI":"S0009",
   		"n":"status",
   		"s":"True",
   		"q":"recent"
   	},{
   		"sCI":"S0009",
   		"n":"source",
   		"s":"forced",
   		"q":"recent"
   	}]
   }

   
S0010 Isolated control
~~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"5d1be301-0746-4ac0-9e57-6533eef4e58a",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0010",
   		"n":"intersection"
   	},{
   		"sCI":"S0010",
   		"n":"status"
   	},{
   		"sCI":"S0010",
   		"n":"source"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"01cc4a27-2d6b-403b-9b99-c8eaa00fa8e9",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2019-09-26T13:13:49.966Z",
   	"sS":[{
   		"sCI":"S0010",
   		"n":"intersection",
   		"s":"1",
   		"q":"recent"
   	},{
   		"sCI":"S0010",
   		"n":"status",
   		"s":"True",
   		"q":"recent"
   	},{
   		"sCI":"S0010",
   		"n":"source",
   		"s":"forced",
   		"q":"recent"
   	}]
   }

   
S0011 Yellow flash
~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"7f4e61c8-8908-4bca-b079-8a063cb4cdaf",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0011",
   		"n":"intersection"
   	},{
   		"sCI":"S0011",
   		"n":"status"
   	},{
   		"sCI":"S0011",
   		"n":"source"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"477b4aef-84dc-441d-89c3-7635e548326b",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2019-09-26T13:15:48.662Z",
   	"sS":[{
   		"sCI":"S0011",
   		"n":"intersection",
   		"s":"0",
   		"q":"recent"
   	},{
   		"sCI":"S0011",
   		"n":"status",
   		"s":"True",
   		"q":"recent"
   	},{
   		"sCI":"S0011",
   		"n":"source",
   		"s":"forced",
   		"q":"recent"
   	}]
   }

   
S0012 All red
~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"0ae9b9cd-d556-48d1-9c18-3a82a711d4fd",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0012",
   		"n":"intersection"
   	},{
   		"sCI":"S0012",
   		"n":"status"
   	},{
   		"sCI":"S0012",
   		"n":"source"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"5a203ef7-7608-47ac-b41e-cc1e55438334",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2019-09-26T13:16:49.285Z",
   	"sS":[{
   		"sCI":"S0012",
   		"n":"intersection",
   		"s":"0",
   		"q":"recent"
   	},{
   		"sCI":"S0012",
   		"n":"status",
   		"s":"True",
   		"q":"recent"
   	},{
   		"sCI":"S0012",
   		"n":"source",
   		"s":"forced",
   		"q":"recent"
   	}]
   }

   
S0013 Police key
~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"1872aee6-98ca-43ad-a009-a4122f490235",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0013",
   		"n":"intersection"
   	},{
   		"sCI":"S0013",
   		"n":"status"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"b014e57b-d00e-4ac1-9b91-57b85153c887",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2019-09-26T13:18:04.612Z",
   	"sS":[{
   		"sCI":"S0013",
   		"n":"intersection",
   		"s":"0",
   		"q":"recent"
   	},{
   		"sCI":"S0013",
   		"n":"status",
   		"s":"1",
   		"q":"recent"
   	}]
   }

   
S0014 Current time plan
~~~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"0b9880ab-9b41-4033-bda3-0cddae610b8e",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0014",
   		"n":"status"
   	},{
   		"sCI":"S0014",
   		"n":"source"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"ff9d1115-4463-40be-b3cd-77383489e594",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2019-09-26T13:19:26.671Z",
   	"sS":[{
   		"sCI":"S0014",
   		"n":"status",
   		"s":"9",
   		"q":"recent"
   	},{
   		"sCI":"S0014",
   		"n":"source",
   		"s":"forced",
   		"q":"recent"
   	}]
   }

   
S0015 Current traffic situation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"aa2198da-54c6-4628-932b-6ae85fcce7c5",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0015",
   		"n":"status"
   	},{
   		"sCI":"S0015",
   		"n":"source"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"823f2eb2-176b-4bcf-9b86-0c70297eb777",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2019-09-26T13:21:45.239Z",
   	"sS":[{
   		"sCI":"S0015",
   		"n":"status",
   		"s":"2",
   		"q":"recent"
   	},{
   		"sCI":"S0015",
   		"n":"status",
   		"s":"forced",
   		"q":"recent"
   	}]
   }

   
S0016 Number of detector logics
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"1f19c581-be88-4c2d-bde0-52e00f96ea9b",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0016",
   		"n":"number"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"0d9ffb6b-d053-469f-b8da-cb871ec3c3ef",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2019-09-26T13:22:41.503Z",
   	"sS":[{
   		"sCI":"S0016",
   		"n":"number",
   		"s":"20",
   		"q":"recent"
   	}]
   }

   
S0017 Number of signal groups
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"cb23e177-c16d-4de0-b843-355170176d3d",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0017",
   		"n":"number"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"109c9f19-bb4b-4801-a7ea-4eca8f93534b",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2019-09-26T13:23:46.634Z",
   	"sS":[{
   		"sCI":"S0017",
   		"n":"number",
   		"s":"16",
   		"q":"recent"
   	}]
   }

   
S0018 Number of time plans
~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"005f9630-7800-4daa-82a8-ba1c74b7c293",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0018",
   		"n":"number"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"f4029f3c-0f48-4af5-b1b9-a957b42ab165",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2019-09-26T13:24:55.915Z",
   	"sS":[{
   		"sCI":"S0018",
   		"n":"number",
   		"s":"10",
   		"q":"recent"
   	}]
   }

   
S0019 Number of traffic situations
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"9ef925e5-a98a-4571-890c-eba174d89958",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0019",
   		"n":"number"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"0d453770-bf97-4f23-a1e7-4413c1c8306c",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2019-09-26T13:26:12.886Z",
   	"sS":[{
   		"sCI":"S0019",
   		"n":"number",
   		"s":"4",
   		"q":"recent"
   	}]
   }

   
S0020 Control mode
~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"4e63d17b-106c-421d-ad88-783d4c753b0f",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0020",
   		"n":"intersection"
   	},{
   		"sCI":"S0020",
   		"n":"controlmode"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"063906d5-ecfd-44df-8b39-136d1b8d8214",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2019-09-26T13:27:42.844Z",
   	"sS":[{
   		"sCI":"S0020",
   		"n":"intersection",
   		"s":"0",
   		"q":"recent"
   	},{
   		"sCI":"S0020",
   		"n":"controlmode",
   		"s":"startup",
   		"q":"recent"
   	}]
   }

   
S0021 Manually set detector logic
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"fb092f10-ec2d-4ee1-83b7-c3e640f2ebb2",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0021",
   		"n":"detectorlogics"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"e5688e53-c51e-408a-8075-c3c018a67f56",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2019-09-26T13:31:32.114Z",
   	"sS":[{
   		"sCI":"S0021",
   		"n":"detectorlogics",
   		"s":"000000000000000000000000",
   		"q":"recent"
   	}]
   }

   
S0022 List of time plans 
~~~~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"48d93d8c-40ee-448b-adfd-4f8609a5cee3",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0022",
   		"n":"status"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"2404e9cc-88df-4994-ad3c-ca7bb8cf8d59",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2016-05-11T19:37:06.678Z",
   	"sS":[{
   		"sCI":"S0022",
   		"n":"status",
   		"s":"1,2,3,5",
   		"q":"recent"
   	}]
   }

S0023 Command table 
~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"481da9fe-b1af-4043-9868-61d26d325d71",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0023",
   		"n":"status"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"64d47cbc-b018-4647-82e9-eb806058ef3e",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2016-05-11T12:38:59.953Z",
   	"sS":[{
   		"sCI":"S0023",
   		"n":"status",
   		"s":"01-1-30,01-2-10:",
   		"q":"recent"
   	}]
   }

S0024 Offset time
~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"696c1eb9-e9bf-411c-8cef-9edd9c48338f",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0024",
   		"n":"status"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"097edc53-cd4c-4fb8-9ed7-59c77869704b",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2016-05-11T13:00:56.432Z",
   	"sS":[{
   		"sCI":"S0024",
   		"n":"status",
   		"s":"01-20,02-10",
   		"q":"recent"
   	}]
   }

   
S0025 Time-to-green
~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"4bd1b76d-4be2-4b07-9a3f-48768c960951",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001SG002",
   	"sS":[{
   		"sCI":"S0025",
   		"n":"minToGEstimate"
   	},{
   		"sCI":"S0025",
   		"n":"maxToGEstimate"
   	},{
   		"sCI":"S0025",
   		"n":"likelyToGEstimate"
   	},{
   		"sCI":"S0025",
   		"n":"ToGConfidence"
   	},{
   		"sCI":"S0025",
   		"n":"minToREstimate"
   	},{
   		"sCI":"S0025",
   		"n":"maxToREstimate"
   	},{
   		"sCI":"S0025",
   		"n":"likelyToREstimate"
   	},{
   		"sCI":"S0025",
   		"n":"ToRConfidence"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"18e1f203-c2aa-4fb8-b7fe-5babf93f46f8",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001SG002",
   	"sTs":"2016-05-11T19:58:02.487Z",
   	"sS":[{
   		"sCI":"S0025",
   		"n":"minToGEstimate",
   		"s":"2016-05-11T21:55:10.231Z",
   		"q":"recent"
   	},{
   		"sCI":"S0025",
   		"n":"maxToGEstimate",
   		"s":"2016-05-11T21:56:08.231Z",
   		"q":"recent"
   	},{
   		"sCI":"S0025",
   		"n":"likelyToGEstimate",
   		"s":"2016-05-11T21:55:13.231Z",
   		"q":"recent"
   	},{
   		"sCI":"S0025",
   		"n":"ToGConfidence",
   		"s":"87",
   		"q":"recent"
   	},{
   		"sCI":"S0025",
   		"n":"minToREstimate",
   		"s":"2016-05-11T21:57:45.231Z",
   		"q":"recent"
   	},{
   		"sCI":"S0025",
   		"n":"maxToREstimate",
   		"s":"2016-05-11T21:57:55.231Z",
   		"q":"recent"
   	},{
   		"sCI":"S0025",
   		"n":"likelyToREstimate",
   		"s":"2016-05-11T21:57:45.231Z",
   		"q":"recent"
   	},{
   		"sCI":"S0025",
   		"n":"ToRConfidence",
   		"s":"75",
   		"q":"recent"
   	}]
   }

S0026 Week time table
~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"2af769ea-d715-44aa-af72-cfb666795a46",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0026",
   		"n":"status"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"2ef406ed-17d1-4e50-b952-ebfb8dca18dc",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2016-05-11T13:31:41.476Z",
   	"sS":[{
   		"sCI":"S0026",
   		"n":"status",
   		"s":"0-2,1-3,2-1,3-1,4-1,5-4,6-4",
   		"q":"recent"
   	}]
   }

S0027 Time tables
~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"a82f7796-3cf6-4319-835b-ec8bf21bae69",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0027",
   		"n":"status"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"1ed16ca5-2ea7-4e06-9226-d1b482b16db4",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2016-05-11T13:46:57.781Z",
   	"sS":[{
   		"sCI":"S0027",
   		"n":"status",
   		"s":"1-0-22-30,2-3-06-30,3-14-13-00,4-5-14-00",
   		"q":"recent"
   	}]
   }

   
S0028 Cycle time
~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"a82f7796-3cf6-4319-835b-ec8bf21bae69",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0028",
   		"n":"status"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"1ed16ca5-2ea7-4e06-9226-d1b482b16db4",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2016-05-11T13:46:57.781Z",
   	"sS":[{
   		"sCI":"S0028",
   		"n":"status",
   		"s":"01-80,02-80,03-75",
   		"q":"recent"
   	}]
   }

   
S0029 Forced input status
~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"a82f7796-3cf6-4319-835b-ec8bf21bae69",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0029",
   		"n":"status"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"1ed16ca5-2ea7-4e06-9226-d1b482b16db4",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2016-05-11T13:46:57.781Z",
   	"sS":[{
   		"sCI":"S0029",
   		"n":"status",
   		"s":"000000100010000010",
   		"q":"recent"
   	}]
   }

   
S0030 Forced output status
~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"032be599-861e-40f1-a896-7cb539a0b863",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0030",
   		"n":"status"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"d1d7a68f-b0eb-4add-b91a-87dddbfde665",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2019-09-30T12:14:47.021Z",
   	"sS":[{
   		"sCI":"S0030",
   		"n":"status",
   		"s":"0",
   		"q":"recent"
   	}]
   }

   
S0031 Trigger level sensitivity for loop detector
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"70264134-0ecb-4c47-8da0-946c202f9a0e",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0031",
   		"n":"status"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"418f0597-1578-4045-89eb-849b22263c5c",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2019-09-30T12:17:48.793Z",
   	"sS":[{
   		"sCI":"S0031",
   		"n":"status",
   		"s":"0",
   		"q":"recent"
   	}]
   }

S0032 Coordinated control
~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
        "mType":"rSMsg",
        "type":"StatusRequest",
        "mId":"c764a831-e3c9-4b01-a938-2171fb3d9bbd",
        "ntsOId":"KK+AG9998=001TC000",
        "xNId":"",
        "cId":"KK+AG9998=001TC000",
        "sS":[{
                "sCI":"S0032",
                "n":"intersection"
        },{
                "sCI":"S0032",
                "n":"status"
        },{
                "sCI":"S0032",
                "n":"source"
        }]
   }


**Status Response**

.. code-block:: json

   {
        "mType":"rSMsg",
        "type":"StatusResponse",
        "mId":"56fcfe6b-a07e-4a87-bf9f-4ecd76a805a7",
        "ntsOId":"KK+AG9998=001TC000",
        "xNId":"",
        "cId":"KK+AG9998=001TC000",
        "sTs":"2021-12-13T11:11:07.317Z",
        "sS":[{
                "sCI":"S0032",
                "n":"intersection",
                "s":"0",
                "q":"recent"
        },{
                "sCI":"S0032",
                "n":"status",
                "s":"local",
                "q":"recent"
        },{
                "sCI":"S0032",
                "n":"source",
                "s":"calendar_clock",
                "q":"recent"
        }]
    }

S0033 Signal Priority Status
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

    {
        "mType": "rSMsg",
        "type": "StatusRequest",
        "mId": "f1a13213-b90a-4abc-8953-2b8142923c55",
        "ntsOId":"KK+AG9998=001TC000",
        "xNId":"",
        "cId":"KK+AG9998=001TC000",
        "sS": [{
                "sCI": "S0033",
                "n": "list"
        }]
    }

**Status Response**

.. code-block:: json

    {
        "mType": "rSMsg",
        "type": "StatusResponse",
        "mId": "f1a13213-b90a-4abc-8953-2b8142923c55",
        "ntsOId":"KK+AG9998=001TC000",
        "xNId":"",
        "cId":"KK+AG9998=001TC000",
        "sTs":"2021-12-13T11:11:07.317Z",
        "sS": [{
                "sCI": "S0033",
                "n": "list",
                "q": "recent",
                "s": [{
                        "r": "f90c",
                        "t": "2021-11-09T15:06:38.796Z",
                        "s": "received"
                },{
                        "r": "oh0i",
                        "t": "2021-11-09T15:06:38.796Z",
                        "s": "activated"
                },{
                        "r": "f90c",
                        "t": "2021-11-09T15:06:39.796Z",
                        "s": "completed"
                },{
                        "r": "3ia2",
                        "t": "2021-11-09T15:06:48.796Z",
                        "s": "queued",
                        "o": "ff30"
                },{
                        "r": "5hc0",
                        "t": "2021-11-09T15:06:48.796Z",
                        "s": "timeout"
                }]
        }]
    }

S0034 Timeout for dynamic bands
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

    {
        "mType": "rSMsg",
        "type": "StatusRequest",
        "mId": "f1a13213-b90a-4abc-8953-2b8142923c55",
        "ntsOId":"KK+AG9998=001TC000",
        "xNId":"",
        "cId":"KK+AG9998=001TC000",
        "sS": [{
                "sCI": "S0034",
                "n": "status"
        }]
    }

**Status Response**

.. code-block:: json

    {
        "mType":"rSMsg",
        "type":"StatusResponse",
        "mId":"c4064647-65c8-4ebd-aa41-e52576329d8e",
        "ntsOId":"KK+AG9998=001TC000",
        "xNId":"",
        "cId":"KK+AG9998=001TC000",
        "sTs":"2021-12-13T11:55:13.399Z",
        "sS":[{
                "sCI":"S0034",
                "n":"status",
                "s":"30",
                "q":"recent"
        }]
    }

   
S0091 Operator logged in/out OP-panel
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"9b6591b4-5633-401f-b882-e393393e97fe",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0091",
   		"n":"user"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"a58b40b3-ba7f-4f09-8be5-bbf4598caafe",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2019-09-26T13:34:31.402Z",
   	"sS":[{
   		"sCI":"S0091",
   		"n":"user",
   		"s":"2",
   		"q":"recent"
   	}]
   }

   
S0092 Operator logged web-interface
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"7e14e715-d7eb-4aed-a899-fa21fb0d3f4e",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0092",
   		"n":"user"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"f1fbc4ac-921c-43be-ad0c-36c54e666ef3",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2019-09-26T13:35:06.573Z",
   	"sS":[{
   		"sCI":"S0092",
   		"n":"user",
   		"s":"2",
   		"q":"recent"
   	}]
   }

   
S0095 Version of Traffic Light Controller
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"aef9678f-60b9-47a0-8470-70af4632a01d",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0095",
   		"n":"status"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"9ba06a0a-28d5-4236-86e5-d83a212ced09",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2019-09-26T13:37:23.031Z",
   	"sS":[{
   		"sCI":"S0095",
   		"n":"status",
   		"s":"TLC product 13, version 5",
   		"q":"recent"
   	}]
   }

   
S0096 Current date and time
~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"66a6f25e-930a-40c7-9957-04075716e2e8",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0096",
   		"n":"year"
   	},{
   		"sCI":"S0096",
   		"n":"month"
   	},{
   		"sCI":"S0096",
   		"n":"day"
   	},{
   		"sCI":"S0096",
   		"n":"hour"
   	},{
   		"sCI":"S0096",
   		"n":"minute"
   	},{
   		"sCI":"S0096",
   		"n":"second"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"b9c8a436-f8ae-4d45-9af4-264032c0a0a1",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2019-09-26T13:40:30.826Z",
   	"sS":[{
   		"sCI":"S0096",
   		"n":"year",
   		"s":"2017",
   		"q":"recent"
   	},{
   		"sCI":"S0096",
   		"n":"month",
   		"s":"5",
   		"q":"recent"
   	},{
   		"sCI":"S0096",
   		"n":"day",
   		"s":"12",
   		"q":"recent"
   	},{
   		"sCI":"S0096",
   		"n":"hour",
   		"s":"10",
   		"q":"recent"
   	},{
   		"sCI":"S0096",
   		"n":"minute",
   		"s":"16",
   		"q":"recent"
   	},{
   		"sCI":"S0096",
   		"n":"second",
   		"s":"31",
   		"q":"recent"
   	}]
   }

   
S0097 Checksum of traffic parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Status Request**

.. code-block:: json

   {
        "mType":"rSMsg",
        "type":"StatusRequest",
        "mId":"b4e70a7e-12ca-4619-98af-419ecf2a74da",
        "ntsOId":"KK+AG0503=001TC000",
        "xNId":"",
        "cId":"KK+AG0503=001TC000",
        "sS":[{
                "sCI":"S0097",
                "n":"timestamp"
        },{
                "sCI":"S0097",
                "n":"checksum"
        }]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"f18f2032-39e8-4397-bc82-d5355c76caf4",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2019-09-30T12:21:30.640Z",
   	"sS":[{
   		"sCI":"S0097",
   		"n":"timestamp",
   		"s":"2019-09-29T10:00:00.510Z",
   		"q":"recent"
   	},{
   		"sCI":"S0097",
   		"n":"checksum",
   		"s":"63b417a713575c7838e4a915b92c617e7b5957bf",
   		"q":"recent"
   	}]
   }

S0098 Configuration of traffic parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"b4e70a7e-12ca-4619-98af-419ecf2a74da",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0098",
   		"n":"config"
   	},{
   		"sCI":"S0098",
   		"n":"timestamp"
   	},{
   		"sCI":"S0098",
   		"n":"version"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"f18f2032-39e8-4397-bc82-d5355c76caf4",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2019-09-30T12:21:30.640Z",
   	"sS":[{
   		"sCI":"S0098",
   		"n":"config",
   		"s":"63b417a713575c7838e4a915b92c617e7b5957bf",
   		"q":"recent"
   	},{
   		"sCI":"S0098",
   		"n":"timestamp",
   		"s":"2019-09-29T10:00:00.510Z",
   		"q":"recent"
   	},{
   		"sCI":"S0098",
   		"n":"version",
   		"s":"Controller 1234. Version 5. Added SG3",
   		"q":"recent"
   	}]
   }
   
S0201 Traffic Counting: Number of vehicles
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"af196dee-bc6b-449e-96bd-8794acea95b2",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001DL001",
   	"sS":[{
   		"sCI":"S0201",
   		"n":"starttime"
   	},{
   		"sCI":"S0201",
   		"n":"vehicles"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"84c4b90f-142e-416c-8656-17d720be0791",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001DL001",
   	"sTs":"2019-09-30T12:24:10.904Z",
   	"sS":[{
   		"sCI":"S0201",
   		"n":"starttime",
   		"s":"2019-03-12T12:00:00.000Z",
   		"q":"recent"
   	},{
   		"sCI":"S0201",
   		"n":"vehicles",
   		"s":"20",
   		"q":"recent"
   	}]
   }

   
S0202 Traffic Counting: Vehicle speed
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"b41fca74-11ee-4486-bda2-9a0b1e3f53b2",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001DL001",
   	"sS":[{
   		"sCI":"S0202",
   		"n":"starttime"
   	},{
   		"sCI":"S0202",
   		"n":"speed"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"36d04216-d85e-41bf-9012-84698d286a37",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001DL001",
   	"sTs":"2019-09-30T12:28:21.855Z",
   	"sS":[{
   		"sCI":"S0202",
   		"n":"starttime",
   		"s":"2019-03-12T12:00:00.000Z",
   		"q":"recent"
   	},{
   		"sCI":"S0202",
   		"n":"speed",
   		"s":"54",
   		"q":"recent"
   	}]
   }

   
S0203 Traffic Counting: Occupancy
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"311c3959-1f4f-4d74-9513-6319348fb6d2",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001DL001",
   	"sS":[{
   		"sCI":"S0203",
   		"n":"starttime"
   	},{
   		"sCI":"S0203",
   		"n":"occupancy"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"bf47496c-c9c7-404a-bb0d-8fa36b28bf42",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001DL001",
   	"sTs":"2019-09-30T12:30:55.630Z",
   	"sS":[{
   		"sCI":"S0203",
   		"n":"starttime",
   		"s":"2019-03-12T12:00:00.000Z",
   		"q":"recent"
   	},{
   		"sCI":"S0203",
   		"n":"occupancy",
   		"s":"23",
   		"q":"recent"
   	}]
   }

   
S0204 Traffic Counting: Number of vehicles of given classification
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"e497a551-60ba-42b5-911c-f107d0cbc84d",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001DL001",
   	"sS":[{
   		"sCI":"S0204",
   		"n":"starttime"
   	},{
   		"sCI":"S0204",
   		"n":"P"
   	},{
   		"sCI":"S0204",
   		"n":"PS"
   	},{
   		"sCI":"S0204",
   		"n":"L"
   	},{
   		"sCI":"S0204",
   		"n":"LS"
   	},{
   		"sCI":"S0204",
   		"n":"B"
   	},{
   		"sCI":"S0204",
   		"n":"SP"
   	},{
   		"sCI":"S0204",
   		"n":"MC"
   	},{
   		"sCI":"S0204",
   		"n":"C"
   	},{
   		"sCI":"S0204",
   		"n":"F"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"ad4d10dc-7a0b-4417-9714-931bfb71bc5d",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001DL001",
   	"sTs":"2019-09-30T12:48:44.730Z",
   	"sS":[{
   		"sCI":"S0204",
   		"n":"starttime",
   		"s":"2019-03-12T12:00:00.000Z",
   		"q":"recent"
   	},{
   		"sCI":"S0204",
   		"n":"P",
   		"s":"2",
   		"q":"recent"
   	},{
   		"sCI":"S0204",
   		"n":"PS",
   		"s":"43",
   		"q":"recent"
   	},{
   		"sCI":"S0204",
   		"n":"L",
   		"s":"9",
   		"q":"recent"
   	},{
   		"sCI":"S0204",
   		"n":"LS",
   		"s":"3",
   		"q":"recent"
   	},{
   		"sCI":"S0204",
   		"n":"B",
   		"s":"2",
   		"q":"recent"
   	},{
   		"sCI":"S0204",
   		"n":"SP",
   		"s":"3",
   		"q":"recent"
   	},{
   		"sCI":"S0204",
   		"n":"MC",
   		"s":"4",
   		"q":"recent"
   	},{
   		"sCI":"S0204",
   		"n":"C",
   		"s":"6",
   		"q":"recent"
   	},{
   		"sCI":"S0204",
   		"n":"F",
   		"s":"2",
   		"q":"recent"
   	}]
   }

S0205 Traffic Counting: Number of vehicles
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"df92c79d-05a5-4397-9cce-dbfefa25b5ef",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0205",
   		"n":"start"
   	},{
   		"sCI":"S0205",
   		"n":"vehicles"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"dd704047-6996-4ada-b953-78b9e13ce8ae",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2019-09-29T17:57:55.993Z",
   	"sS":[{
   		"sCI":"S0205",
   		"n":"start",
   		"s":"2019-03-12T12:00:00.000Z",
   		"q":"recent"
   	},{
   		"sCI":"S0205",
   		"n":"vehicles",
   		"s":"32,31,24,41,41,32",
   		"q":"recent"
   	}]
   }

   
S0206 Traffic Counting: Vehicle speed
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"79769973-3bc9-4ec3-b1a4-55c252197f6f",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0206",
   		"n":"start"
   	},{
   		"sCI":"S0206",
   		"n":"speed"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"c2d3b89f-c684-483d-a548-dc85099229f2",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2019-09-29T18:01:08.571Z",
   	"sS":[{
   		"sCI":"S0206",
   		"n":"start",
   		"s":"2019-03-12T12:00:00.000Z",
   		"q":"recent"
   	},{
   		"sCI":"S0206",
   		"n":"speed",
   		"s":"32,31,24,41,41,32",
   		"q":"recent"
   	}]
   }

   
S0207 Traffic Counting: Occupancy
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"e4707ad3-4d3b-4ce6-b9b1-48277da47c6f",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0207",
   		"n":"start"
   	},{
   		"sCI":"S0207",
   		"n":"occupancy"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"8d10ad23-407f-4ddd-8d2a-4d69af883e72",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2019-09-29T18:05:06.776Z",
   	"sS":[{
   		"sCI":"S0207",
   		"n":"start",
   		"s":"2019-03-12T12:00:00.000Z",
   		"q":"recent"
   	},{
   		"sCI":"S0207",
   		"n":"occupancy",
   		"s":"32,31,24,41,41,32",
   		"q":"recent"
   	}]
   }

   
S0208 Traffic Counting: Number of vehicles of given classification
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Status Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusRequest",
   	"mId":"78219ac2-80ff-46df-a9e8-4051909311bf",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sS":[{
   		"sCI":"S0208",
   		"n":"start"
   	},{
   		"sCI":"S0208",
   		"n":"P"
   	},{
   		"sCI":"S0208",
   		"n":"PS"
   	},{
   		"sCI":"S0208",
   		"n":"L"
   	},{
   		"sCI":"S0208",
   		"n":"LS"
   	},{
   		"sCI":"S0208",
   		"n":"B"
   	},{
   		"sCI":"S0208",
   		"n":"SP"
   	},{
   		"sCI":"S0208",
   		"n":"MC"
   	},{
   		"sCI":"S0208",
   		"n":"C"
   	},{
   		"sCI":"S0208",
   		"n":"F"
   	}]
   }

   
**Status Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"StatusResponse",
   	"mId":"4c7a1249-a189-460f-a44d-5547fa706c08",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"sTs":"2019-09-29T18:08:34.230Z",
   	"sS":[{
   		"sCI":"S0208",
   		"n":"start",
   		"s":"2019-03-12T12:00:00.000Z",
   		"q":"recent"
   	},{
   		"sCI":"S0208",
   		"n":"P",
   		"s":"2,3,2,1,1,2",
   		"q":"recent"
   	},{
   		"sCI":"S0208",
   		"n":"PS",
   		"s":"9,3,5,1,1,2",
   		"q":"recent"
   	},{
   		"sCI":"S0208",
   		"n":"L",
   		"s":"3,5,2,1,1,2",
   		"q":"recent"
   	},{
   		"sCI":"S0208",
   		"n":"LS",
   		"s":"2,3,2,1,1,2",
   		"q":"recent"
   	},{
   		"sCI":"S0208",
   		"n":"B",
   		"s":"8,3,2,1,1,2",
   		"q":"recent"
   	},{
   		"sCI":"S0208",
   		"n":"SP",
   		"s":"1,1,2,1,1,2",
   		"q":"recent"
   	},{
   		"sCI":"S0208",
   		"n":"MC",
   		"s":"4,3,3,1,1,2",
   		"q":"recent"
   	},{
   		"sCI":"S0208",
   		"n":"C",
   		"s":"8,3,2,1,1,2",
   		"q":"recent"
   	},{
   		"sCI":"S0208",
   		"n":"F",
   		"s":"5,3,2,1,1,2",
   		"q":"recent"
   	}]
   }


Commands
--------
   
M0001 Sets functional position
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Command Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandRequest",
   	"mId":"c7fb8423-8232-43e1-b632-68c299ce4360",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"arg":[{
   		"cCI":"M0001",
   		"n":"status",
   		"cO":"setValue",
   		"v":"NormalControl"
   	},{
   		"cCI":"M0001",
   		"n":"securityCode",
   		"cO":"setValue",
   		"v":"0000"
   	},{
   		"cCI":"M0001",
   		"n":"timeout",
   		"cO":"setValue",
   		"v":"0"
   	},{
   		"cCI":"M0001",
   		"n":"intersection",
   		"cO":"setValue",
   		"v":"0"
   	}]
   }

   
**Command Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandResponse",
   	"mId":"8dc16a94-d200-439a-a0f9-75020fd96530",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"cTS":"2019-09-30T07:03:33.360Z",
   	"rvs":[{
   		"cCI":"M0001",
   		"n":"status",
   		"v":"NormalControl",
   		"age":"recent"
   	},{
   		"cCI":"M0001",
   		"n":"securityCode",
   		"v":"0000",
   		"age":"recent"
   	},{
   		"cCI":"M0001",
   		"n":"timeout",
   		"v":"0",
   		"age":"recent"
   	},{
   		"cCI":"M0001",
   		"n":"intersection",
   		"v":"0",
   		"age":"recent"
   	}]
   }

   
M0002 Sets current time plan
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Command Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandRequest",
   	"mId":"5066622c-cd03-44c2-9e21-dd02d8998585",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"arg":[{
   		"cCI":"M0002",
   		"n":"status",
   		"cO":"setPlan",
   		"v":"True"
   	},{
   		"cCI":"M0002",
   		"n":"securityCode",
   		"cO":"setPlan",
   		"v":"0000"
   	},{
   		"cCI":"M0002",
   		"n":"timeplan",
   		"cO":"setPlan",
   		"v":"1"
   	}]
   }

   
**Command Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandResponse",
   	"mId":"84038dc5-fefd-4984-aec2-41aba312b43b",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"cTS":"2019-09-30T07:35:08.934Z",
   	"rvs":[{
   		"cCI":"M0002",
   		"n":"status",
   		"v":"False",
   		"age":"True"
   	},{
   		"cCI":"M0002",
   		"n":"securityCode",
   		"v":"0000",
   		"age":"recent"
   	},{
   		"cCI":"M0002",
   		"n":"timeplan",
   		"v":"1",
   		"age":"recent"
   	}]
   }

   
M0003 Sets traffic situation the controller uses
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Command Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandRequest",
   	"mId":"63f4f782-e7d5-446c-b583-489b1a26bca5",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"arg":[{
   		"cCI":"M0003",
   		"n":"status",
   		"cO":"setTrafficSituation",
   		"v":"True"
   	},{
   		"cCI":"M0003",
   		"n":"securityCode",
   		"cO":"setTrafficSituation",
   		"v":"0000"
   	},{
   		"cCI":"M0003",
   		"n":"trafficsituation",
   		"cO":"setTrafficSituation",
   		"v":"1"
   	}]
   }

   
**Command Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandResponse",
   	"mId":"c5640a4c-93c3-4928-9e9b-f6bb9060d126",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"cTS":"2019-09-30T07:39:14.978Z",
   	"rvs":[{
   		"cCI":"M0003",
   		"n":"status",
   		"v":"True",
   		"age":"recent"
   	},{
   		"cCI":"M0003",
   		"n":"securityCode",
   		"v":"0000",
   		"age":"recent"
   	},{
   		"cCI":"M0003",
   		"n":"trafficsituation",
   		"v":"1",
   		"age":"recent"
   	}]
   }

   
M0004 Restarts Traffic Light Controller
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Command Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandRequest",
   	"mId":"d6734246-c087-4b27-9fe6-e1e0b9e78f41",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"arg":[{
   		"cCI":"M0004",
   		"n":"status",
   		"cO":"setRestart",
   		"v":"True"
   	},{
   		"cCI":"M0004",
   		"n":"securityCode",
   		"cO":"setRestart",
   		"v":"0000"
   	}]
   }

   
**Command Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandResponse",
   	"mId":"ddc41905-5c8b-4aad-91ec-71d2ae8b4e2b",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"cTS":"2019-09-30T07:46:44.187Z",
   	"rvs":[{
   		"cCI":"M0004",
   		"n":"status",
   		"v":"True",
   		"age":"recent"
   	},{
   		"cCI":"M0004",
   		"n":"securityCode",
   		"v":"0000",
   		"age":"recent"
   	}]
   }

   
M0005 Activate emergency route
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Command Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandRequest",
   	"mId":"b5517db0-ec6f-4bef-ad18-05673cbeecde",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"arg":[{
   		"cCI":"M0005",
   		"n":"status",
   		"cO":"setEmergency",
   		"v":"False"
   	},{
   		"cCI":"M0005",
   		"n":"securityCode",
   		"cO":"setEmergency",
   		"v":"0000"
   	},{
   		"cCI":"M0005",
   		"n":"emergencyroute",
   		"cO":"setEmergency",
   		"v":"1"
   	}]
   }

   
**Command Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandResponse",
   	"mId":"0ea1da9d-675a-4059-8bb6-015152399b72",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"cTS":"2019-09-30T07:52:11.612Z",
   	"rvs":[{
   		"cCI":"M0005",
   		"n":"status",
   		"v":"False",
   		"age":"recent"
   	},{
   		"cCI":"M0005",
   		"n":"securityCode",
   		"v":"0000",
   		"age":"recent"
   	},{
   		"cCI":"M0005",
   		"n":"emergencyroute",
   		"v":"1",
   		"age":"recent"
   	}]
   }

   
M0006 Activate input
~~~~~~~~~~~~~~~~~~~~
   
**Command Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandRequest",
   	"mId":"3e0a4825-d064-457c-a2b8-608c0d0f2284",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"arg":[{
   		"cCI":"M0006",
   		"n":"status",
   		"cO":"setInput",
   		"v":"True"
   	},{
   		"cCI":"M0006",
   		"n":"securityCode",
   		"cO":"setInput",
   		"v":"0000"
   	},{
   		"cCI":"M0006",
   		"n":"input",
   		"cO":"setInput",
   		"v":"1"
   	}]
   }

   
**Command Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandResponse",
   	"mId":"f34dc677-3d05-418c-9496-db73deb248e3",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"cTS":"2019-09-30T08:12:02.519Z",
   	"rvs":[{
   		"cCI":"M0006",
   		"n":"status",
   		"v":"True",
   		"age":"recent"
   	},{
   		"cCI":"M0006",
   		"n":"securityCode",
   		"v":"0000",
   		"age":"recent"
   	},{
   		"cCI":"M0006",
   		"n":"input",
   		"v":"1",
   		"age":"recent"
   	}]
   }

   
M0007 Activate fixed time control
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Command Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandRequest",
   	"mId":"f11d1a8b-595a-457a-a3c7-2826c5cfdc64",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"arg":[{
   		"cCI":"M0007",
   		"n":"status",
   		"cO":"setFixedTime",
   		"v":"True"
   	},{
   		"cCI":"M0007",
   		"n":"securityCode",
   		"cO":"setFixedTime",
   		"v":"0000"
   	}]
   }

   
**Command Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandResponse",
   	"mId":"ba308115-06ae-4813-ba19-fb95ffc36907",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"cTS":"2019-09-30T08:15:54.862Z",
   	"rvs":[{
   		"cCI":"M0007",
   		"n":"status",
   		"v":"True",
   		"age":"recent"
   	},{
   		"cCI":"M0007",
   		"n":"securityCode",
   		"v":"0000",
   		"age":"recent"
   	}]
   }

   
M0008 Sets manual activation of detector logic
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Command Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandRequest",
   	"mId":"756914f6-51c1-4407-8dbd-328b2f9dbc2b",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001DL001",
   	"arg":[{
   		"cCI":"M0008",
   		"n":"status",
   		"cO":"setForceDetectorLogic",
   		"v":"True"
   	},{
   		"cCI":"M0008",
   		"n":"securityCode",
   		"cO":"setForceDetectorLogic",
   		"v":"0000"
   	},{
   		"cCI":"M0008",
   		"n":"mode",
   		"cO":"setForceDetectorLogic",
   		"v":"True"
   	}]
   }

   
**Command Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandResponse",
   	"mId":"9cd20b07-267a-4746-8882-d61de2a7318c",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001DL001",
   	"cTS":"2019-09-30T08:18:57.492Z",
   	"rvs":[{
   		"cCI":"M0008",
   		"n":"status",
   		"v":"True",
   		"age":"recent"
   	},{
   		"cCI":"M0008",
   		"n":"securityCode",
   		"v":"0000",
   		"age":"recent"
   	},{
   		"cCI":"M0008",
   		"n":"mode",
   		"v":"True",
   		"age":"recent"
   	}]
   }

   
M0010 Start of signal group
~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Command Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandRequest",
   	"mId":"6da0f9d7-9ee7-4055-9368-1c737da785d2",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001SG001",
   	"arg":[{
   		"cCI":"M0010",
   		"n":"status",
   		"cO":"setStart",
   		"v":"True"
   	},{
   		"cCI":"M0010",
   		"n":"securityCode",
   		"cO":"setStart",
   		"v":"0000"
   	}]
   }

   
**Command Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandResponse",
   	"mId":"fbc4cc9e-9175-4608-8c75-c12603ad3aa4",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001SG001",
   	"cTS":"2019-09-30T08:23:57.132Z",
   	"rvs":[{
   		"cCI":"M0010",
   		"n":"status",
   		"v":"True",
   		"age":"recent"
   	},{
   		"cCI":"M0010",
   		"n":"securityCode",
   		"v":"0000",
   		"age":"recent"
   	}]
   }

   
M0011 Stop of signal group
~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Command Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandRequest",
   	"mId":"ec458c36-6af8-4908-be29-0bd5391dd27d",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001SG001",
   	"arg":[{
   		"cCI":"M0011",
   		"n":"status",
   		"cO":"setStop",
   		"v":"True"
   	},{
   		"cCI":"M0011",
   		"n":"securityCode",
   		"cO":"setStop",
   		"v":"0000"
   	}]
   }

   
**Command Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandResponse",
   	"mId":"4965db4d-03bb-4a2c-93d7-f89c563f65f2",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001SG001",
   	"cTS":"2019-09-30T11:18:38.657Z",
   	"rvs":[{
   		"cCI":"M0011",
   		"n":"status",
   		"v":"True",
   		"age":"recent"
   	},{
   		"cCI":"M0011",
   		"n":"securityCode",
   		"v":"0000",
   		"age":"recent"
   	}]
   }

   
M0012 Request start or stop of a series of signal groups
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Command Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandRequest",
   	"mId":"128e056d-67ba-4506-98be-6bca01e3b5c8",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"arg":[{
   		"cCI":"M0012",
   		"n":"status",
   		"cO":"setStart",
   		"v":"5,4134,65;5,11"
   	},{
   		"cCI":"M0012",
   		"n":"securityCode",
   		"cO":"setStart",
   		"v":"0000"
   	}]
   }

   
**Command Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandResponse",
   	"mId":"472523c4-d4a0-4064-a576-2d46b9550005",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"cTS":"2019-09-30T11:26:34.006Z",
   	"rvs":[{
   		"cCI":"M0012",
   		"n":"status",
   		"v":"5,4134,65;5,11",
   		"age":"recent"
   	},{
   		"cCI":"M0012",
   		"n":"securityCode",
   		"v":"0000",
   		"age":"recent"
   	}]
   }

   
M0013 Activate a series of inputs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Command Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandRequest",
   	"mId":"486d9574-7816-41db-9cb9-561b54d23b1e",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"arg":[{
   		"cCI":"M0013",
   		"n":"status",
   		"cO":"setInput",
   		"v":"5,4134,65"
   	},{
   		"cCI":"M0013",
   		"n":"securityCode",
   		"cO":"setInput",
   		"v":"0000"
   	}]
   }

   
**Command Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandResponse",
   	"mId":"7fe7e4bf-5116-406b-a757-7b83d38727ac",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"cTS":"2019-09-30T11:30:52.851Z",
   	"rvs":[{
   		"cCI":"M0013",
   		"n":"status",
   		"v":"5,4134,65",
   		"age":"recent"
   	},{
   		"cCI":"M0013",
   		"n":"securityCode",
   		"v":"0000",
   		"age":"recent"
   	}]
   }

   
M0014 Set command table
~~~~~~~~~~~~~~~~~~~~~~~
   
**Command Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandRequest",
   	"mId":"2840c768-1005-4b2b-a59e-a123b063c430",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"arg":[{
   		"cCI":"M0014",
   		"n":"plan",
   		"cO":"setCommands",
   		"v":"1"
   	},{
   		"cCI":"M0014",
   		"n":"status",
   		"cO":"setCommands",
   		"v":"01-01,02-02"
   	},{
   		"cCI":"M0014",
   		"n":"securityCode",
   		"cO":"setCommands",
   		"v":"2312"
   	}]
   }

   
**Command Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandResponse",
   	"mId":"2e8e7ef7-488c-43d9-beac-b7a9cea66cc6",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"cTS":"2016-05-12T12:04:25.199Z",
   	"rvs":[{
   		"cCI":"M0014",
   		"n":"plan",
   		"v":"1",
   		"age":"recent"
   	},{
   		"cCI":"M0014",
   		"n":"status",
   		"v":"01-01,02-02",
   		"age":"recent"
   	},{
   		"cCI":"M0014",
   		"n":"securityCode",
   		"v":"2312",
   		"age":"recent"
   	}]
   }

   
M0015 Set Offset time
~~~~~~~~~~~~~~~~~~~~~
   
**Command Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandRequest",
   	"mId":"a00cbdc3-65a9-42e4-9658-0af2eb92db60",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"arg":[{
   		"cCI":"M0015",
   		"n":"status",
   		"cO":"setOffset",
   		"v":"30"
   	},{
   		"cCI":"M0015",
   		"n":"plan",
   		"cO":"setOffset",
   		"v":"1"
   	},{
   		"cCI":"M0015",
   		"n":"securityCode",
   		"cO":"setOffset",
   		"v":"2314"
   	}]
   }

   
**Command Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandResponse",
   	"mId":"77291dd5-468c-42b4-96aa-f1553cf57466",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"cTS":"2016-05-12T12:05:57.558Z",
   	"rvs":[{
   		"cCI":"M0015",
   		"n":"status",
   		"v":"30",
   		"age":"recent"
   	},{
   		"cCI":"M0015",
   		"n":"plan",
   		"v":"1",
   		"age":"recent"
   	},{
   		"cCI":"M0015",
   		"n":"securityCode",
   		"v":"2314",
   		"age":"recent"
   	}]
   }

   
M0016 Set week time table 
~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Command Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandRequest",
   	"mId":"7fe05b51-1436-4bf4-a1e8-54c946395e95",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"arg":[{
   		"cCI":"M0016",
   		"n":"status",
   		"cO":"setWeekTable",
   		"v":"0-2,1-3,2-1,3-1,4-1,5-4,6-4"
   	},{
   		"cCI":"M0016",
   		"n":"securityCode",
   		"cO":"setWeekTable",
   		"v":"2314"
   	}]
   }

   
**Command Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandResponse",
   	"mId":"3c635519-c745-44e5-ab1d-8da0d0cabb84",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"cTS":"2016-05-12T12:09:47.574Z",
   	"rvs":[{
   		"cCI":"M0016",
   		"n":"status",
   		"v":"0-2,1-3,2-1,3-1,4-1,5-4,6-4",
   		"age":"recent"
   	},{
   		"cCI":"M0016",
   		"n":"securityCode",
   		"v":"2314",
   		"age":"recent"
   	}]
   }

   
M0017 Set time tables 
~~~~~~~~~~~~~~~~~~~~~
   
**Command Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandRequest",
   	"mId":"0e05974d-223b-47a0-9992-fbe00dd352bd",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"arg":[{
   		"cCI":"M0017",
   		"n":"status",
   		"cO":"setTimeTable",
   		"v":"1-1-6-30,1-0-9-0,1-1-15-30,1-0-18-0,2-1-7-0,2-0-9-0"
   	},{
   		"cCI":"M0017",
   		"n":"securityCode",
   		"cO":"setTimeTable",
   		"v":"2321"
   	}]
   }

   
**Command Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandResponse",
   	"mId":"25b1947b-284a-4fff-b723-448f7c1b80b4",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"cTS":"2016-05-12T12:11:14.105Z",
   	"rvs":[{
   		"cCI":"M0017",
   		"n":"status",
   		"v":"1-1-6-30,1-0-9-0,1-1-15-30,1-0-18-0,2-1-7-0,2-0-9-0",
   		"age":"recent"
   	},{
   		"cCI":"M0017",
   		"n":"securityCode",
   		"v":"2321",
   		"age":"recent"
   	}]
   }

   
M0018 Set cycle time
~~~~~~~~~~~~~~~~~~~~
   
**Command Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandRequest",
   	"mId":"0e05974d-223b-47a0-9992-fbe00dd352bd",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"arg":[{
   		"cCI":"M0018",
   		"n":"status",
   		"cO":"setCycleTime",
   		"v":"2"
   	},{
   		"cCI":"M0018",
   		"n":"plan",
   		"cO":"setCycleTime",
   		"v":"80"
   	},{
   		"cCI":"M0018",
   		"n":"securityCode",
   		"cO":"setCycleTime",
   		"v":"2321"
   	}]
   }

   
**Command Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandResponse",
   	"mId":"25b1947b-284a-4fff-b723-448f7c1b80b4",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"cTS":"2016-05-12T12:11:14.105Z",
   	"rvs":[{
   		"cCI":"M0018",
   		"n":"status",
   		"v":"2",
   		"age":"recent"
   	},{
   		"cCI":"M0018",
   		"n":"plan",
   		"v":"80",
   		"age":"recent"
   	},{
   		"cCI":"M0018",
   		"n":"securityCode",
   		"v":"2321",
   		"age":"recent"
   	}]
   }

   
M0019 Force input
~~~~~~~~~~~~~~~~~
   
**Command Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandRequest",
   	"mId":"0e05974d-223b-47a0-9992-fbe00dd352bd",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"arg":[{
   		"cCI":"M0019",
   		"n":"status",
   		"cO":"setInput",
   		"v":"True"
   	},{
   		"cCI":"M0019",
   		"n":"securityCode",
   		"cO":"setInput",
   		"v":"2321"
   	},{
   		"cCI":"M0019",
   		"n":"input",
   		"cO":"setInput",
   		"v":"2"
   	},{
   		"cCI":"M0019",
   		"n":"inputValue",
   		"cO":"setInput",
   		"v":"True"
   	}]
   }

   
**Command Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandResponse",
   	"mId":"25b1947b-284a-4fff-b723-448f7c1b80b4",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"cTS":"2016-05-12T12:11:14.105Z",
   	"rvs":[{
   		"cCI":"M0019",
   		"n":"status",
   		"v":"True",
   		"age":"recent"
   	},{
   		"cCI":"M0019",
   		"n":"securityCode",
   		"v":"2321",
   		"age":"recent"
   	},{
   		"cCI":"M0019",
   		"n":"input",
   		"v":"2",
   		"age":"recent"
   	},{
   		"cCI":"M0019",
   		"n":"inputValue",
   		"v":"2321",
   		"age":"True"
   	}]
   }

   
M0020 Force output
~~~~~~~~~~~~~~~~~~
   
**Command Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandRequest",
   	"mId":"1caf4fed-6182-431e-a88e-fa537ac00c8e",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"arg":[{
   		"cCI":"M0020",
   		"n":"status",
   		"cO":"setOutput",
   		"v":"True"
   	},{
   		"cCI":"M0020",
   		"n":"securityCode",
   		"cO":"setOutput",
   		"v":"0000"
   	},{
   		"cCI":"M0020",
   		"n":"output",
   		"cO":"setOutput",
   		"v":"1"
   	},{
   		"cCI":"M0020",
   		"n":"outputValue",
   		"cO":"setOutput",
   		"v":"True"
   	}]
   }

   
**Command Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandResponse",
   	"mId":"7e008cd8-e51f-487c-bd66-87993059eb8c",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"cTS":"2019-09-30T13:23:54.049Z",
   	"rvs":[{
   		"cCI":"M0020",
   		"n":"status",
   		"v":"True",
   		"age":"recent"
   	},{
   		"cCI":"M0020",
   		"n":"securityCode",
   		"v":"0000",
   		"age":"recent"
   	},{
   		"cCI":"M0020",
   		"n":"output",
   		"v":"1",
   		"age":"recent"
   	},{
   		"cCI":"M0020",
   		"n":"outputValue",
   		"v":"True",
   		"age":"recent"
   	}]
   }

   
M0021 Set trigger level sensitivity for loop detector
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Command Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandRequest",
   	"mId":"a6697f11-4f62-4349-8325-857beb150d8a",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"arg":[{
   		"cCI":"M0021",
   		"n":"status",
   		"cO":"setLevel",
   		"v":"01=54"
   	},{
   		"cCI":"M0021",
   		"n":"securityCode",
   		"cO":"setLevel",
   		"v":"0000"
   	}]
   }

   
**Command Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandResponse",
   	"mId":"332bfbc4-67b2-4047-a718-a3d10f129214",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"cTS":"2019-09-30T13:32:18.840Z",
   	"rvs":[{
   		"cCI":"M0021",
   		"n":"status",
   		"v":"01=54",
   		"age":"recent"
   	},{
   		"cCI":"M0021",
   		"n":"securityCode",
   		"v":"0000",
   		"age":"recent"
   	}]
   }

M0022 Request Signal Priority
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Command Request**

.. code-block:: json

   {
        "mType":"rSMsg",
        "type":"CommandRequest",
        "mId":"e4e9668a-b562-4fbe-9c1e-d4a30733ddea",
        "ntsOId":"KK+AG9998=001TC000",
        "xNId":"",
        "cId":"KK+AG9998=001TC000",
        "arg":[{
                "cCI":"M0022",
                "n":"requestId",
                "cO":"requestPriority",
                "v":"f90c"
        },{
                "cCI":"M0022",
                "n":"connectionId",
                "cO":"requestPriority",
                "v":"5"
        },{
                "cCI":"M0022",
                "n":"type",
                "cO":"requestPriority",
                "v":"new"
        },{
                "cCI":"M0022",
                "n":"vehicleType",
                "cO":"requestPriority",
                "v":"bus"
        }]
   }

**Command Response**

.. code-block:: json

   {
        "mType":"rSMsg",
        "type":"CommandResponse",
        "mId":"092418fe-e79a-44f7-91b2-13413bab7910",
        "ntsOId":"KK+AG9998=001TC000",
        "xNId":"",
        "cId":"KK+AG9998=001TC000",
        "cTS":"2021-12-13T11:44:45.461Z",
        "rvs":[{
                "cCI":"M0022",
                "n":"requestId",
                "v":"f90c",
                "age":"recent"
        },{
                "cCI":"M0022",
                "n":"connectionId",
                "v":"5",
                "age":"recent"
        },{
                "cCI":"M0022",
                "n":"type",
                "v":"new",
                "age":"recent"
        },{
                "cCI":"M0022",
                "n":"vehicleType",
                "v":"bus",
                "age":"recent"
        }]
   }

M0023 Set timeout for dynamic bands
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   
**Command Request**

.. code-block:: json

   {
        "mType":"rSMsg",
        "type":"CommandRequest",
        "mId":"0052a94b-3678-483e-9ee8-4e4f52771051",
        "ntsOId":"KK+AG9998=001TC000",
        "xNId":"",
        "cId":"KK+AG9998=001TC000",
        "arg":[{
                "cCI":"M0023",
                "n":"securityCode",
                "cO":"setTimeout",
                "v":"0000"
        },{
                "cCI":"M0023",
                "n":"status",
                "cO":"setTimeout",
                "v":"30"
        }]
   }

**Command Response**

.. code-block:: json

   {
        "mType":"rSMsg",
        "type":"CommandResponse",
        "mId":"20615c0c-d9d0-412e-836a-749c85cb5d13",
        "ntsOId":"KK+AG9998=001TC000",
        "xNId":"",
        "cId":"KK+AG9998=001TC000",
        "cTS":"2021-12-13T11:57:21.586Z",
        "rvs":[{
                "cCI":"M0023",
                "n":"securityCode",
                "v":"0000",
                "age":"recent"
        },{
                "cCI":"M0023",
                "n":"status",
                "v":"30",
                "age":"recent"
        }]
   }

M0103 Set security code
~~~~~~~~~~~~~~~~~~~~~~~
   
**Command Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandRequest",
   	"mId":"1b1d9227-d566-4ff2-8bbb-c3f18f9ac846",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"arg":[{
   		"cCI":"M0103",
   		"n":"status",
   		"cO":"setSecurityCode",
   		"v":"Level1"
   	},{
   		"cCI":"M0103",
   		"n":"oldSecurityCode",
   		"cO":"setSecurityCode",
   		"v":"0000"
   	},{
   		"cCI":"M0103",
   		"n":"newSecurityCode",
   		"cO":"setSecurityCode",
   		"v":"5678"
   	}]
   }

   
**Command Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandResponse",
   	"mId":"605c1029-a948-45e7-a98a-11e83cbcc41a",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"cTS":"2019-09-30T13:34:54.635Z",
   	"rvs":[{
   		"cCI":"M0103",
   		"n":"status",
   		"v":"Level1",
   		"age":"recent"
   	},{
   		"cCI":"M0103",
   		"n":"oldSecurityCode",
   		"v":"0000",
   		"age":"recent"
   	},{
   		"cCI":"M0103",
   		"n":"newSecurityCode",
   		"v":"0000",
   		"age":"recent"
   	}]
   }

   
M0104 Set clock
~~~~~~~~~~~~~~~
   
**Command Request**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandRequest",
   	"mId":"c9584b41-e2ad-4eb4-bca4-c3847af4e78d",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"arg":[{
   		"cCI":"M0104",
   		"n":"securityCode",
   		"cO":"setDate",
   		"v":"0000"
   	},{
   		"cCI":"M0104",
   		"n":"year",
   		"cO":"setDate",
   		"v":"2019"
   	},{
   		"cCI":"M0104",
   		"n":"month",
   		"cO":"setDate",
   		"v":"09"
   	},{
   		"cCI":"M0104",
   		"n":"day",
   		"cO":"setDate",
   		"v":"30"
   	},{
   		"cCI":"M0104",
   		"n":"hour",
   		"cO":"setDate",
   		"v":"11"
   	},{
   		"cCI":"M0104",
   		"n":"minute",
   		"cO":"setDate",
   		"v":"30"
   	},{
   		"cCI":"M0104",
   		"n":"second",
   		"cO":"setDate",
   		"v":"34"
   	}]
   }

   
**Command Response**

.. code-block:: json

   {
   	"mType":"rSMsg",
   	"type":"CommandResponse",
   	"mId":"a37bd105-4f01-4e16-aaa9-7922c6732337",
   	"ntsOId":"KK+AG0503=001TC000",
   	"xNId":"",
   	"cId":"KK+AG0503=001TC000",
   	"cTS":"2019-09-30T13:40:56.551Z",
   	"rvs":[{
   		"cCI":"M0104",
   		"n":"securityCode",
   		"v":"0000",
   		"age":"recent"
   	},{
   		"cCI":"M0104",
   		"n":"year",
   		"v":"2019",
   		"age":"recent"
   	},{
   		"cCI":"M0104",
   		"n":"month",
   		"v":"09",
   		"age":"recent"
   	},{
   		"cCI":"M0104",
   		"n":"day",
   		"v":"30",
   		"age":"recent"
   	},{
   		"cCI":"M0104",
   		"n":"hour",
   		"v":"11",
   		"age":"recent"
   	},{
   		"cCI":"M0104",
   		"n":"minute",
   		"v":"30",
   		"age":"recent"
   	},{
   		"cCI":"M0104",
   		"n":"second",
   		"v":"34",
   		"age":"recent"
   	}]
   }
