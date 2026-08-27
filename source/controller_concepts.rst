.. _controller-concepts:

Traffic light controller concepts
=================================

Purpose
-------

Traffic signal terminology can vary between countries,
authorities, and manufacturers. This page defines a shared model and vocabulary.

Conceptual model
----------------

A traffic light controller controls one or more physical intersections. It
uses a selected time plan during normal control to operate signal groups. Each
signal group represents one or more physical signal heads that the controller
operates together. The controller can also interpret inputs from physical
detectors through configured detector logic.

The Signal Exchange List (SXL) defines the component types and messages that
external systems use to monitor and control the TLC. For example, they can
request a functional position, select a time plan, adjust exposed timing
parameters, and monitor statuses and alarms.

The overall relationship is:

.. code-block:: text

   physical detectors -> detector logic --+
                                           |
   selected time plan ---------------------+--> controller programming
                                           |             |
   external selections and requests -------+             | requested changes
                                                         v
                                                   safety functions
                                                         |
                                                         v
                                                   signal groups
                                                         |
                                                         v
                                                   signal heads

Conceptual foundations
----------------------

The model relies on several distinctions that can otherwise be easy to miss:

* A controller and an intersection are different scopes. One TLC can control
  several intersections, and some controller functions can apply either to one
  intersection or to all of them.
* Physical equipment and logical components are different views. Several
  signal heads can form one signal group, and several physical detector inputs
  can be combined into one detector logic.
* Configuration and live operation are different. Signal-group mappings,
  detector logic, time plans, schedules, identifiers, and safety rules are
  configured before they are used. An identifier or plan number has no
  universal physical meaning outside that configuration.
* Detection, demand, request, and controller action are different steps. A
  detector observation can be interpreted as demand, demand can result in a
  request, and controller programming decides whether and when green can start
  or be extended. An active detector therefore does not imply an immediate
  green signal.
* A selected or requested value is not necessarily the currently observed
  state. A selected time plan, requested functional position, observed control
  mode, and current signal-group status describe different aspects of
  operation.
* Safety functions constrain all control decisions. Time plans, local demand,
  and external requests cannot bypass conflicts, intergreen times, or other
  configured safety rules.

The SXL exposes selected aspects of this model for monitoring and control, but
it does not standardize the controller's internal programming language,
actuation method, or adaptive strategy.

Terminology
-----------

The following definitions describe the terms used in this conceptual model.

Controller scope
^^^^^^^^^^^^^^^^

``Traffic light controller`` (TLC)
   The system that controls signal groups for one or more intersections. It
   contains the local programming and safety functions and remains responsible
   for safe signal operation. A TLC may be one physical device or a set of
   cooperating functions; SXL does not prescribe its construction.

``Component``
   An addressable physical or logical entity exposed through the SXL. This SXL
   defines Traffic Light Controller, Signal group, and Detector logic component
   types. Controller-level functions concern a Traffic Light Controller
   component, while signal groups and detector logics can be addressed
   individually. Component boundaries describe the interface and need not
   reveal how the equipment is physically packaged.

Intersections, signals, and detection
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

``Intersection``
   The physical road area where movements cross, merge, or separate and are
   controlled by traffic signals. When a controller serves several
   intersections, some controller-level operations can apply to one intersection
   or to all of them.

``Movement``
   A path taken by a class of road user through the controlled area, for
   example vehicles turning left or pedestrians crossing a road. Signal
   priority uses this term for the traffic stream to prioritize. A movement is
   not an SXL component and has no general movement identifier. It is instead
   referenced indirectly using identifiers configured for the relevant
   function.

``Signal head``
   A physical assembly of lights that displays signals to road users. Several
   signal heads may be controlled together as one signal group.

``Signal group``
   One or more signal heads operated as one logical unit by the controller. A
   signal group normally serves one movement or a set of compatible movements.
   It is the fundamental individually addressable signal-output component in
   this SXL. SXL reports the state of the group rather than the state of every
   lamp or signal head.

``Signal group status``
   The current state of a signal group as reported by the TLC. It is more
   detailed than the displayed color: it can distinguish, for example,
   different red or green states used internally by the controller. It is an
   observed state, not a command or a requested state.

``Detector``
   A physical sensor or another source of observations about traffic or road
   users. Examples include inductive loops, push-buttons, radar, and video
   detection.

``Detector logic``
   The controller's logical interpretation of one or more detector inputs. It
   may represent presence, passage, a fault-filtered state, or a configured
   combination of inputs. The controller's programming determines whether an
   active detector logic creates demand; detector logic does not inherently
   request green. Detector logic is an addressable SXL component, while a
   physical detector is not necessarily a separate component.

Control and safety
^^^^^^^^^^^^^^^^^^

``Controller programming``
   The locally configured functions that interpret detector logic, recognize
   demand, apply time plans, and determine signal group changes. SXL exposes
   inputs, selections, and results but does not define this programming.

