Signal Group status
===================

Signal groups status (S0001) is defined as a text string where each character represents the current status for each signal group.
Each character has the following definition:

.. figtable::
   :nofig:
   :label: table-signal-group-status
   :caption: Signal group status
   :loc: H
   :spec: >{\raggedright\arraybackslash}p{0.05\linewidth} p{0.35\linewidth} p{0.35\linewidth} p{0.10\linewidth}

   ===== ================================================= ================================== =============
   ASCII Definition                                        Output                             Green request
   ===== ================================================= ================================== =============
   a     Disabled                                          Dark
   b     Manual control to dark                            Dark
   c     Manual control to flashing yellow                 Yellow flash
   d     Manual control to flashing red                    Red flash
   e     Start-up interval 1                               Dark or yellow flash
   f     Start-up interval 2                               Vehicles: yellow, Pedestrians: red
   g     Start-up interval 3                               Red
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

