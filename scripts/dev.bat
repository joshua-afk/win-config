@echo off

set app_data="%USERPROFILE%\AppData\Local"

:: Firefox
start \"Program Files\Firefox Developer Edition\firefox.exe

:: Windows Terminal
:: start \"Program Files\WindowsApps\Microsoft.WindowsTerminalPreview_1.19.2682.0_x64__8wekyb3d8bbwe\wt.exe
%app_data%\Microsoft\WindowsApps\wt.exe

:: Cmder
start cmder.exe

:: SourceTree
::start %app_data%\SourceTree\SourceTree.exe

:: Git Fork
%app_data%\Fork\fork.exe

:: MS SQL
:: start \"Program Files (x86)\Microsoft SQL Server Management Studio 18\Common7\IDE\Ssms.exe

:: ADS
%app_data%\Programs\"Azure Data Studio\azuredatastudio.exe

:: Obsidian
REM %app_data%\Obsidian\Obsidian.exe

:: Zoom
%USERPROFILE%\AppData\Roaming\Zoom\bin\Zoom.exe
