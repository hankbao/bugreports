#rdar://10909014

Summary:
QTKit shipped with OSX Lion crashes with some particular mpeg2 ts files

Steps to Reproduce:
Play the attached ts file with any app which uses QTKit internally, like QuickTime Player or a html5 webpage embedded the ts file browsed with Safari)

Expected Results:
The ts file should be played without any problem

Actual Results:
QuickTime Player or Safari's web content process crashed.

Regression:
In some unknown circumstance the QTKit doesn't reproduce the problem until you relaunch the app several times.

Notes:
See the attached ts file and the crash log.
The crash problem actually could be reproduced by the AVPlayer of AVFoundation also.
Try AVSimplePlayer from the SDK's sample code.
