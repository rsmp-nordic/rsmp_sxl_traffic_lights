Definitions
-----------

The following definitions is provided as information for use in RSMP and
may be simplified from their original meanings.

RSMP Nordic takes no responsibility for the correctness of the definitions.

The corresponding ASCII character used for signal group status (S0001) is written first in parentheses.

.. glossary::

   Red rest
      (``B``) The signal group has no green demand.

   Red rest without start order
      (``A``) The signal group is prevented to switch to green due to missing start order

   Red rest with privilege measurement
      (``C``) The signal group has no green demand but can turn green when other
      signal groups in the same phase are turning green (signal group status
      ``G``/``0``) or are green (signal groups status ``1``/``2``/``3``/``4``/``5``).
      A green demand which arrives late when other signal groups are green according
      to the above, results in a change to green.

   Red with reservation
      (``D``) The signal group is red due to other priority.

   Red with request
      (``F``) The signal group waits for signal group status ``1``/``2``/``3``/``4``/``5``
      of conflicting signal groups to end.

   Red with start in own stage
      (``G``) The signal group waits for signal group status ``6``/``7``/``8``/``9``/``N``/``O``/``P`` of
      conflicting signal groups to end.

   Minimum green
      (``1``) The shortest time which can be shown green for each respective signal
      group, this time can´t be shortened.

   Max. minimum green
      (``2``) The signal group status :term:`Minimum green` should be able to
      be extended with a traffic controlled variable part up to a maximum
      “Max. minimum-green”. If one or multiple detector logics are programmed
      to extend signal group status “Max. minimum-green”, then the detector
      logics will extend the minimum green time if they are active when the
      signal group is red. Signal group status “Max. minimum-green” should
      optionally be able to be shortened or not at prioritization.

   Maximum green (extension)
      (``3``) The signal group should be able to extend its showing of green through
      extension, e.g. from detector logics. When the signal group has green
      demand and status minimum green has ended, the signal group should
      continue its display of  green in status maximum green. Maximum green
      should be measured in parallel with minimum green up to a maximum
      “maximum green”. Signal group status “maximum green” should optionally
      be able to be shortened or not at prioritization.

   Green rest
      (``4``) A signal group continues its display of green due to one or multiple
      signal group/s in the same traffic pattern has more demand for green
      (signal group status ``1``/``2``/``3``), The signal group has no conflict.
      It waits to be changed, by the rest mode.

   Green passive
      (``5``) A signal group continues its display of green due to other signal groups
      in the same traffic pattern has more demand for green (signal group
      status 1/2/3). The signal group has conflict. It waits to change, by
      conflicting signal group(s).

   Fixed past-end-green
      (``6``) When the signal group is ordered to change to red it should be able to
      continue to be green with a configurable fixed time.

   Extra green according to intergreen times
      (``7``) Signal groups remains green if possible, according to the conflicting
      signal groups

   Variable past-end-green
      (``8``) When the signal group is ordered to change to  red it should be able to
      continue to be green during a traffic controlled variable time
      (O function in LHOVRA). Signal group status “Past end green” should optionally be
      shortened or not at prioritization.

   Variable yellow or yellow green
      (``O``) Signal group status ”fixed yellow” can be extended with a traffic
      controlled variable part “Variable yellow”, the signal group status is
      usually extended by detector logics. (V function in LHOVRA).

   Variable red
      (``P``) The fixed red time/intergreen time should be able to be extended with a
      traffic controlled variable part. It is usually measured in parallel
      with the fixed time whereby it must be longer to have any effect.
      (R function)

   Start-up interval
     The controller always starts with a start-up sequence for the signal groups before using normal 3-light control.
     The general definition of the signal group status for each interval can be found in the :ref:`signal-group-status`,
     but the exact definition depends on national regulations, including the duration of each interval of the sequence.
