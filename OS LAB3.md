Operating Systems Lab
Lab 03 Report
Batch Scripting & Windows Automation
Student Name	
Registration No.	
Section / Semester	
Instructor	
Date	
Course	Operating Systems - Lab
Platform	Microsoft Windows 10/11 (Command Prompt, Notepad)
1. Objective
To understand Batch scripting in Windows and to create and execute .bat files that combine CMD commands, variables, user input, arithmetic, conditions (IF / ELSE, IF EXIST) and loops (FOR, FOR /L) for automating file and directory management.
2. Tools Used
Windows Command Prompt (cmd) and Notepad. All scripts were created as .bat files and run inside a dedicated practice folder (for example C:\OSLabPractice).
3. Procedure
1. Open Notepad (Win + R, type notepad, Enter).
2. Type the script, then File > Save As, set Save as type to All Files and save with the .bat extension.
3. Open the script in Notepad / editor and take a screenshot of the code.
4. Run the file from Command Prompt (or double-click) and take a screenshot of the output.
5. Paste both screenshots in the placeholders of the respective practical below.
 
4. Practicals
4.1 First Batch File (hello.bat)
File: hello.bat    Objective: Create and run a first .bat file using echo and pause.
Script
echo Hello Students
pause
Explanation of Commands
Command	Explanation
echo Hello Students	Displays text on screen
pause	Waits for a key press so the window does not close
Expected Output
Hello Students
Press any key to continue . . .
Screenshot 1 - Batch file code (Notepad)
[ Paste Screenshot Here ]
hello.bat opened in Notepad

Screenshot 2 - Execution in Command Prompt
[ Paste Screenshot Here ]
Output of hello.bat in CMD

 
4.2 Practical 1 - Automatically Create Folders
File: practical1_folders.bat    Objective: Create multiple directories using one Batch file.
Script
@echo off
 
REM Create main folders
mkdir Lectures
mkdir Assignments
mkdir Backup
 
echo All folders created successfully.
 
pause
Explanation of Commands
Command	Explanation
@echo off	Hides the commands from output
REM ...	Comment, ignored during execution
mkdir	Creates a directory
echo	Displays confirmation
pause	Waits for a key press
Expected Output
All folders created successfully.
Press any key to continue . . .
Screenshot 1 - Batch file code (Notepad)
[ Paste Screenshot Here ]
practical1_folders.bat opened in Notepad

Screenshot 2 - Execution in Command Prompt
[ Paste Screenshot Here ]
Output of practical1_folders.bat in CMD

 
4.3 Practical 2 - Create Folder Structure
File: practical2_structure.bat    Objective: Create the Operating_Systems folder with four subfolders and display it with tree.
Script
@echo off
 
REM Create main directory
mkdir Operating_Systems
 
REM Enter main directory
cd Operating_Systems
 
REM Create subdirectories
mkdir Lectures
mkdir Assignments
mkdir Projects
mkdir Backup
 
REM Display structure
tree
 
pause
Explanation of Commands
Command	Explanation
cd Operating_Systems	Change Directory - moves into the main folder
mkdir ...	Creates the four subfolders
tree	Displays the folder structure graphically
Expected Output
Folder PATH listing
C:.
+---Assignments
+---Backup
+---Lectures
\---Projects
Press any key to continue . . .
Screenshot 1 - Batch file code (Notepad)
[ Paste Screenshot Here ]
practical2_structure.bat opened in Notepad

Screenshot 2 - Execution in Command Prompt
[ Paste Screenshot Here ]
Output of practical2_structure.bat in CMD

 
4.4 Practical 3 - Student Information File
File: practical3_student_file.bat    Objective: Create a text file using output redirection (> and >>).
Script
@echo off
 
echo Student Name: Ali > student.txt
echo Course: Operating Systems >> student.txt
echo Lab: Batch Scripting >> student.txt
 
type student.txt
 
pause
Explanation of Commands
Command	Explanation
>	Creates/overwrites the file with the output
>>	Appends output to the end of the file
type	Displays the file contents
Expected Output
Student Name: Ali
Course: Operating Systems
Lab: Batch Scripting
Press any key to continue . . .
Screenshot 1 - Batch file code (Notepad)
[ Paste Screenshot Here ]
practical3_student_file.bat opened in Notepad

Screenshot 2 - Execution in Command Prompt
[ Paste Screenshot Here ]
Output of practical3_student_file.bat in CMD

 
4.5 Variables Example
File: variable_example.bat    Objective: Store a value in a variable and display it using %name%.
Script
@echo off
 
REM Store student's name
set name=Ali
 
REM Display variable
echo Student Name: %name%
 
