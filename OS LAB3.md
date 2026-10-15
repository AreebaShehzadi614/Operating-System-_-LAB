# 🖥️ Operating Systems Lab 03 Report[cite: 3]
### Batch Scripting & Windows Automation[cite: 3]

---

## 📋 Student Information[cite: 3]

| Field | Details |
| :--- | :--- |
| **Student Name** |[Areeba Shehzadi] |
| **Registration No.** |[242201007] |
| **Section / Semester** |[BSCS-5A] | 
| **Date** |[09-10-2026] |
| **Course** | Operating Systems - Lab3 |
| **Platform** | Microsoft Windows 10/11 (Command Prompt, Notepad)[cite: 3] |

---

## 🎯 1. Objective
To understand Batch scripting in Windows and to create and execute `.bat` files that combine CMD commands, variables, user input, arithmetic, conditions (`IF / ELSE`, `IF EXIST`) and loops (`FOR`, `FOR /L`) for automating file and directory management[cite: 3].

---

## 🛠️ 2. Tools Used
Windows Command Prompt (`cmd`) and Notepad[cite: 3]. All scripts were created as `.bat` files and run inside a dedicated practice folder (for example `C:\OSLabPractice`)[cite: 3].

---

## 📝 3. Procedure
1. Open Notepad (`Win + R`, type `notepad`, Enter)[cite: 3].
2. Type the script, then `File > Save As`, set Save as type to All Files and save with the `.bat` extension[cite: 3].
3. Open the script in Notepad / editor and take a screenshot of the code[cite: 3].
4. Run the file from Command Prompt (or double-click) and take a screenshot of the output[cite: 3].
5. Paste both screenshots in the placeholders of the respective practical below[cite: 3].

---

## 🧪 4. Practicals

### 4.1 First Batch File (`hello.bat`)[cite: 3]
* **File:** `hello.bat`[cite: 3]  
* **Objective:** Create and run a first `.bat` file using `echo` and `pause`[cite: 3].

#### 💻 Script:
```cmd
echo Hello Students
pause
```[cite: 3]

#### 📌 Explanation of Commands:[cite: 3]
| Command | Explanation |
| :--- | :--- |
| `echo Hello Students` | Displays text on screen[cite: 3] |
| `pause` | Waits for a key press so the window does not close[cite: 3] |

#### 🎯 Expected Output:[cite: 3]
```text
Hello Students
Press any key to continue . . .
```[cite: 3]

#### 📸 Screenshots:[cite: 3]
* **Screenshot 1 - Batch file code (Notepad):** `[ Paste Screenshot Here ]` — *hello.bat opened in Notepad*[cite: 3]
* **Screenshot 2 - Execution in Command Prompt:** `[ Paste Screenshot Here ]` — *Output of hello.bat in CMD*[cite: 3]

---

### 4.2 Practical 1 - Automatically Create Folders (`practical1_folders.bat`)[cite: 3]
* **File:** `practical1_folders.bat`[cite: 3]  
* **Objective:** Create multiple directories using one Batch file[cite: 3].

#### 💻 Script:[cite: 3]
```cmd
@echo off
 
REM Create main folders
mkdir Lectures
mkdir Assignments
mkdir Backup
 
echo All folders created successfully.
 
pause
```[cite: 3]

#### 📌 Explanation of Commands:[cite: 3]
| Command | Explanation |
| :--- | :--- |
| `@echo off` | Hides the commands from output[cite: 3] |
| `REM ...` | Comment, ignored during execution[cite: 3] |
| `mkdir` | Creates a directory[cite: 3] |
| `echo` | Displays confirmation[cite: 3] |
| `pause` | Waits for a key press[cite: 3] |

#### 🎯 Expected Output:[cite: 3]
```text
All folders created successfully.
Press any key to continue . . .
```[cite: 3]

#### 📸 Screenshots:[cite: 3]
* **Screenshot 1 - Batch file code (Notepad):** `[ Paste Screenshot Here ]` — *practical1_folders.bat opened in Notepad*[cite: 3]
* **Screenshot 2 - Execution in Command Prompt:** `[ Paste Screenshot Here ]` — *Output of practical1_folders.bat in CMD*[cite: 3]

---

### 4.3 Practical 2 - Create Folder Structure (`practical2_structure.bat`)[cite: 3]
* **File:** `practical2_structure.bat`[cite: 3]  
* **Objective:** Create the `Operating_Systems` folder with four subfolders and display it with `tree`[cite: 3].

