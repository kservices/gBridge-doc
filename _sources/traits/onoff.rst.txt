On and Off
=================

The trait "On and Off" allows you to, well, turn devices on or off (rather easy, isn't it?).

Fitting device types
-------------------------
These device types could be combined well with this trait:

* Air Conditioners
* Outlets
* Switches
* Lights
* Air Purifiers
* Dishwashers
* Dryers
* Fans
* Vacuums
* Washers

Action topics
---------------

.. sidebar:: Example

    *Hey Google, turn {device name} on*

    :code:`gBridge/ux/dy/onoff`: :code:`1`

The gBridge service publishes either :code:`0` (device should be turned off) or :code:`1` (device should be turned on) when you say a voice command.

.. raw:: html

    <br><br><br><br><br><br><br>


Status topics
---------------

.. sidebar:: Example

    :code:`gBridge/ux/dy/onoff/set`: :code:`FALSE`

    *Hey Google, is {device name} turned on?*: *{Device name} is off.*

Your application should publish the current device state to the status topic everytime the device is turned on or off.
Data from the status topic is cached and used to response to questions about the device state from Google.

You may publish these values on the status topic:

* One of :code:`0`, :code:`off`, :code:`false` means the device is off.
* One of :code:`1`, :code:`on`, :code:`true` means the device is turned on.

These values are case-insensitive.