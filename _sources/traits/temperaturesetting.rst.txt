Temperature Setting
=====================

The trait "Temperature Setting" allows you to control features that are typical for thermostats.

Fitting device types
-------------------------
These device types could be combined well with this trait:

* Thermostats
* Air conditioners

Trait Settings
------------------
When editing a device that supports this trait, you can specify additional settings.

* You can specify one or more modes that are supported by your device: Off, Heating, Cooling, On, Automatic, Fan Only, Purifying, Energy Saving, Dry mode
* You can select whether your device is able to report the measured humidity.

Action topics
---------------

Action topic for mode
.........................
When you change the mode of the device, the gBridge services publishes one of the following strings that represents one of the modes you've selected your device to support: :code:`off`, :code:`heat`, :code:`cool`, :code:`on`, :code:`auto`, :code:`fan-only`, :code:`purifier`, :code:`eco`, :code:`dry`

**Example:** *Hey Google, Set the thermostat to automatic mode* -> :code:`gBridge/ux/dy/tempset-mode`: :code:`auto`

Action topic for temperature setpoint
..........................................
When you change the temperature setpoint of your device, the desired temperature setpoint value is published (unit: degrees celsius). It is formatted as a decimal number with exactly one decimal place, using the dot (:code:`.`) as the decimal separator.

**Example:** *Hey Google, Set the thermostat to 20 degrees* -> :code:`gBridge/ux/dy/tempset-setpoint`: :code:`20.0`


Status topics
---------------

In order for Google to respond properly to questions, you need to write values to the status topics for the setpoint, the ambient temperature and the humidity (if supported) that are different than 0 at least once.

Your smart home system should report the new thermostat data everytime some state changes.

Status topic for mode
.............................
Your application should publish the current mode of your thermostat. The valid values depend on the modes you've chosen for your device to be supported.

These values must be used to represent the modes: :code:`off`, :code:`heat`, :code:`cool`, :code:`on`, :code:`auto`, :code:`fan-only`, :code:`purifier`, :code:`eco`, :code:`dry` (case-insensitive)

**Example:** (assuming Fan-only is an enabled supported mode) :code:`gBridge/ux/dy/tempset-mode/set`: :code:`fan-only` ->  *Hey Google, what mode is the thermostat in? The thermostat is set to fan-only.* 

Status topic for temperature setpoint
...............................................
Your application should publish the temperature setpoint (in °C) of your thermostat. It must be formatted as a decimal number with one decimal place, using a dot as the decimal separator. Google will round this number to half a degree.

**Example:** :code:`gBridge/ux/dy/tempset-setpoint/set`: :code:`21.0` ->  *Hey Google, what is the thermostat set to? Heating is set to 21 degrees.* 

Status topic for ambient temperature
............................................
Your app should publish data once a change in the actual room temperature (in °C) is observed. It should be formatted like the value for the temperature setpoint.

**Example:** :code:`gBridge/ux/dy/tempset-ambient/set`: :code:`19.0` ->  *Hey Google, how warm is it in {room name}? Heating is set to 21, with a current temperature of 19*

Status topic for ambient humidity
.......................................
Your app should publish data once a change in the ambient humidity is observed, but only if the checkbox "Device is able to report humidity" is checked. It's unit is % (relative humidity).

It should be formatted as a decimal number with exactly one decimal place, inbetween 0 and 100 (including those).

**Example:** :code:`gBridge/ux/dy/tempset-humidity/set`: :code:`57.0` ->  *Hey Google, what's the humidity at {thermostat name}? {Thermostat name} has a current humidity reading of 57%*

Other commands
----------------

* Make it warmer/ cooler
* Raise/ lower the Temperature
* Raise/ lower the temp x degrees
* Set the temperature to x degrees
* How warm is it in here?
* What's the humidity of {thermostat name} (*if humidity is enabled*)