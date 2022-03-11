Multiple supervisors
====================

If RSMP version 3.2 or later is used then the TLC needs to support multiple supervisors
according to section `4.3.1 Multiple supervisors`_ in the RSMP specification.

The TLC needs to support at least three (3) RSMP connections to different
supervision systems simultaneously and handle concurrent communication with all of them.

For example, a traffic light controller might connect to both a traffic
management system and a bus priority system. Or it might connect to both a
traffic management system and a secondary monitoring system.

.. _4.3.1 Multiple supervisors: https://rsmp-nordic.org/rsmp_specifications/core/3.2-draft/applicability/transport_of_data.html#multiple-supervisors