#### 💻 Script:[cite: 3]
```cmd
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
```[cite: 3]

#### 📌 Explanation of Commands:[cite: 3]
| Command | Explanation |
| :--- | :--- |
| `cd Operating_Systems` | Change Directory - moves into the main folder[cite: 3] |
| `mkdir ...` | Creates the four subfolders[cite: 3] |
| `tree` | Displays the folder structure graphically[cite: 3] |

#### 🎯 Expected Output:[cite: 3]
```text
Folder PATH listing
C:.
+---Assignments
+---Backup
+---Lectures
\---Projects
Press any key to continue . . .
```[cite: 3]

#### 📸 Screenshots:[cite: 3]
* **Screenshot 1 - Batch file code (Notepad):** `[ Paste Screenshot Here ]` — *practical2_structure.bat opened in Notepad*[cite: 3]
* **Screenshot 2 - Execution in Command Prompt:** `[ Paste Screenshot Here ]` — *Output of practical2_structure.bat in CMD*[cite: 3]

---

### 4.4 Practical 3 - Student Information File (`practical3_student_file.bat`)[cite: 3]
* **File:** `practical3_student_file.bat`[cite: 3]  
* **Objective:** Create a text file using output redirection (`>` and `>>`)[cite: 3].

#### 💻 Script:[cite: 3]
```cmd
@echo off
 
echo Student Name: Ali > student.txt
echo Course: Operating Systems >> student.txt
echo Lab: Batch Scripting >> student.txt
 
type student.txt
 
pause
```[cite: 3]

#### 📌 Explanation of Commands:[cite: 3]
| Command | Explanation |
| :--- | :--- |
| `>` | Creates/overwrites the file with the output[cite: 3] |
| `>>` | Appends output to the end of the file[cite: 3] |
| `type` | Displays the file contents[cite: 3] |

#### 🎯 Expected Output:[cite: 3]
```text
Student Name: Ali
Course: Operating Systems
Lab: Batch Scripting
Press any key to continue . . .
```[cite: 3]

#### 📸 Screenshots:[cite: 3]
* **Screenshot 1 - Batch file code (Notepad):** `[ Paste Screenshot Here ]` — *practical3_student_file.bat opened in Notepad*[cite: 3]
* **Screenshot 2 - Execution in Command Prompt:** `[ Paste Screenshot Here ]` — *Output of practical3_student_file.bat in CMD*[cite: 3]

---

### 4.5 Variables Example (`variable_example.bat`)[cite: 3]
* **File:** `variable_example.bat`[cite: 3]  
* **Objective:** Store a value in a variable and display it using `%name%`[cite: 3].

#### 💻 Script:[cite: 3]
```cmd
@echo off
 
REM Store student's name
set name=Ali
 
REM Display variable
echo Student Name: %name%
 
pause
```[cite: 3]

#### 📌 Explanation of Commands:[cite: 3]
| Command | Explanation |
| :--- | :--- |
| `set name=Ali` | Creates variable name with value Ali[cite: 3] |
| `%name%` | Retrieves the value stored in the variable[cite: 3] |

#### 🎯 Expected Output:[cite: 3]
```text
Student Name: Ali
Press any key to continue . . .
```[cite: 3]

#### 📸 Screenshots:[cite: 3]
* **Screenshot 1 - Batch file code (Notepad):** `[ Paste Screenshot Here ]` — *variable_example.bat opened in Notepad*[cite: 3]
* **Screenshot 2 - Execution in Command Prompt:** `[ Paste Screenshot Here ]` — *Output of variable_example.bat in CMD*[cite: 3]

---

### 4.6 Practical 4 - User Input (`practical4_input.bat`)[cite: 3]
* **File:** `practical4_input.bat`[cite: 3]  
* **Objective:** Accept input from the user with `set /p`[cite: 3]. *(Note: Enter your own name when prompted.)*[cite: 3]

#### 💻 Script:[cite: 3]
```cmd
@echo off
 
REM Ask user for name
set /p name=Enter your name: 
 
REM Display personalized message
echo Welcome %name% to Operating Systems Lab.
 
pause
```[cite: 3]

#### 📌 Explanation of Commands:[cite: 3]
| Command | Explanation |
| :--- | :--- |
| `set /p name=...` | Prompts the user and stores the input in name[cite: 3] |
| `echo Welcome %name% ...` | Displays a personalized message[cite: 3] |

#### 🎯 Expected Output:[cite: 3]
```text
Enter your name: Hussain
Welcome Hussain to Operating Systems Lab.
Press any key to continue . . .
```[cite: 3]

