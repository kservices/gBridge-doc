Camera Stream
=================

The trait "Camera Stream" allows you to view videos from a camera or a NAS on a compatible streaming device, e.g. a Chromecast.

The video stream has to be available on a webserver, using one of the supported protocols below.

Fitting device types
-------------------------
These device types could be combined well with this trait:

* Camera


Trait settings
---------------

When editing this trait, you can define multiple settings.

Trait setting "Stream Format"
.......................................
You can select what stream format is used to stream. You can select out of these options:
* Progressive MP4 (e.g. for static MP4 files that will be played)
* HTTP Live Streaming (HLS)
* Dynamic Adaptive Streaming over HTTP (DASH)
* Smooth Streaming

Have a look at `the Google developer documentation <https://developers.google.com/cast/docs/media>`_ for more information about supported codecs.

Encrypted or DRM protected streams are not yet supported.

Trait setting "Default URL"
..............................
You can specify a default URL for a stream that is used if no other URL is published on this traits status topic.

This setting is useful if you just want to be able to stream one file without updating the URL dynamically via MQTT.


Action topics
---------------

.. sidebar:: Example

    *Hey Google, stream {camera name} to {chromecast name}*

    :code:`gBridge/ux/dy/camerastream`: :code:`chromecast`

The gBridge service publishes either :code:`chromecast` (stream is played back on a chromecast device) or :code:`generic` (stream is played back on another supported streaming device) when the stream is started.

.. raw:: html

    <br><br><br><br><br><br><br>


Status topics
---------------

.. sidebar:: Example

    :code:`gBridge/ux/dy/camerastream/set`: :code:`http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4`

    *Hey Google, stream {device name}* (Your set stream will be played back on the casting device)

You can update the stream URL dynamically on the status topic. When the stream is requested the next time, the newest published URL will be streamed.

The published data has to be a full URL pointing to a stream in the format you've configured this device for.

If you don't publish anything on the status topic, the default stream URL (as specified in the trait setting) will be used.