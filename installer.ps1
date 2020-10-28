Set-ExecutionPolicy RemoteSigned

$CurrentDir  = (Split-Path $MyInvocation.MyCommand.path) + "\"
$VIM_PATH = $CurrentDir + "vim\"
$PS1_PATH = $CurrentDir + "powershell\"
$SCRIPT_FILENAME = "symlink.ps1"

$script_ps1 = $PS1_PATH + $SCRIPT_FILENAME
$script_vim = $VIM_PATH + $SCRIPT_FILENAME

Start-Process powershell -ArgumentList "-NoProfile -ExecutionPolicy unrestricted $script_ps1" -Verb runas
Start-Process powershell -ArgumentList "-NoProfile -ExecutionPolicy unrestricted $script_vim" -Verb runas

$script_ps1
$script_vim

pause
