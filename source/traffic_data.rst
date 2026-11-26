Traffic data
============

Traffic data (S0201-S0208) needs additional requirements in order to work
correctly.

Interval based subscription only
--------------------------------

- The supervision system uses **StatusSubscribe** and **StatusUpdate** to
  continuously receive traffic data from the TLC using subscriptions.

- sendOnChange (sOc) must be set to **false** and updateRate must not be
  set to "0".

- The use of **StatusRequest** and **StatusResponse** is not supported.

"Clean" time-points
-------------------

- Traffic counting must be measured during even time intervals.
  For instance; if **updateRate=300** (every 5 minutes) is set at the
  status subscription, the traffic counter must start at 15:00:00,
  15:05:00, 15:10:00.

- Traffic counting must not contain partial counting.
  E.g. It should not return the measurement for 15:03-15:05 if the
  updateRate is set to 300.

Value is reset on subscription interval
---------------------------------------

- **starttime** is the time stamp of start of measuring.
  E.g. if a subscription update is sent at 15:05 using a subscription update
  rate of 300 (5 minutes), **starttime** would be set to 15.00
  and **vehicles** (S0201) would contain the number of vehicles between
  15:00 and 15:05.

- The traffic counter must not reset its traffic counter after receiving
  a new subscription request.

- The traffic counter must only reset its traffic counter at even time
  intervals.

Buffering
---------
 
- Buffering of traffic data during connection interruptions should be
  possible to enable/disable in the equipment. If buffering is enabled it
  means that active subscriptions of traffic data (S0201-S0208) should remain
  active and not be canceled at connection interruption or at reestablishment.

- The traffic data must be buffered according to the time interval as
  determined by the status subscription if buffering is enabled.
