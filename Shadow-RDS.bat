@echo off

:loop
cls
echo.
echo Please enter the session ID:
set /p sessionId=

if not defined sessionId goto loop

mstsc /v:mo-rds /control /shadow:%sessionId%
