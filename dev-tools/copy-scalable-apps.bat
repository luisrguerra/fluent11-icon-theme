SET folder16="../wow64/16x16/apps"
SET folder22="../wow64/22x22/apps"
SET folder24="../wow64/24x24/apps"
SET folder32="../wow64/32x32/apps"
SET folder48="../wow64/48x48/apps"
SET folder64="../wow64/64x64/apps"
xcopy /i /e /y "scalable" %folder16%
xcopy /i /e /y "scalable" %folder22%
xcopy /i /e /y "scalable" %folder24%
xcopy /i /e /y "scalable" %folder32%
xcopy /i /e /y "scalable" %folder48%
xcopy /i /e /y "scalable" %folder64%
del "scalable" /s /q
pause
