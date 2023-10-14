@echo off
set "___=1&%__!r!%___% v
if %errorlevel%==0 (
    start src\main.lua
) else (
    echo Sorry! LUA is not installed on this computer. Go to https://www.lua.org/ to install it.
    pause
)