#### 📸 Screenshots:[cite: 3]
* **Screenshot 1 - Batch file code (Notepad):** `[ Paste Screenshot Here ]` — *practical4_input.bat opened in Notepad*[cite: 3]
* **Screenshot 2 - Execution in Command Prompt:** `[ Paste Screenshot Here ]` — *Output of practical4_input.bat in CMD*[cite: 3]

---

### 4.7 Multiple Inputs (`multiple_inputs.bat`)[cite: 3]
* **File:** `multiple_inputs.bat`[cite: 3]  
* **Objective:** Take more than one input and display it using `echo.` (blank line)[cite: 3].

#### 💻 Script:[cite: 3]
```cmd
@echo off
 
set /p name=Enter your name: 
set /p reg=Enter registration number: 
 
echo.
echo Student Information
echo Name: %name%
echo Registration Number: %reg%
 
pause
```[cite: 3]

#### 📌 Explanation of Commands:[cite: 3]
| Command | Explanation |
| :--- | :--- |
| `set /p` | Takes name and registration number[cite: 3] |
| `echo.` | Prints a blank line[cite: 3] |

#### 🎯 Expected Output:[cite: 3]
```text
Enter your name: Ali
Enter registration number: 2024-CS-01
 
Student Information
Name: Ali
Registration Number: 2024-CS-01
Press any key to continue . . .
```[cite: 3]

#### 📸 Screenshots:[cite: 3]
* **Screenshot 1 - Batch file code (Notepad):** `[ Paste Screenshot Here ]` — *multiple_inputs.bat opened in Notepad*[cite: 3]
* **Screenshot 2 - Execution in Command Prompt:** `[ Paste Screenshot Here ]` — *Output of multiple_inputs.bat in CMD*[cite: 3]

---

### 4.8 Practical 5 - Simple Addition (`practical5_addition.bat`)[cite: 3]
* **File:** `practical5_addition.bat`[cite: 3]  
* **Objective:** Perform arithmetic using `set /a`[cite: 3].

#### 💻 Script:[cite: 3]
```cmd
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
```[cite: 3]

#### 📌 Explanation of Commands:[cite: 3]
| Command | Explanation |
| :--- | :--- |
| `set /p num1/num2` | Stores the two numbers entered[cite: 3] |
| `set /a result=num1+num2` | Performs integer addition[cite: 3] |
| `echo Sum = %result%` | Displays the result[cite: 3] |

#### 🎯 Expected Output:[cite: 3]
```text
Enter first number: 10
Enter second number: 20
Sum = 30
Press any key to continue . . .
```[cite: 3]

#### 📸 Screenshots:[cite: 3]
* **Screenshot 1 - Batch file code (Notepad):** `[ Paste Screenshot Here ]` — *practical5_addition.bat opened in Notepad*[cite: 3]
* **Screenshot 2 - Execution in Command Prompt:** `[ Paste Screenshot Here ]` — *Output of practical5_addition.bat in CMD*[cite: 3]

---

### 4.9 IF / ELSE - Age Eligibility (`age_check.bat`)[cite: 3]
* **File:** `age_check.bat`[cite: 3]  
* **Objective:** Make a decision using `if / else` and the `GEQ` operator[cite: 3]. *(Note: Run twice: once with age 20 and once with age 15 (two screenshots if possible).)*[cite: 3]

#### 💻 Script:[cite: 3]
```cmd
@echo off
 
set /p age=Enter your age: 
 
if %age% GEQ 18 (
    echo Eligible
) else (
    echo Not Eligible
)
 
pause
```[cite: 3]

#### 📌 Explanation of Commands:[cite: 3]
| Command | Explanation |
| :--- | :--- |
| `if %age% GEQ 18` | Checks whether age is greater than or equal to 18[cite: 3] |
| `else` | Runs when the condition is false[cite: 3] |

#### 🎯 Expected Output:[cite: 3]
```text
Enter your age: 20
Eligible
Press any key to continue . . .
```[cite: 3]

#### 📸 Screenshots:[cite: 3]
* **Screenshot 1 - Batch file code (Notepad):** `[ Paste Screenshot Here ]` — *age_check.bat opened in Notepad*[cite: 3]
* **Screenshot 2 - Execution in Command Prompt:** `[ Paste Screenshot Here ]` — *Output of age_check.bat in CMD*[cite: 3]

---

### 4.10 Practical 6 - Pass/Fail Script (`practical6_passfail.bat`)[cite: 3]
* **File:** `practical6_passfail.bat`[cite: 3]  
* **Objective:** Display PASS or FAIL depending on marks[cite: 3].

