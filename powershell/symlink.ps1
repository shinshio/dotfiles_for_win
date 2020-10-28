<#
profile file for powershell
#>

$CurrentDir  = (Split-Path $MyInvocation.MyCommand.path) + "\"
$PROFILE_PATH = $env:USERPROFILE + "\Documents\WindowsPowerShell\"
$PROFILE_FILENAME = "Microsoft.PowerShell_profile.ps1"


# profile
if (!(Test-Path $PROFILE_PATH)) {
    mkdir $PROFILE_PATH
}

cmd /c mklink ($PROFILE_PATH + $PROFILE_FILENAME) ($CurrentDir + $PROFILE_FILENAME)

pause
