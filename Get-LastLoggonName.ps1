# had issues getting Read-Host to work, so to debug the script i used Transcripts
# Output location C:\Temp\Output.log
Start-Transcript -Path C:\Temp\Output.log
try { 
    $ErrorActionPreference = "Stop"
    # Check Registry for last logged on user display name
    $key = [Microsoft.Win32.RegistryKey]::OpenBaseKey([Microsoft.Win32.RegistryHive]::LocalMachine, [Microsoft.Win32.RegistryView]::Registry64)
    $LastLoggedOnDisplayName = $key.OpenSubKey("SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI")
    $Fullname = $LastLoggedOnDisplayName.GetValue("LastLoggedOnDisplayName")

    # Write User display name to console
    Write-Host Full name : $Fullname
}
catch {
    Write-Output $_
}
# End transcript
Stop-Transcript

# Graceful exit
Exit 0
