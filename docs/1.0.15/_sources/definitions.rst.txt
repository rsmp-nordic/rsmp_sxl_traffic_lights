Definitions
-----------

The following definitions is provided as information for use in RSMP and
may be simplified from their original meanings.

RSMP Nordic takes no responsibility for the correctness of the definitions.

.. glossary::

   Red rest
      The signal group has no green demand.

   Red rest without start order
      The signal group isn't allowed to demand green (green demand held back)
      without a start order.

   Red rest with privilege measurement
      The signal group has no green demand but can turn green when other
      signal groups in the same phase are turning green (signal group status
      G/0) or are green (signal groups status 1/2/3/4/5). A green demand which
      arrives late when other signal groups are green according to the above,
      results in a change to green.

   Red with reservation
      The signal group is red due to other priority.

   Red with request
      The signal group waits for signal group status 1/2/3/4/5 of conflicting
      signal groups to end.

   Red with start in own stage
      The signal group waits for signal group status 6/7/8/9/N/O/P of
      conflicting signal groups to end.

   Minimum green
      The shortest time which can be shown green for each respective signal
      group, this time can´t be shortened.

   Max. minimum green
      The signal groups status ”minimum green” should be able to be extended
      with a traffic controlled variable part up to a maximum “Max.
      minimum-green”. If one or multiple detector logics are programmed to
      extend signal group status “Max. minimum-green”, then the detector
      logics will extend the minimum green time if they are active during red
      signal picture. Signal group status “Max. minimum-green” should
      optionally be able to be shortened or not at prioritization.

   Maximum green (extension)
      The signal group should be able to extend its showing of green through
      extension, e.g. from detector logics. When the signal group has green
      demand and status minimum green has ended, the signal group should
      continue its display of  green in status maximum green. Maximum green
      should be measured in parallel with minimum green up to a maximum
      “maximum green”. Signal group status “maximum green” should optionally
      be able to be shortened or not at prioritization.

   Green rest
      A signal group continues its display of green due to one or multiple
      signal group/s in the same traffic pattern has more demand for green
      (signal group status 1/2/3), The signal group has no conflict. It waits
      to be changed, by the rest mode.

   Green passive
      A signal group continues its display of green due to other signal groups
      in the same traffic pattern has more demand for green (signal group
      status 1/2/3). The signal group has conflict. It waits to change, by
      conflicting signal group(s).

   Fixed past-end-green
      When the signal group is ordered to change to red it should be able to
      continue to be green with a configurable fixed time.

   Extra green according to intergreen times
      Signal groups remains green if possible, according to the conflicting
      signal groups

   Variable past-end-green
      When the signal group is ordered to change to  red it should be able to
      continue to be green during a traffic controlled variable time
      (O function). Signal group status “Past end green” should optionally be
      shortened or not at prioritization.

   Variable yellow or yellow green
      Signal group status ”fixed yellow” can be extended with a traffic
      controlled variable part “Variable yellow”, the signal group status is
      usually extended by detector logics. (V function).

   Variable red
      The fixed red time/intergreen time should be able to be extended with a
      traffic controlled variable part. It is usually measured in parallel
      with the fixed time whereby it must be longer to have any effect.
      (R function)

