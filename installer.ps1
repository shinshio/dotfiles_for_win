Set-ExecutionPolicy RemoteSigned

$CurrentDir  = (Split-Path $MyInvocation.MyCommand.path) + "\"
$scriptfile = $CurrentDir + "src\symlink.ps1"
Start-Process powershell -ArgumentList "-NoProfile -ExecutionPolicy unrestricted $scriptfile" -Verb runas
