Device Mechanism
===================

Kappelt gBridge provides virtual devices. Each action by Google Assistant is transparently mapped to MQTT topics.

Action topics
-----------------

Kappelt gBridge publishes on those action topics, once an action request is made via Google Assistant. 

Your device/ software should subscribe to those topics and trigger the appropriate actions once a message is received.

By default, action topics are formatted as shown. You might change them as you like.

| :code:`gBridge/u{userid}/d{deviceid}/{trait}`
| **Example:** :code:`gBridge/u1/d4/onoff`

:userid: This is an integer number that identifies your gBridge account. It is the same for all devices of your account.
:deviceid: This is an integer number that identifies devices you've created. A device id is unique.
:trait: The trait declares, as the name says, the feature that is called. Currently, it is either :code:`onoff` (for turning a device on or off) or :code:`brightness` (for setting the brightness of a device).

.. figure:: ../_static/mechanism-action.png
   :width: 100%
   :align: center
   :alt: Scheme for actions requested by Google, that are published on the MQTT server.
   :figclass: align-center

   Once an action is requested via Google Assistant, data will be published to the belonging topic.

Status topics
----------------------------

The current state of your device shall be published to status topics, so gBridge can cache them. Once a query is made via Google Assistant (like "Hey Google, is device xyz turned on?"), the last value that was published to the status topic will be returned.

Your device/ software should publish the current states of your devices every time something changes (e.g. they are turned on or off). **It must publish the new states even if the change was triggered by an action topic by gBridge itself.**

By default, status topics are formatted as shown. You can identify them by the suffix "set". You might change them as you like.

| :code:`gBridge/u{userid}/d{deviceid}/{trait}/set`
| **Example:** :code:`gBridge/u1/d4/onoff/set`

The parameters (userid, deviceid, trait) have the same meanings as for action topics.

.. figure:: ../_static/mechanism-status.png
   :width: 100%
   :align: center
   :alt: Scheme for queries by Google Assistant.
   :figclass: align-center

   Device states will be cached and sent to Google once a query is made.

Valid values for messages
---------------------------

Only certain values are valid for MQTT messages on the topics described above. Publishing other values than allowed may cause undefined behaviour.

Allowed values are specified per trait. Have a look of the individual trait pages for more information about possible values and examples.