@echo off

:: Change CMD or Windows Terminal tab title
setlocal enabledelayedexpansion

set "allParams="
for %%i in (%*) do (
  set "allParams=!allParams! %%i"
)

title %allParams%

endlocal