#### 💻 Script:[cite: 3]
```cmd
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
```[cite: 3]

#### 📌 Explanation of Commands:[cite: 3]
| Command | Explanation |
| :--- | :--- |
| `set /p marks` | Reads the marks[cite: 3] |
| `if %marks% GEQ 50` | PASS if marks are 50 or more, else FAIL[cite: 3] |

#### 🎯 Expected Output:[cite: 3]
```text
Enter marks: 65
Result: PASS
Press any key to continue . . .
```[cite: 3]

#### 📸 Screenshots:[cite: 3]
* **Screenshot 1 - Batch file code (Notepad):** `[ Paste Screenshot Here ]` — *practical6_passfail.bat opened in Notepad*[cite: 3]
* **Screenshot 2 - Execution in Command Prompt:** `[ Paste Screenshot Here ]` — *Output of practical6_passfail.bat in CMD*[cite: 3]

---

### 4.11 File Existence Check (`exist_check.bat`)[cite: 3]
* **File:** `exist_check.bat`[cite: 3]  
* **Objective:** Check whether a file exists before acting[cite: 3]. *(Note: Run once without notes.txt, then create notes.txt and run again.)*[cite: 3]

#### 💻 Script:[cite: 3]
```cmd
@echo off
 
if exist notes.txt (
    echo File found.
) else (
    echo File does not exist.
)
 
pause
```[cite: 3]

#### 📌 Explanation of Commands:[cite: 3]
| Command | Explanation |
| :--- | :--- |
| `if exist notes.txt` | Checks if notes.txt exists in the current folder[cite: 3] |

#### 🎯 Expected Output:[cite: 3]
```text
File does not exist.   (or "File found." if notes.txt is present)
```[cite: 3]

#### 📸 Screenshots:[cite: 3]
* **Screenshot 1 - Batch file code (Notepad):** `[ Paste Screenshot Here ]` — *exist_check.bat opened in Notepad*[cite: 3]
* **Screenshot 2 - Execution in Command Prompt:** `[ Paste Screenshot Here ]` — *Output of exist_check.bat in CMD*[cite: 3]

---

### 4.12 Backup Only If File Exists (`backup_if_exists.bat`)[cite: 3]
* **File:** `backup_if_exists.bat`[cite: 3]  
* **Objective:** Combine `if exist`, `if not exist` and `copy` for a safe backup[cite: 3]. *(Note: Create report.txt in the same folder first.)*[cite: 3]

#### 💻 Script:[cite: 3]
```cmd
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
```[cite: 3]

#### 📌 Explanation of Commands:[cite: 3]
| Command | Explanation |
| :--- | :--- |
| `if exist report.txt` | Proceeds only if the report exists[cite: 3] |
| `if not exist Backup mkdir Backup` | Creates Backup only if missing[cite: 3] |
| `copy report.txt Backup` | Copies the file into Backup[cite: 3] |

#### 🎯 Expected Output:[cite: 3]
```text
        1 file(s) copied.
Backup completed.
Press any key to continue . . .
```[cite: 3]

#### 📸 Screenshots:[cite: 3]
* **Screenshot 1 - Batch file code (Notepad):** `[ Paste Screenshot Here ]` — *backup_if_exists.bat opened in Notepad*[cite: 3]
* **Screenshot 2 - Execution in Command Prompt:** `[ Paste Screenshot Here ]` — *Output of backup_if_exists.bat in CMD*[cite: 3]

---

### 4.13 Practical 7 - Create Folders Using a Loop (`practical7_loop_folders.bat`)[cite: 3]
* **File:** `practical7_loop_folders.bat`[cite: 3]  
* **Objective:** Use a for loop to create Student1 to Student5[cite: 3].

#### 💻 Script:[cite: 3]
```cmd
@echo off
 
for %%i in (1 2 3 4 5) do (
    mkdir Student%%i
)
 
echo Folders created successfully.
 
pause
```[cite: 3]

#### 📌 Explanation of Commands:[cite: 3]
| Command | Explanation |
| :--- | :--- |
| `for %%i in (1 2 3 4 5)` | Loops over the values 1 to 5[cite: 3] |
| `mkdir Student%%i` | Creates Student1 ... Student5[cite: 3] |

#### 🎯 Expected Output:[cite: 3]
```text
Folders created successfully.
Press any key to continue . . .
```[cite: 3]

