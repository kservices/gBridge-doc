Device Types
=================

The following **device types** are currently supported by gBridge:

:Light: A smart lightbulb, for instance
:Outlet: A switchable outlet
:Switch: A general definition for all kinds of switching devices
:Scene: Triggers pre-configured settings for various lights/ thermostats/ etc., e.g. for different moods
:Thermostat: Device that controls the heating, ventilation or an air conditioner.
:Fan: Ventilation and fan devices
:AC Units:
:Air Purifier: Air purifying devices
:Sprinkler: Garden Sprinklers and watering devices
:Door: Doors that can be opened/ closed
:Shutter and Blinds: Darkening systems
:Dishwasher:
:Dryer:
:Vacuum: e.g. vacuum robots that can be started/ stopped
:Washer: Generic washing machine
:Camera: Device that can be played back on a streaming device (e.g. a Chromecast)

Device types only provide specific vocabulary and semantics for controlling a device, but do not define any features/ abilities.


Each device supports one or more so called **traits**. Those are feature sets that the device supports.

In theory, every kind of device could be combined with each kind of trait. However, not every combination is meaningfull and controllable by voice commands.

These traits are supported:

:On and Off: Turns a device on or off, obviously
:Brightness: Set the brightness percentage of a device
:Scene: Trait, that allows this device to be triggered
:Temperature Control: Enables features that are typical for thermostats and alike
:Fan Speed: Ability to set a device to a certain speed setting with a specified name.
:Start and Stop: Start and stop a device or a run cycle of it
:Open and Close: Open/ close devices to a certain percentage
:Camera Stream: Corresponding trait for the camera device. Allows your own stream URL to be viewed on a streaming device (e.g. Chromecast)

Have a look at the individual trait documentation pages for further information about settings and usage.