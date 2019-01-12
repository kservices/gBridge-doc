Open and Close
=================

The trait "Open and Close" allows you to open devices to a certain percentage.

.. NOTE::
    This trait is currently not officially supported by Google, but seems to work in most languages.

    This implementation might break anytime, but we are going to fix it then as soon as possible.

Fitting device types
-------------------------
These device types could be combined well with this trait:

* Doors
* Blinds
* Shutters

Action topics
---------------

.. sidebar:: Example

    *Hey Google, close {device name}*

    :code:`gBridge/ux/dy/openclose`: :code:`0`

The gBridge service publishes an integer value inbetween :code:`0` and :code:`100` (inclusive). 0 represent the device being fully closed, 100 means fully open.

.. raw:: html

    <br><br><br><br><br><br><br>


Status topics
---------------

.. sidebar:: Example

    :code:`gBridge/ux/dy/openclose/set`: :code:`100`

    *Hey Google, is {device name} opened?*: *{Device name} is opened.*

Your application should publish the current device state to the status topic everytime it is opened/ closed.
Data from the status topic is cached and used to response to questions about the device state from Google.

You may publish any integer value inbetween :code:`0` and :code:`100` (inclusive). If your device only supports finite states (totally opened or totally closed), you can report only 0 and 100.

Other commands
----------------

* Open {device name} half-way
* Open/ close {device name}
* Open {device name} to 42%
* Is {device name} opened?