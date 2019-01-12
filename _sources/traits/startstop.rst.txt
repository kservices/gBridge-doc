Start and Stop
=================

The trait "Start and Stop" allows you to start and stop devices or a running cycle of it.

Fitting device types
-------------------------
These device types could be combined well with this trait:

* Dishwashers
* Dryers
* Sprinklers
* Vacuums
* Washer

Action topics
---------------

.. sidebar:: Example

    *Hey Google, start {device name}*

    :code:`gBridge/ux/dy/startstop`: :code:`1`

The gBridge service publishes either :code:`0` (device should be stopped) or :code:`1` (device should be started) when you say a voice command.

.. raw:: html

    <br><br><br><br><br><br><br>


Status topics
---------------

.. sidebar:: Example

    :code:`gBridge/ux/dy/startstop/set`: :code:`STOP`

    *Hey Google, is {device name} running?*: *{Device name} is stopped.*

Your application should publish the current device state to the status topic everytime the device is started/ stopped.
Data from the status topic is cached and used to response to questions about the device state from Google.

You may publish these values on the status topic:

* One of :code:`0`, :code:`off`, :code:`stop` means the device is stopped.
* One of :code:`1`, :code:`on`, :code:`start` means the device is started.

These values are case-insensitive.