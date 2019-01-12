About device traits
=======================

Each defined device has one more features/ traits. Traits define actual abilities of the device, while the device type only provides device-specific semantics/ vocabulary for voice commands.

A trait may have one or more MQTT action/ status topics.

In theory, every kind of device could be combined with each kind of trait. However, not every combination is meaningfull and controllable by voice commands (you wouldn't add the Temperature Settings trait to Blinds ;) ). For each trait, there is a list of device types that are known to fit.