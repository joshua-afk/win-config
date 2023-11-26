@echo off

REM v %USERPROFILE%/AppData/Roaming/Hyper/.hyper.js
xcopy /s /Y "%USERPROFILE%\.config\hyper" "%USERPROFILE%\AppData\Roaming\Hyper"