@echo off
title Student Record Generator

REM Take student details
set /p name=Enter student name: 
set /p reg=Enter registration number: 
set /p sem=Enter semester: 

REM Create folder named after registration number
if not exist "%reg%" mkdir "%reg%"
cd "%reg%"

REM Create student.txt and save details
echo Student Name: %name% > student.txt
echo Registration Number: %reg% >> student.txt
echo Semester: %sem% >> student.txt

REM Create Backup folder and copy file
if not exist Backup mkdir Backup
copy student.txt Backup

REM Check that the backup exists
if exist Backup\student.txt (
    echo Backup Successful
) else (
    echo Backup Failed
)

REM Display complete directory structure
echo.
tree /f

pause
