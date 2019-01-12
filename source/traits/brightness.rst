Brightness
=================

The trait "Brightness" allows you to control the brightness of a device in percent.

Fitting device types
-------------------------
These device types could be combined well with this trait:

* Lights (e.g. combined with "On and Off")

Action topics
---------------

.. sidebar:: Example

    *Hey Google, dim {device name} to 42%*

    :code:`gBridge/ux/dy/brightness`: :code:`42`

The gBridge service publishes the brightness as an integer number inbetween :code:`0` and :code:`100` (inclusive), representing the desired brightness in percent, when you say a voice command.

.. raw:: html

    <br><br><br><br><br><br><br>


Status topics
---------------

.. sidebar:: Example

    :code:`gBridge/ux/dy/brightness/set`: :code:`58`

    *Hey Google, how bright is {device name}?*: *{Device name} is set to 58%.*

Your application should publish the current device brightness to the status topic everytime it changes.
Data from the status topic is cached and used to response to questions about the device state from Google.

You may publish integer values inbetween :code:`0` and :code:`100`.

Other commands
----------------

* Turn on/ off {light name}
* Dim {light name}
* Brighten (the) {light name}
* Set {light name} to x %
* Brighten/ Dim {light name} by x %
* Turn on/ off lights in {room name}
* Is {light name} turned on?