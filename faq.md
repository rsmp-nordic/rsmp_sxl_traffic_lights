FAQ
===

Contens
-------
+ [Conditions for aggregated status bit 2 and bit 8](#1)
+ [Statuses with 'intersection'](#2)
+ [Command with 'intersection'](#3)

<a id="1"></a>
Conditions for aggregated status bit 2 and bit 8
------------------------------------------------

Q: Under which conditions would a TLC transmit an aggregated status where bit 2
is set to true *(No Communications)* or bit 8 *(The supervision system is not
connected to the supervision system)*?

A: The purpose of aggregated status is to give a basic overview of the status
of a site from the perspective of the supervision system. The 8 status bits are
generically designed to fit all technical areas for road side equipment and they
are not unique to RSMP.

It is true that the RSMP specification doesn't really explain this which bits
are possible to send and which aren't, but it can theoretically differ depending
of technical area and implementation of TLC.

<a id="2"></a>
Statuses with 'intersection'
----------------------------

Q: S0007-S0013 and S0020 contain the return value 'intersection'.
How does this argument work?

A: 'intersection' contain the individual intersections of the TLC returned
as a comma separated list, e.g. "1,2,3". This applies to the corresponding
'status' as well, e.g. "True,True,False".

E.g. if a Traffic light controller is controlling two intersections and both of
the intersections are using fixed time control the following is returned for
S0009: intersection="1,2", status="True,True".

The TLC may also return intersection='0', where '0' simply means all
intersections of the TLC.

This principle applies for all statuses where 'intersection' is used:
S0007, S0008, S0009 S0010, S0011, S0012, S0013 and S0020.

Using comma separated lists is not a perfect solution, but it is the way it is
solved in the current version of the SXL. A better solution is would be to use
'intersection' as object type in a future version of the SXL.

<a id="3"></a>
Command with 'intersection'
---------------------------

Q: The M0001 command contain the argument 'intersection'. How does this command
work?

A: The 'intersection' argument means which individual intersections the command
applies to. 'intersection' contain a comma separated list e.g. "1,2,3" of all
intersections. Just like the corresponding statuses which uses
'intersection', the 'status' also needs to be a comma separated list, e.g.
M0001: intersection="1,2", status="True,True".

The value of intersection='0' means it applies for all intersections.

Please note that not all TLC supports any other value than intersection='0'.

