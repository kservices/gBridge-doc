Fan Speed
=================

The trait "Fan Speed" allows you to set a device to one of a certain speed value. You can define the possible speed values and alias names as you like.

Fitting device types
-------------------------
These device types could be combined well with this trait:

* AC units (possibly combined with On and Off)
* Air purifiers (possibly combined with On and Off)
* Fans (possibly combined with On and Off)

Trait Settings
------------------
When editing a device that supports this trait, you can specify the speeds this device supports.

.. note::
    The definition of fan speeds is a bit complicated for the moment, you need to follow this guide exactly. The interface will eventually be improved to make this easier.

The definition of fan speeds is done in a generic text field, that has to be formatted according to the following rules.

Each line contains one possible fan speed. There should be no empty lines.

Each line for the fan speed is formatted like that: :code:`{speed_value}:{speed_name1},{speed_name2},...,{speed_name_n}`.
The speed value is the value that is sent or received on MQTT topics. You can specify one or more names for that speed (that might be a duplicate of the speed value), Google will listen to those speed names.

**Example 1:** The line :code:`S1:Low,Speed 1` defines a speed with the value :code:`S1`. When you say *Set the fan to low* or *Set the fan to speed 1*, the value :code:`S1` will be published on the action topic.

**Example 2:** The line :code:`S2:Medium` defines a speed with the value :code:`S2`. Google will only listen to the command *Set the fan to medium*, then :code:`S2` will be published on the action topic.

For the following examples, this speed specification is used:

.. code-block:: text

    S1:Low,Speed 1
    S2:Medium,Speed 2
    S3:High,Speed 3



Action topics
---------------

The gBridge service publishes one of the specified speed values, when you say a voice command.

**Example:** *Hey Google, Set the {device name} to slow* -> :code:`gBridge/ux/dy/fanspeed`: :code:`S1`


Status topics
---------------

Your application should publish the current fan speed to the status topic everytime it changes.
Data from the status topic is cached and used to response to questions about the device state from Google.

You may publish one of the speed values (but *not* the names) that are specified (case sensitive).


**Example:** :code:`gBridge/ux/dy/fanspeed/set`: :code:`S2` ->  *Hey Google, what speed is the fan set to? The fan is set to medium.* 

Other commands
----------------

* What speed is {device name} set to?
* Set {device name} to {speed name}.