``Demand``
   A need for green recognized by the controller. Demand can come from detector
   logic or another configured function. When a signal group is red, recognized
   demand may produce a request to start green. When it is green, demand may
   produce a request to extend green within configured limits. Demand does not
   by itself grant or extend green.

``Request``
   An expression that a service is being sought. In normal signal control,
   recognized demand may produce a signal-group request to start or continue
   green. A priority request may instead arrive from an external system. The
   controller can delay or reject a request according to its programming and
   safety rules.

``Safety functions``
   The controller functions that enforce safe combinations and transitions of
   signal group states. They remain active when the controller handles local
   demand or an external request.

``Conflict``
   A combination of movements that must not be permitted to proceed at the same
   time. Controllers use configured safety rules, such as a conflict or safety
   matrix, to prevent such combinations.

``Intergreen``
   A safety interval between the end of permission to proceed for one signal
   group and the start of permission for a conflicting signal group. National
   rules may divide this interval into more detailed periods.

Plans and schedules
^^^^^^^^^^^^^^^^^^^

``Time plan``
   A numbered, selectable controller plan containing predefined signal
   timings. It can define sequence, cycle time, coordination behavior, and
   other timing settings. The controller may extend or otherwise adapt these
   fixed timings using locally configured functions; SXL does not define those
   functions.

``Time table``
   A local schedule that selects time plans at configured times of day. A time
   table is not a time plan: the table says *when to select*, while the plan
   says *what operation to select*.

``Week table``
   A local weekly schedule that selects which time table applies on each day.
   Together, week and time tables allow the TLC to make scheduled selections
   using its own calendar and clock.

``Traffic situation``
   A higher-level description of conditions that can should affect operation,
   such as traffic volumme, events or emergency situations.
   A traffic situation may cause different controllers to select
   different time plan.

An external system can request a particular time plan or return selection to
the controller's own programming. 

Timing and control
^^^^^^^^^^^^^^^^^^

``Cycle``
   One repetition of the cyclic signal sequence defined by the selected time
   plan. Locally configured actuation may vary the timing from one cycle to the
   next.

``Cycle time``
   The duration of a cycle. In coordinated control it also defines the range
   of the cycle counter before the counter wraps.

``Cycle counter`` and ``base cycle counter``
   Time positions used for coordination. The base cycle counter provides the
   common time reference. A controller can apply an offset to derive its local
   cycle counter and thereby shift its sequence relative to other controllers.

``Offset``
   A time displacement between the common coordination reference and a
   controller's local cycle position.

``Split``
   The allocation of green time within a cycle. The coordination guidance uses
   this term for the timing of signal groups. An external system can adjust the
   split indirectly by moving configured dynamic bands, but split is
   descriptive terminology, not a separately encoded value.

``Fixed-time control``
   Operation in which the controller follows the predefined timings without
   starting, extending, or shortening service in response to current detector
   demand.

``Traffic-actuated control``
   Controller operation in which detector demand is used to start service or
   extend green within the configured limits of the selected time plan.
   The controller programming decides how the demand is
   handled. The SXL does not define the actuation method.

``Adaptive control``
   Controller or external-system operation that adjusts signal timing in
   response to measured or predicted traffic conditions. An adaptive system
   may select or adjust fixed time plans, but the SXL defines only the
   exchanged commands and statuses, not the adaptive strategy.

Local operation
^^^^^^^^^^^^^^^

``Operator``
   A person authorized to inspect, configure, test, or control the TLC through
   a controller interface. An operator may use an operator panel or a web
   interface. An operator being logged in does not by itself mean that local or
   manual control is active.

``Operator panel``
   A human-machine interface at the controller used for local monitoring,
   configuration, testing, and control, typically during commissioning or
   maintenance. Existing SXL descriptions also use the term *operating panel*
   for this interface.

``Local mode``
   An operating condition in which control authority is held locally at the
   TLC, so external systems cannot control it. It is commonly used during
   on-site maintenance or testing. Local mode does not imply loss of
   communication and does not by itself state whether signal timing is being
   controlled manually or which functional position is active.

Position, mode, and source
^^^^^^^^^^^^^^^^^^^^^^^^^^

These concepts answer different questions and should not be treated as
synonyms:

``Functional position``
   A requested high-level operating position, such as normal control, yellow
   flash, or dark mode. It can apply to one intersection or to all intersections
   controlled by a TLC, so it is not necessarily one controller-wide state. It
   represents a requested position, not the observed control mode.

``Control mode``
   The current operational condition of an intersection, such as startup,
   normal control, or failure. It describes how the controller is operating,
   not which time plan is selected.

``Source``
   The immediate origin of a reported change, such as the controller's local
   schedule or an external command. Source describes the mechanism visible to
   the TLC, not the organizational reason for the change.

For example, normal operation may be requested as the functional position
while the controller is in normal control mode, a particular time plan is
selected, and each signal group has its own current status. These describe
different aspects of the controller.
