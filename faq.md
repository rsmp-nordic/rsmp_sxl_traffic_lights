FAQ
===

1, CommandResponse
------------------
Q: What is the purpose of the CommandResponse? Is it supposed to return the
values that we set with the CommandRequest? As a kind of echo? Or should it
return the current state of the variables, before the CommandRequest takes
place?

A: The purpose of CommandResponse is to return the values that are set with
CommandRequest. This provides a method to verify that the value was actually
set. For instance; it might have been impossible to set the value for some
reason (value was currently read-only, value out of range, etc.).

For some types of commands; it might take some time to actually execute the
command. (E.g. M0002 setPlan). In these cases; CommandResponse should send the
value that are going to be set. This is the way to tell that the command was
understood and are currently being executed. If however; the command ultimately
failed and the value reverted back to it's previous value – this must later be
checked separately using the corresponding status message (e.g. S0014 current
plan). (And if a error occurred; an alarm should be set)

However; if there is an error on the protocol level; Simply responding with
MessageNotAck is preferred.
(e.g. RSMP: Incorrect JSON-format, RSMP: commandCodeId not found in SUL)

2, CommandResponse
------------------
Q: Does a CommandRequest return both a CommandResponse and a MessageAck?
Or is the CommandResponse sent instead of the MessageAck?

A: A successful CommandRequest returns both a MessageAck and a CommandResponse.
