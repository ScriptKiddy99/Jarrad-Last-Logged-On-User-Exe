# Jarrad-Last-Logged-On-User-Exe
Creating a Winrar SFX executable to run powershell  code to obtain last logged in user display name

 **Build Instructions**

 1. Download this repository
 2. Install WinRar (https://www.win-rar.com/download.html?&L=0)
 3. Follow the [following guide](http://www.systanddeploy.com/2016/04/how-to-create-exe-using-winrar-to-run.html?fbclid=IwAR3a_RCE4cebEw-BhdnHiXWHu5OgLoWWP7wynVVrSxfhb748SJwdYp_yjjQ) on settnig up a Winrar SFX Executable file, 
 Use the script file from this repository as your source (Unless you want to use another script)
 But for the section on "Comment Text" click "Load comment from file" and use the "CommentText.txt" file from this repo
 4. Run the executable, Output will be logged to C:\Temp

**Note**
If using a custom script make sure to update the filename in the Comments, as it current points to "Get-LastLogonName.ps1" as per this repository configuration.

Setup=C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -sta -WindowStyle Hidden -noprofile -executionpolicy bypass -file %temp%\Get-LastLoggonName.ps1

Should be 

Setup=C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -sta -WindowStyle Hidden -noprofile -executionpolicy bypass -file %temp%\YOUR_FILE_NAME_HERE_.ps1
