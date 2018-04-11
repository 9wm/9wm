Building a custom 9wm
======================

There are a set of #defines used in 9wm to allow for customization of the built executable.

* SHAPE
Allows nonrectangular windows, but requires the X11 shape extension, which every X11 installation should have these days.

* COLOR
Enables the color parsing code for customizing window borders.

* DEBUG
Enables debugging code. Without this enabled -debug does very little.

* DEBUG_EV
Enables event debugging code, requires X11 event parsing code that can be found in the showevent branch