pause
Explanation of Commands
Command	Explanation
set name=Ali	Creates variable name with value Ali
%name%	Retrieves the value stored in the variable
Expected Output
Student Name: Ali
Press any key to continue . . .
Screenshot 1 - Batch file code (Notepad)
[ Paste Screenshot Here ]
variable_example.bat opened in Notepad

Screenshot 2 - Execution in Command Prompt
[ Paste Screenshot Here ]
Output of variable_example.bat in CMD

 
4.6 Practical 4 - User Input
File: practical4_input.bat    Objective: Accept input from the user with set /p.
Note: Enter your own name when prompted.
Script
@echo off
 
REM Ask user for name
set /p name=Enter your name: 
 
REM Display personalized message
echo Welcome %name% to Operating Systems Lab.
 
pause
Explanation of Commands
Command	Explanation
set /p name=...	Prompts the user and stores the input in name
echo Welcome %name% ...	Displays a personalized message
Expected Output
Enter your name: Hussain
Welcome Hussain to Operating Systems Lab.
Press any key to continue . . .
Screenshot 1 - Batch file code (Notepad)
[ Paste Screenshot Here ]
practical4_input.bat opened in Notepad

Screenshot 2 - Execution in Command Prompt
[ Paste Screenshot Here ]
Output of practical4_input.bat in CMD

 
4.7 Multiple Inputs
File: multiple_inputs.bat    Objective: Take more than one input and display it using echo. (blank line).
Script
@echo off
 
set /p name=Enter your name: 
set /p reg=Enter registration number: 
 
echo.
echo Student Information
echo Name: %name%
echo Registration Number: %reg%
 
pause
Explanation of Commands
Command	Explanation
set /p	Takes name and registration number
echo.	Prints a blank line
Expected Output
Enter your name: Ali
Enter registration number: 2024-CS-01
 
Student Information
Name: Ali
Registration Number: 2024-CS-01
Press any key to continue . . .
Screenshot 1 - Batch file code (Notepad)
[ Paste Screenshot Here ]
multiple_inputs.bat opened in Notepad

Screenshot 2 - Execution in Command Prompt
[ Paste Screenshot Here ]
Output of multiple_inputs.bat in CMD

 
4.8 Practical 5 - Simple Addition
File: practical5_addition.bat    Objective: Perform arithmetic using set /a.
Script
@echo off
 
REM Take first number
set /p num1=Enter first number: 
 
REM Take second number
set /p num2=Enter second number: 
 
REM Add numbers
set /a result=num1+num2
 
REM Display result
echo Sum = %result%
 
pause
Explanation of Commands
Command	Explanation
set /p num1/num2	Stores the two numbers entered
set /a result=num1+num2	Performs integer addition
echo Sum = %result%	Displays the result
Expected Output
Enter first number: 10
Enter second number: 20
Sum = 30
Press any key to continue . . .
Screenshot 1 - Batch file code (Notepad)
[ Paste Screenshot Here ]
practical5_addition.bat opened in Notepad

Screenshot 2 - Execution in Command Prompt
[ Paste Screenshot Here ]
Output of practical5_addition.bat in CMD

 
4.9 IF / ELSE - Age Eligibility
File: age_check.bat    Objective: Make a decision using if / else and the GEQ operator.
Note: Run twice: once with age 20 and once with age 15 (two screenshots if possible).
Script
@echo off
 
set /p age=Enter your age: 
 
if %age% GEQ 18 (
    echo Eligible
) else (
    echo Not Eligible
)
 
pause
Explanation of Commands
Command	Explanation
if %age% GEQ 18	Checks whether age is greater than or equal to 18
else	Runs when the condition is false
Expected Output
Enter your age: 20
Eligible
Press any key to continue . . .
Screenshot 1 - Batch file code (Notepad)
[ Paste Screenshot Here ]
age_check.bat opened in Notepad

Screenshot 2 - Execution in Command Prompt
[ Paste Screenshot Here ]
Output of age_check.bat in CMD

 
4.10 Practical 6 - Pass/Fail Script
File: practical6_passfail.bat    Objective: Display PASS or FAIL depending on marks.
Script
@echo off
 
REM Ask student marks
set /p marks=Enter marks: 
 
REM Check result
if %marks% GEQ 50 (
    echo Result: PASS
) else (
    echo Result: FAIL
)
 
pause
Explanation of Commands
Command	Explanation
set /p marks	Reads the marks
if %marks% GEQ 50	PASS if marks are 50 or more, else FAIL
Expected Output
Enter marks: 65
Result: PASS
Press any key to continue . . .
Screenshot 1 - Batch file code (Notepad)
[ Paste Screenshot Here ]
practical6_passfail.bat opened in Notepad

