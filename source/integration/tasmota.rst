Sonoff Tasmota integration
===============================

.. note::
    Many thanks to Michael Hirsch (mikizvi at gmail dot com), who has prepared and developed the necessary steps for this integration guide.

This manual shows you how to link your Tasmota devices (e.g. Sonoffs, Shellys and others) with gBridge, thus control them with Google Assistant/ Google Home.

Configure Local Broker
----------------------------

The Tasmota firmware doesn't support encrypted MQTT natively (only through detours, when compiling own firmware versions while removing other features to free the necessary flash space).
Since unencrypted MQTT communication over the internet is generally a bad idea, I recommend to setup an MQTT broker as a bridge in your local network. You can read about the idea behind this here: :ref:`Using own Mosquitto as a Bridge <mqttServer-mosquittoBridge>`.

For linking Tasmota, you can start with the broker configuration shown in the :ref:`Mosquitto Bridge guide <mqttServer-mosquittoBridge>`. Add those lines:

.. code-block:: aconf

    topic cmnd/# in 0 {local_prefix}/ gBridge/u{userid}/
    topic stat/# out 0 {local_prefix}/ gBridge/u{userid}/

Replace :code:`{local_prefix}` with the prefix for your devices, it is :code:`sonoff` for the stock Tasmota firmware. Replace :code:`{userid}` with the user id of your gBridge account, that is shown in your account's dashboard.

The following config is an example for the user gbridge-u7 with the local Tasmota prefix :code:`sonoff`

.. code-block:: aconf

    connection kappelt-gbridge
    address mqtt.gbridge.io:8883
    bridge_attempt_unsubscribe true
    bridge_protocol_version mqttv31
    cleansession true
    remote_username gbridge-u7
    remote_password mysupersecretpassword
    remote_clientid gbridge-u7-dsifjgrsfj

    topic gBridge/u7/+/+ both 0 "" ""
    topic gBridge/u7/+/+/set both 0 "" ""
    topic cmnd/# in 0 sonoff/ gBridge/u7/
    topic stat/# out 0 sonoff/ gBridge/u7/
    bridge_capath /etc/ssl/certs/
    bridge_tls_version tlsv1.2

Configure your Tasmota device
-------------------------------

You don't need to do anything special with your Tasmota devices. Just set them to connect to your MQTT Broker that has been configured to work as a bridge. Give it an unique name.

Create a gBridge virtual device
----------------------------------

Log in to the gBridge dashboard. Create a new device, select Outlet, Switch or Light as the type, choose only OnOff for supported traits.

Give a name you'd like Google to listen to for this device. You can always change it later on.

After saving the device, click the edit button again in order to modify the MQTT topics. Use :code:`cmnd/{tasmota-name}/power` for the action topic and :code:`stat/{tasmota-name}/POWER` as the status topic (note the case difference). Replace :code:`{tasmota-name}` with the device name you've set for the Sonoff device.

Done
------

Thats it! You can now control your device with Google Assistant!