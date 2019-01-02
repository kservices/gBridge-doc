.. Kappelt gBridge documentation master file, created by
   sphinx-quickstart on Sat Jun 23 18:42:27 2018.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

.. IMPORTANT::
    gBridge documentation has moved to `https://doc.gbridge.io <https://doc.gbridge.io>`_.

Introduction
===========================================

*gBridge.io* allows you to control (almost) every smart home device with Google Assistant. It provides a bridge between Google Assistant and MQTT.

.. TIP:: 
   *gBridge.io* is an open source application. However, we provide an inexpensive hosted appliance of gBridge. 
   **This is a great way of supporting our work** - and you don't have to care about installation, debugging and maintenance.

   Interested? Have a look at `https://about.gbridge.kappelt.net <https://about.gbridge.kappelt.net>`_.

It acts like a smart home device provider, that is listed in the Google Home app. But there are no real devices by gBridge.io - there are virtual devices defined by you in your user account's dashboard.
When you interact with a virtual device you've defined ("Hey Google, turn on the lights in the living room"), gBridge will publish an MQTT message.

This MQTT message can finally be handled by most smart home applications and might be further processed there.

Do you want to know :ref:`what makes gBridge unique? <why-gBridge>`.

All set? :doc:`Let's get started! <firstSteps/gettingStarted>` 

.. figure:: ./_static/works-with-assistant.png
   :width: 50%
   :align: center
   :alt: Works with Assistant
   :figclass: align-center



.. _why-gBridge:

Why gBridge?
---------------
There are several reasons why one should prefer gBridge over other services/ mechanisms.

* The hosted version is **officially listed in the Google Actions directory**. You won't need to fiddle around with the setup of projects, account linking, etc.
* gBridge is **secure**. You don't need to open any ports in your router/ firewall and expose webpages or webhooks. MQTT messages are encrypted with TLS 1.2.
* gBridge **integrates natively** into the Google smart home ecosystem. Devices are listed in the Google home app, where you can manage and control them. You can use all supported voice commands, not only limited and self-chosen ones.
* gBridge is **simple to use** with all sorts of devices and many smart home programs. Everything inbetween a **simple, plain ESP8266** and a **fully featured smart home software** (like Home-Assistant) can be controlled by gBridge.
* gBridge is **open-source software**. You can verify the code and contribute to the scripts or documentation if you like.

.. toctree::
   :maxdepth: 2
   :caption: First steps

   self
   firstSteps/supportGuidelines
   firstSteps/gettingStarted
   firstSteps/deviceMechanism
   firstSteps/deviceTypes
   firstSteps/mqttServer
   selfHosted/hostItYourself

.. toctree::
   :maxdepth: 2
   :caption: Integration

   integration/tasmota
   integration/nodered
   integration/fhem
   integration/domoticz
   integration/communityManuals

.. toctree::
   :maxdepth: 2
   :caption: Developers

   developers/api