#### 📸 Screenshots:[cite: 3]
* **Screenshot 1 - Batch file code (Notepad):** `[ Paste Screenshot Here ]` — *practical7_loop_folders.bat opened in Notepad*[cite: 3]
* **Screenshot 2 - Execution in Command Prompt:** `[ Paste Screenshot Here ]` — *Output of practical7_loop_folders.bat in CMD*[cite: 3]

---

### 4.14 FOR /L Loop (`forL.bat`)[cite: 3]
* **File:** `forL.bat`[cite: 3]  
* **Objective:** Use a numeric for /L loop to print numbers and create Lab1 to Lab10[cite: 3].

#### 💻 Script:[cite: 3]
```cmd
@echo off
 
for /L %%i in (1,1,5) do echo %%i
 
for /L %%i in (1,1,10) do (
    mkdir Lab%%i
)
 
echo Lab folders created.
 
pause
```[cite: 3]

#### 📌 Explanation of Commands:[cite: 3]
| Command | Explanation |
| :--- | :--- |
| `for /L %%i in (1,1,5)` | Counts from 1 to 5 with step 1[cite: 3] |
| `mkdir Lab%%i` | Creates Lab1 ... Lab10[cite: 3] |

#### 🎯 Expected Output:[cite: 3]
```text
1
2
3
4
5
Lab folders created.
Press any key to continue . . .
```[cite: 3]

#### 📸 Screenshots:[cite: 3]
* **Screenshot 1 - Batch file code (Notepad):** `[ Paste Screenshot Here ]` — *forL.bat opened in Notepad*[cite: 3]
* **Screenshot 2 - Execution in Command Prompt:** `[ Paste Screenshot Here ]` — *Output of forL.bat in CMD*[cite: 3]

---

### 4.15 Window Customization (`title_color.bat`)[cite: 3]
* **File:** `title_color.bat`[cite: 3]  
* **Objective:** Change the CMD window title and colors[cite: 3].

#### 💻 Script:[cite: 3]
```cmd
@echo off
 
title OS Lab Automation
color 0A
 
echo Title and color changed.
 
pause
```[cite: 3]

#### 📌 Explanation of Commands:[cite: 3]
| Command | Explanation |
| :--- | :--- |
| `title OS Lab Automation` | Sets the window title[cite: 3] |
| `color 0A` | Black background, light green text[cite: 3] |

#### 🎯 Expected Output:[cite: 3]
```text
Title and color changed.
Press any key to continue . . .  (green text, new window title)
```[cite: 3]

#### 📸 Screenshots:[cite: 3]
* **Screenshot 1 - Batch file code (Notepad):** `[ Paste Screenshot Here ]` — *title_color.bat opened in Notepad*[cite: 3]
* **Screenshot 2 - Execution in Command Prompt:** `[ Paste Screenshot Here ]` — *Output of title_color.bat in CMD*[cite: 3]

---

### 4.16 Practical 8 - Complete Batch Automation (`practical8_automation.bat`)[cite: 3]
* **File:** `practical8_automation.bat`[cite: 3]  
* **Objective:** Automate folder creation, file creation, backup and display in one script[cite: 3].

#### 💻 Script:[cite: 3]
```cmd
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
```[cite: 3]

#### 📌 Explanation of Commands:[cite: 3]
| Command | Explanation |
| :--- | :--- |
| `title` | Sets window title[cite: 3] |
| `set /p name` | Accepts the student name[cite: 3] |
| `mkdir / cd` | Creates and enters Student_Record[cite: 3] |
| `echo > / >>` | Writes student.txt[cite: 3] |
| `if not exist Backup mkdir Backup` | Creates Backup if missing[cite: 3] |
| `copy student.txt Backup` | Creates backup copy[cite: 3] |
| `type student.txt` | Displays file contents[cite: 3] |

#### 🎯 Expected Output:[cite: 3]
```text
Enter student name: Ali
        1 file(s) copied.
 
Student Record:
Student Name: Ali
Course: Operating Systems
Lab: Batch Scripting
 
Automation completed successfully.
Press any key to continue . . .
```[cite: 3]

#### 📸 Screenshots:[cite: 3]
* **Screenshot 1 - Batch file code (Notepad):** `[ Paste Screenshot Here ]` — *practical8_automation.bat opened in Notepad*[cite: 3]
* **Screenshot 2 - Execution in Command Prompt:** `[ Paste Screenshot Here ]` — *Output of practical8_automation.bat in CMD*[cite: 3]

---

