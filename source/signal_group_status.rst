.. _signal-group-status:

Signal Group status
===================

Signal groups status (S0001) is defined as a text string where each character represents the current status for each signal group.
Each character has the following definition:

.. tabularcolumns:: |\Yl{0.10}|\Yl{0.35}|\Yl{0.25}|\Yl{0.15}|

.. table:: Signal group status

   ===== ================================================= ================================== =============
   ASCII Definition                                        Output                             Green request
   ===== ================================================= ================================== =============
   a     Disabled                                          Dark
   b     Manual control to dark                            Dark
   c     Manual control to flashing yellow                 Yellow flash
   d     Manual control to flashing red                    Red flash
   e     :term:`Start-up interval` 1                       Dark or yellow flash
   f     :term:`Start-up interval` 2                       Vehicles: yellow, Pedestrians: red
   g     :term:`Start-up interval` 3                       Red
   h     Manual control to red                             Red
   A     :term:`Red rest without start order`              Red                                N
   B     :term:`Red rest`                                  Red                                N
   C     :term:`Red rest with privilege measurement`       Red                                N
   D     :term:`Red with reservation`                      Red                                Y/N
   E     Red with request and without start order          Red                                Y
   F     :term:`Red with request`                          Red                                Y
   G     :term:`Red with start in own stage`               Red                                Y
   0     Red-yellow                                        Red/Yellow                         Y
   1     :term:`Minimum green`                             Green                              Y
   2     :term:`Max. minimum green`                        Green                              Y/N
   3     :term:`Maximum green (extension)`                 Green                              Y
   4     :term:`Green rest`                                Green                              N
   5     :term:`Green passive`                             Green                              N
   6     :term:`Fixed past-end-green`                      Green                              Y/N
   7     :term:`Extra green according to intergreen times` Green                              Y/N
   8     :term:`Variable past-end-green`                   Green                              Y
   9     Flashing green                                    Green                              Y/N
   N     Fixed yellow or yellow-green                      Yellow                             Y/N
   O     :term:`Variable yellow or yellow green`           Yellow                             Y
   P     :term:`Variable red`                              Red                                Y
   ===== ================================================= ================================== =============

