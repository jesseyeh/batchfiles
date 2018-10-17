@echo off

:: Copies Windows 10 lockscreen images into a specified directory
if "%~1"=="" (
    echo Specify destination file path.
) else (
    set DESTINATION="%~1\Images"
    if not exist %DESTINATION% (
        mkdir %DESTINATION%
        echo Created directory at %DESTINATION%
    )
    xcopy /s C:\Users\%USERNAME%\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets\* %DESTINATION%
    ren %DESTINATION%\* *.jpg
    echo Finished copying lockscreen images to %DESTINATION%
)
