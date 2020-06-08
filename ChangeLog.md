# 1.0.15-draft (2020-10-30)

- Ability to force outputs [#36](https://github.com/rsmp-nordic/rsmp_sxl_traffic_lights/issues/36)
- Ability to change trigger level sensitivity for loop detectors [#39](https://github.com/rsmp-nordic/rsmp_sxl_traffic_lights/issues/39)
- Ability to read signal program version and checksum [#19](https://github.com/rsmp-nordic/rsmp_sxl_traffic_lights/issues/19)
- Door/cabinet alarm [#20](https://github.com/rsmp-nordic/rsmp_sxl_traffic_lights/issues/20)
- Change *ordinal*, *unit* and *scale* data types to *integer* or *string*
  This change is made to avoid assumptions of data types which may not be
  true. Needed to comply with RSMP 3.1.3 and later. [#23](https://github.com/rsmp-nordic/rsmp_sxl_traffic_lights/issues/23)

The following commands/statuses/alarms has been added:
- M0020 Force output
- S0030 Forced output status
- M0021 Set trigger level sensitivity for loop detector
- S0031 Trigger level sensitivity for loop detector
- S0097 Signal Program Version
- A0010 Door alarm

The full list can be [shown here](https://github.com/rsmp-nordic/rsmp_sxl_traffic_lights/issues?q=is%3Aissue+milestone%3A1.0.15).

# 1.0.14 (2017-10-30)

Improved traffic counting (S0205-S0208)

The old traffic data statuses, S0201-S0204, may cause excessive amount of
network traffic if subscriptions are established for each detector logic. The
new traffic data statuses contains data from all detector logics in the same
status message.

# 1.0.13 (2017-06-26)

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

# 1.0.11-1.0.12 (draft)

Not released. Improved traffic counting. Moved to separate branch
"improved_traffic_counting".

# 1.0.10 (2013-09-24)

Extensions for coordination support

- M0013 Fix separator between command chunks


# 1.0.9 (2013-10-07)

Extensions for coordination support

- M0012 The object type  was incorrectly set to "Signal group". It should have
  been "Traffic light controller"

# 1.0.8 (2013-09-24)

Extensions for coordination support. Adds commands/statuses needed for
coordination between TLCs

- M0012 Activate/Deactivate many inputs
- M0013 Request many signals groups to green/red

# 1.0.7 (2012-10-04)

- Used for traffic light controllers from 2012.

# 1.0.6 (2012-02-29)

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
  
# 1.0.5 (2011-11-11)

- Adjustments to RSMP 3.0
- Since event messages are removed from the RSMP spec, the following
  event messages are now status messages:
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
  - MA102 Activate sending of event message. Removed.
    Not needed as separate as separate message in RSMP 3.0
  - MA201 Change watchdog setting
    Not needed as separate as separate message in RSMP 3.0
- Adjustment of numbering and definitions based on the STA's standards.
  This means transition to alarms-, status- and commands according to
  "Ayyyy", "Syyyy" and "Myyyy", where "yyyy" is number in consecutive order
- Data types adjusted. "Number" is replaced with proper data types,
  integer, long and real.
  The following command and statuses are affected:
  M0104, S0001, S0013, S0016, S0017, S0018, S0019, S0096, S0201, S0204

# 1.0.4 (2001-10-26)

- AL301 and AL302. Manually controlled detector logic added
- AL302: Intermittent logic error instead of other logic error
