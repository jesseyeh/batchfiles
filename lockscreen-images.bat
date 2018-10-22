@echo off

setlocal EnableDelayedExpansion

:: Copies Windows 10 lockscreen images into a specified directory (current directory otherwise)
set DESTINATION=.\Images
if not "%~1"=="" (
    set DESTINATION=%~1
    if !DESTINATION:~-1!==\ set DESTINATION=!DESTINATION:~0,-1!
    set DESTINATION=!DESTINATION!\Images
)
if not exist !DESTINATION! (
    mkdir !DESTINATION!
    echo Created directory at !DESTINATION!
)
xcopy /s C:\Users\%USERNAME%\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets\* !DESTINATION!
ren !DESTINATION!\* *.jpg
echo Finished copying lockscreen images to !DESTINATION!