Screenshot 2 - Execution in Command Prompt
[ Paste Screenshot Here ]
Output of practical6_passfail.bat in CMD

 
4.11 File Existence Check (IF EXIST)
File: exist_check.bat    Objective: Check whether a file exists before acting.
Note: Run once without notes.txt, then create notes.txt and run again.
Script
@echo off
 
if exist notes.txt (
    echo File found.
) else (
    echo File does not exist.
)
 
pause
Explanation of Commands
Command	Explanation
if exist notes.txt	Checks if notes.txt exists in the current folder
Expected Output
File does not exist.   (or "File found." if notes.txt is present)
Screenshot 1 - Batch file code (Notepad)
[ Paste Screenshot Here ]
exist_check.bat opened in Notepad

Screenshot 2 - Execution in Command Prompt
[ Paste Screenshot Here ]
Output of exist_check.bat in CMD

 
4.12 Backup Only If File Exists
File: backup_if_exists.bat    Objective: Combine if exist, if not exist and copy for a safe backup.
Note: Create report.txt in the same folder first.
Script
@echo off
 
REM Check if file exists
if exist report.txt (
 
    REM Create backup directory if needed
    if not exist Backup mkdir Backup
 
    REM Copy file
    copy report.txt Backup
 
    echo Backup completed.
 
) else (
 
    echo Error: report.txt was not found.
 
)
 
pause
Explanation of Commands
Command	Explanation
if exist report.txt	Proceeds only if the report exists
if not exist Backup mkdir Backup	Creates Backup only if missing
copy report.txt Backup	Copies the file into Backup
Expected Output
        1 file(s) copied.
Backup completed.
Press any key to continue . . .
Screenshot 1 - Batch file code (Notepad)
[ Paste Screenshot Here ]
backup_if_exists.bat opened in Notepad

Screenshot 2 - Execution in Command Prompt
[ Paste Screenshot Here ]
Output of backup_if_exists.bat in CMD

 
4.13 Practical 7 - Create Folders Using a Loop
File: practical7_loop_folders.bat    Objective: Use a for loop to create Student1 to Student5.
Script
@echo off
 
for %%i in (1 2 3 4 5) do (
    mkdir Student%%i
)
 
echo Folders created successfully.
 
pause
Explanation of Commands
Command	Explanation
for %%i in (1 2 3 4 5)	Loops over the values 1 to 5
mkdir Student%%i	Creates Student1 ... Student5
Expected Output
Folders created successfully.
Press any key to continue . . .
Screenshot 1 - Batch file code (Notepad)
[ Paste Screenshot Here ]
practical7_loop_folders.bat opened in Notepad

Screenshot 2 - Execution in Command Prompt
[ Paste Screenshot Here ]
Output of practical7_loop_folders.bat in CMD

 
4.14 FOR /L Loop
File: forL.bat    Objective: Use a numeric for /L loop to print numbers and create Lab1 to Lab10.
Script
@echo off
 
for /L %%i in (1,1,5) do echo %%i
 
for /L %%i in (1,1,10) do (
    mkdir Lab%%i
)
 
echo Lab folders created.
 
pause
Explanation of Commands
Command	Explanation
for /L %%i in (1,1,5)	Counts from 1 to 5 with step 1
mkdir Lab%%i	Creates Lab1 ... Lab10
Expected Output
1
2
3
4
5
Lab folders created.
Press any key to continue . . .
Screenshot 1 - Batch file code (Notepad)
[ Paste Screenshot Here ]
forL.bat opened in Notepad

Screenshot 2 - Execution in Command Prompt
[ Paste Screenshot Here ]
Output of forL.bat in CMD

 
4.15 Window Customization (title and color)
File: title_color.bat    Objective: Change the CMD window title and colors.
Script
@echo off
 
title OS Lab Automation
color 0A
 
echo Title and color changed.
 
pause
Explanation of Commands
Command	Explanation
title OS Lab Automation	Sets the window title
color 0A	Black background, light green text
Expected Output
Title and color changed.
Press any key to continue . . .  (green text, new window title)
Screenshot 1 - Batch file code (Notepad)
[ Paste Screenshot Here ]
title_color.bat opened in Notepad

Screenshot 2 - Execution in Command Prompt
[ Paste Screenshot Here ]
Output of title_color.bat in CMD

 
4.16 Practical 8 - Complete Batch Automation
File: practical8_automation.bat    Objective: Automate folder creation, file creation, backup and display in one script.
Script
@echo off
 
REM Set CMD window title
title OS Lab Student Automation
 
REM Ask for student name
set /p name=Enter student name: 
 
REM Create main folder
mkdir Student_Record
 
REM Enter folder
cd Student_Record
 
