<#
Dotfiles for VIM installer for windows10
    - Required: vim for windows (kaoriya)
#>

echo "ŠJn‚µ‚Ü‚·..."

$CurrentDir  = (Split-Path $MyInvocation.MyCommand.path) + "\"
$HOME_PATH = $CurrentDir + "home\"
$SCRIPT_FILENAME = "symlink.ps1"
$script = $HOME_PATH + $SCRIPT_FILENAME

echo "ŠÇ—ÒŒ ŒÀ‚ğŠl“¾‚µ‚Ä‚¢‚Ü‚·..."
Set-ExecutionPolicy RemoteSigned

echo ($script + " ‚ğÀs‚µ‚Ü‚·...")
Start-Process powershell -ArgumentList "-NoProfile -ExecutionPolicy unrestricted $script" -Verb runas

pause
