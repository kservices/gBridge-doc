Domoticz integration
=======================

Gert-Jan "giejay" Compagner has developed a plugin for Domoticz that allows easy integration: https://github.com/giejay/domoticz-gbridge-plugin

Setup
---------
Always look in giejay's repository for up-to-date setup instructions.

Currently, you need to follow these steps:

*  Clone the repository in the plugin folder of your Domoticz instance:

   .. code-block:: bash

      cd domoticz/plugins
      git clone https://github.com/giejay/domoticz-gbridge-plugin.git
* Restart Domoticz
* Add a new "gBridge" item in the hardware page. Enter these settings for the hosted gBridge service:


:MQTT server address: mqtt.gbridge.io:8883
:MQTT username: gbridge-u{userid} *(Shown in "My Account" in your accounts dashboard)*
:MQTT password: As set. Is your gBridge account's password by default, but may be set independently in your account's dashboard.
:MQTT base topic: gBridge/u{userid}
:gBridge URL: https://gbridge.kappelt.net
:gBridge Username: Your account's mail address
:gBridge Password: Your account's password