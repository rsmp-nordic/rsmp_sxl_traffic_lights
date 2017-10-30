FAQ
===

1, CommandResponse and verifing executed commands
-------------------------------------------------
Q: What is the purpose of the CommandResponse? Is it supposed to return the
values that we set with the CommandRequest? As a kind of echo? Or should it
return the current state of the variables, before the CommandRequest takes
place?

A: The CommandResponse is sent when the command has been accepted by the traffic
controller. The CommandResponse contains the same values of the CommandRequest
if the command was successful. If they are not the same values then the command
have failed.

(If the security code is incorrect it returns a blank value, otherwise the
CommandResponse would reveal the correct value)

There are many cases with TLC's where it not possible to immediately know if the
command will actually be executed or not. E.g. changing of a time plan can take
a long time and the command can be interrupted by other events of the TLC. The
TLC may have accepted the command but immediately changes status again due to
other circumstances, such as other local control, programming according to the
clock, etc. It depends on the implementation of the traffic controller.

If the RSMP command should "force" the command or not (have the highest
priority) depends on the configuration of the traffic controller.

To be sure that a command really has been executed the supervision system needs
to:
1, Watch the ACK/NACK. Was the command received and correctly formatted?
2, Watch the CommandReponse. Was the command accepted by the traffic controller?
3, Watch the corresponding statuses. Is the command actually executed (and
   remains active) within the expected time period?

2, CommandResponse and MessageAck
---------------------------------
Q: Does a CommandRequest return both a CommandResponse and a MessageAck?
Or is the CommandResponse sent instead of the MessageAck?

A: The traffic controller answers with both an ACK/NACK as well as an
CommandResponse.

The NACK message is sent when there is an error on a protocol level, e.g.
incorrect JSon-format, command not found, etc. This message can be sent more or
less immediately after receiving the CommandRequest.

