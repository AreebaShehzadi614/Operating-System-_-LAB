@echo off

for /L %%i in (1,1,5) do echo %%i

for /L %%i in (1,1,10) do (
    mkdir Lab%%i
)

echo Lab folders created.

pause