### 4.17 Student Hands-On Activity - Course Workspace Creator (`course_workspace.bat`)[cite: 3]
* **File:** `course_workspace.bat`[cite: 3]  
* **Objective:** Create a course workspace with subfolders, an info file, a backup copy and the directory tree[cite: 3].

#### 💻 Script:[cite: 3]
```cmd
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
```[cite: 3]

#### 📌 Explanation of Commands:[cite: 3]
| Command | Explanation |
| :--- | :--- |
| `mkdir "%course%"` | Quotes allow folder names with spaces[cite: 3] |
| `tree /f` | Shows folders and files[cite: 3] |
| `copy` | Backs up course_info.txt[cite: 3] |

#### 🎯 Expected Output:[cite: 3]
```text
Enter course name: Operating Systems
        1 file(s) copied.
(tree listing of Lectures, Labs, Assignments, Backup and course_info.txt)
 
Course workspace created successfully.
Press any key to continue . . .
```[cite: 3]

#### 📸 Screenshots:[cite: 3]
* **Screenshot 1 - Batch file code (Notepad):** `[ Paste Screenshot Here ]` — *course_workspace.bat opened in Notepad*[cite: 3]
* **Screenshot 2 - Execution in Command Prompt:** `[ Paste Screenshot Here ]` — *Output of course_workspace.bat in CMD*[cite: 3]

---

### 4.18 Lab Task - Automatic Student Record Generator (`student_record.bat`)[cite: 3]
* **File:** `student_record.bat`[cite: 3]  
* **Objective:** Build the final submission script: collect student details, create folder and file, back up and verify[cite: 3].

#### 💻 Script:[cite: 3]
```cmd
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
```[cite: 3]

#### 📌 Explanation of Commands:[cite: 3]
| Command | Explanation |
| :--- | :--- |
| `set /p (x3)` | Reads name, registration number and semester[cite: 3] |
| `mkdir "%reg%" / cd` | Creates and enters the folder named after reg. no.[cite: 3] |
| `echo > / >>` | Saves details in student.txt[cite: 3] |
| `if not exist Backup mkdir Backup` | Creates Backup folder[cite: 3] |
| `copy student.txt Backup` | Copies the file into Backup[cite: 3] |
| `if exist Backup\student.txt` | Verifies backup, prints Backup Successful[cite: 3] |
| `tree /f` | Displays the complete directory structure[cite: 3] |
| `pause` | Pauses before exit[cite: 3] |

#### 🎯 Expected Output:[cite: 3]
```text
Enter student name: Ali
Enter registration number: 2024-CS-01
Enter semester: 3
        1 file(s) copied.
Backup Successful
 
(tree /f listing: Backup\student.txt and student.txt)
Press any key to continue . . .
```[cite: 3]

#### 📸 Screenshots:[cite: 3]
* **Screenshot 1 - Batch file code (Notepad):** `[ Paste Screenshot Here ]` — *student_record.bat opened in Notepad*[cite: 3]
* **Screenshot 2 - Execution in Command Prompt:** `[ Paste Screenshot Here ]` — *Output of student_record.bat in CMD*[cite: 3]
* **Screenshot 3 - Final directory structure:** `[ Paste Screenshot Here ]` — *Output of tree /f / File Explorer view of the created folder*[cite: 3]
* **Screenshot 4 - Output file (`student.txt`):** `[ Paste Screenshot Here ]` — *Contents of student.txt created by the script*[cite: 3]

---

## ❓ 5. Short Questions[cite: 3]

| Question | Answer |
| :--- | :--- |
| **What is a Batch file?** | A text file containing Windows commands that execute sequentially[cite: 3]. |
| **What does `@echo off` do?** | Hides command lines from normal output[cite: 3]. |
| **Difference between `>` and `>>`?** | `>` creates/overwrites a file; `>>` appends to it[cite: 3]. |
| **What is `set /p` used for?** | To accept input from the user[cite: 3]. |
| **What does `IF EXIST` do?** | Checks whether a file or directory exists[cite: 3]. |
| **Why are loops useful?** | They repeat operations automatically, e.g. creating many folders[cite: 3]. |

---

## 🏁 6. Conclusion[cite: 3]
In this lab, manual CMD commands were converted into Batch scripts[cite: 3]. Variables, user input, arithmetic, IF / ELSE conditions, file-existence checks and FOR loops were used to automate folder creation, file writing and backups[cite: 3]. The final `student_record.bat` script combined all these concepts into one automated workflow, showing how Batch scripting saves time and makes repetitive tasks consistent[cite: 3].
