Security codes
==============
The SXL for traffic light controllers defines two security-code levels. The
description of each command states whether security code 1 or security code 2
is required.

Purpose and behaviour
---------------------

A security code is a shared application-level value. When a command requires a
security code, the supervision system includes the configured value in the
``securityCode`` argument. The traffic light controller compares it with the
configured code for the required level before executing the command.

Security codes provide a limited command-authorization check. They are carried
inside RSMP messages and do not encrypt or cryptographically authenticate those
messages. They do not provide confidentiality, message integrity, peer
authentication, or replay protection. Anyone who can obtain a valid code and
send commands to the traffic light controller may be able to use it.

Security codes must therefore be treated as credentials and protected in
configuration, communication, logs, and backups. They are not a replacement
for communication protection, network access control, or authorization in the
complete deployment.

Incorrect security codes
------------------------

If a security code does not match the configured code for the required level,
the traffic light controller replies with ``MessageNotAck`` where ``rea`` is
set to ``Incorrect security code``.
