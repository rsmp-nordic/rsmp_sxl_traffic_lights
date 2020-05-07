Appendix - definition of signal groups status
=============================================

Signal groups status (S0001) is defined as a text string where each character represents the current status for each signal group.
Each character has the following definition:

| ASCII | Definition                                | Output                | Green req. | Description |
|-------|-------------------------------------------|-----------------------|------------|-------------|
| a     | disabled                                  | Dark                  | -          |             |
| b     | manual control to dark                    | Dark                  | -          |             |
| c     | manual control to flashing yellow         | Yellow flash          | -          |             |
| d     | manual control to flashing red            | Red flash             | -          |             |
| e     | start-up interval 1                       | Dark or yellow flash  | -          |             |
| f     | start-up interval 2                       | Veh: yellow, Ped: red | -          |             |
| g     | start-up interval 3                       | Red                   | -          |             |
| h     | manual control to red                     | Red                   | -          |             |
| A     | red rest without start order              | Red                   | N          | The signal group isn't allowed to demand green (green demand held back) without a start order. |
| B     | red rest                                  | Red                   | N          | The signal group has no green demand. |
| C     | red rest with privilege measurement       | Red                   | N          | The signal group has no green demand but can turn green when other signal groups in the same phase are turning green (signal group status G/0) or are green (signal groups status 1/2/3/4/5). A green demand which arrives late when other signal groups are green according to the above, results in a change to green. |
| D     | red with reservation                      | Red                   | Y/N        | The signal group is red due to other priority. |
| E     | red with request and without start order  | Red                   | Y          |             |
| F     | red with request                          | Red                   | Y          | The signal group waits for signal group status 1/2/3/4/5 of conflicting signal groups to end. |
| G     | Red with start in own stage               | Red                   | Y          | The signal group waits for signal group status 6/7/8/9/N/O/P of conflicting signal groups to end. |
| 0     | red-yellow                                | Red/Yellow            | Y          |             |
| 1     | minimum green                             | Green                 | Y          | The shortest time which can be shown for each respective signal group, this time can´t be shortened. |
| 2     | max. minimum green                        | Green                 | Y/N        | The signal groups status ”minimum green” should be able to be extended with a traffic controlled variable part up to a maximum “Max. minimum-green”. If one or multiple detector logics are programmed to extend signal group status “Max. minimum-green”, then the detector logics will extend the minimum green time if they are active during red signal picture. Signal group status “Max. minimum-green” should optionally be able to be shortened or not at prioritization.  |
| 3     | maximum green (extension)                 | Green                 | Y          | The signal group should be able to extend its showing of green through extension, e.g. from detector logics. When the signal group has green demand and status minimum green has ended, the signal group should continue its display of green in status maximum green. Maximum green should be measured in parallel with minimum green up to a maximum “maximum green”. Signal group status “maximum green” should optionally be able to be shortened or not at prioritization  . |
| 4     | green rest                                | Green                 | N          | A signal group continues its display of green due to one or multiple signal group/s in the same traffic pattern has more demand for green (signal group status 1/2/3), The signal group has no conflict. It waits to be changed, by the rest mode. |
| 5     | green passive                             | Green                 | N          | A signal group continues its display of green due to other signal groups in the same traffic pattern has more demand for green (signal group status 1/2/3). The signal group has conflict. It waits to change, by conflicting signal group(s). |
| 6     | fixed past-end-green                      | Green                 | Y/N        | When the signal group is ordered to change to red it should be able to continue to be green with a configurable fixed time. |
| 7     | extra green according to intergreen times | Green                 | Y/N        | Signal groups remains green if possible, according to the conflicts signal groups. |
| 8     | variable past-end-green                   | Green                 | Y          | When the signal group is ordered to change to red it should be able to continue to be green during a traffic controlled variable time (O function). Signal group status “Past end green” should optionally be shortened or not at prioritization. |
| 9     | flashing green                            | Green                 | Y/N        |             |
| N     | fixed yellow or yellow-green              | Yellow                | Y/N        |             |
| O     | variable yellow or yellow-green           | Yellow                | Y          | Signal group status ”fixed yellow” can be extended with a traffic controlled variable part “Variable yellow”, the signal group status is usually extended by detector logics. (V function). |
| P     | variable red                              | Red                   | Y          | The fixed red time/intergreen time should be able to be extended with a traffic controlled variable part. It is usually measured   in parallel with the fixed time whereby it must be longer to have any effect. (R function) |