REM Create student information file
echo Student Name: %name% > student.txt
echo Course: Operating Systems >> student.txt
echo Lab: Batch Scripting >> student.txt
 
REM Create backup folder if it does not exist
if not exist Backup mkdir Backup
 
REM Copy information file into backup
copy student.txt Backup
 
REM Display contents
echo.
echo Student Record:
type student.txt
 
echo.
echo Automation completed successfully.
 
pause
Explanation of Commands
Command	Explanation
title	Sets window title
set /p name	Accepts the student name
mkdir / cd	Creates and enters Student_Record
echo > / >>	Writes student.txt
if not exist Backup mkdir Backup	Creates Backup if missing
copy student.txt Backup	Creates backup copy
type student.txt	Displays file contents
Expected Output
Enter student name: Ali
        1 file(s) copied.
 
Student Record:
Student Name: Ali
Course: Operating Systems
Lab: Batch Scripting
 
Automation completed successfully.
Press any key to continue . . .
Screenshot 1 - Batch file code (Notepad)
[ Paste Screenshot Here ]
practical8_automation.bat opened in Notepad

Screenshot 2 - Execution in Command Prompt
[ Paste Screenshot Here ]
Output of practical8_automation.bat in CMD

 
4.17 Student Hands-On Activity - Course Workspace Creator
File: course_workspace.bat    Objective: Create a course workspace with subfolders, an info file, a backup copy and the directory tree.
Script
@echo off
 
REM Ask user for course name
set /p course=Enter course name: 
 
REM Create main course directory
mkdir "%course%"
 
REM Move into main directory
cd "%course%"
 
REM Create subdirectories
mkdir Lectures
mkdir Labs
mkdir Assignments
mkdir Backup
 
REM Create course information
echo Course Name: %course% > course_info.txt
 
REM Copy information file to backup
copy course_info.txt Backup
 
REM Display directory structure
tree /f
 
REM Display completion message
echo.
echo Course workspace created successfully.
 
pause
Explanation of Commands
Command	Explanation
mkdir "%course%"	Quotes allow folder names with spaces
tree /f	Shows folders and files
copy	Backs up course_info.txt
Expected Output
Enter course name: Operating Systems
        1 file(s) copied.
(tree listing of Lectures, Labs, Assignments, Backup and course_info.txt)
 
Course workspace created successfully.
Press any key to continue . . .
Screenshot 1 - Batch file code (Notepad)
[ Paste Screenshot Here ]
course_workspace.bat opened in Notepad

Screenshot 2 - Execution in Command Prompt
[ Paste Screenshot Here ]
Output of course_workspace.bat in CMD

 
4.18 Lab Task - Automatic Student Record Generator
File: student_record.bat    Objective: Build the final submission script: collect student details, create folder and file, back up and verify.
Script
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
Explanation of Commands
Command	Explanation
set /p (x3)	Reads name, registration number and semester
mkdir "%reg%" / cd	Creates and enters the folder named after reg. no.
echo > / >>	Saves details in student.txt
if not exist Backup mkdir Backup	Creates Backup folder
copy student.txt Backup	Copies the file into Backup
if exist Backup\student.txt	Verifies backup, prints Backup Successful
tree /f	Displays the complete directory structure
pause	Pauses before exit
Expected Output
Enter student name: Ali
Enter registration number: 2024-CS-01
Enter semester: 3
        1 file(s) copied.
Backup Successful
 
(tree /f listing: Backup\student.txt and student.txt)
Press any key to continue . . .
Screenshot 1 - Batch file code (Notepad)
[ Paste Screenshot Here ]
student_record.bat opened in Notepad

Screenshot 2 - Execution in Command Prompt
[ Paste Screenshot Here ]
Output of student_record.bat in CMD

Screenshot 3 - Final directory structure
[ Paste Screenshot Here ]
Output of tree /f / File Explorer view of the created folder

Screenshot 4 - Output file (student.txt)
[ Paste Screenshot Here ]
Contents of student.txt created by the script

 
5. Short Questions
Question	Answer
What is a Batch file?	A text file containing Windows commands that execute sequentially.
What does @echo off do?	Hides command lines from normal output.
Difference between > and >>?	> creates/overwrites a file; >> appends to it.
What is set /p used for?	To accept input from the user.
What does IF EXIST do?	Checks whether a file or directory exists.
Why are loops useful?	They repeat operations automatically, e.g. creating many folders.
6. Conclusion
In this lab, manual CMD commands were converted into Batch scripts. Variables, user input, arithmetic, IF / ELSE conditions, file-existence checks and FOR loops were used to automate folder creation, file writing and backups. The final student_record.bat script combined all these concepts into one automated workflow, showing how Batch scripting saves time and makes repetitive tasks consistent.
