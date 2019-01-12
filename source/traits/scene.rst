Scene
=================

The trait "Scene" allows you to trigger a preset for other devices (e.g. turning on/ off certain devices, setting the color of lights). You could, for example, configure a scene called "Movie" that turns of the main lights, dims the ambient lighting and turns on your TV.

Note that this logic has to be implemented in your own smarthome software. gBridge only reports a scene being triggered.

Fitting device types
-------------------------
These device types could be combined well with this trait:

* Scene

Action topics
---------------

.. sidebar:: Example

    *Hey Google, activate/ start {scene name}*

    :code:`gBridge/ux/dy/scene`: :code:`1`

The gBridge service publishes :code:`1` on the action topic when you activate a scene with a voice command.



Status topics
---------------

Scenes don't have any status topics.