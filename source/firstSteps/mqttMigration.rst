MQTT Server Migration
==========================

Along with the domain move, we moved our MQTT server, too. A new server cluster is available under :code:`mqtt.gbridge.io`. It is designed as a drop-in replacement for the existing server, theoretically you just need to change the server's address.

The new server uses a more scalable software, ensuring good performance with growing user count.

The old server (mqtt.gbridge.kappelt.net) is going to stay online for at least a couple more months. Afterwards, it is going to be eventually an alias to our new server (mqtt.gbridge.io). However, we want to grant our users a period for soft migration (rather than just switching servers without any notice), so that possible problems and incompatibilites can be addressed.

Please read and note the following changes! We kindly ask all users to quickly move to the new server.

**Feel free to contact us using the community forum or the contact form if you are experiencing any issues while migrating**.

MQTT topic restriction
------------------------
The new server restricts subscribable topics.

**Old behaviour:** Your client could subscribe to *any* topic (even the global wildcard :code:`#`), but you were only going to receive topics starting with :code:`gBridge/u{userid}/`.

**New behaviour:** Your client is only able to subscribe to topics starting with :code:`gBridge/u{userid}/`. Subscriptions outside this scope (like :code:`#`, :code:`gBridge/#`) will now fail.

This is due the new broker handling access restrictions differently. This problem isn't relevant when you are using the Domoticz plugin for gBridge.

MQTT protocol
---------------
MQTT V3.1.1 is now used by default and fully supported. The broker should provive backward-compatibility to MQTT V3.1

Websocket Path
--------------------
When using MQTT over websockets, the URL is now :code:`ws(s)://mqtt.gbridge.io/mqtt` (insted of the old websocket server using the root path: :code:`ws(s)://mqtt.gbridge.kappelt.net/`)