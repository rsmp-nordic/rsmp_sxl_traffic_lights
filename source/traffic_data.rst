Traffic data
============

Traffic data (S0201-S0208) needs additional requirements in order to work
correctly.

- The supervision system uses **StatusSubscribe** and **StatusUpdate** to
  continuously receive traffic data from the TLC using subscriptions.

- **starttime** is the time stamp of start of measuring.
  E.g. if a subscription update is sent at 15:05 using a subscription update
  rate of 300 (5 minutes), **starttime** would be set to 15.00
  and **vehicles** (S0201) would contain the number of vehicles between
  15:00 and 15:05.

- Traffic counting must be made at even time intervals.
  For instance; if **updateRate=300** (every 5 minutes) is set at the
  status subscription, the traffic counter must start at 15:00:00,
  15:05:00, 15:10:00 and so on.

- No initial status update should be sent directly after receiving status
  subscription. Status updates should only be sent at even time intervals
  and not contain partial counting, e.g. 15:01-15:03 if updateRate=300

- The traffic counter must not reset its traffic counter after receiving
  a new subscription request. The traffic counter may only reset its
  traffic counter at even time intervals.
 
- Buffering of traffic data during connection interruptions should be
  possible to enable/disable in the equipment. If buffering is enabled it
  means that active subscriptions of traffic data (S0201-S0208) should remain
  active and not be canceled at connection interruption or at reestablishment.

- The traffic data must be buffered according to the time interval as
  determined by the status subscription if buffering is enabled.
