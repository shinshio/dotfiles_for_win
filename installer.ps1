<#
Dotfiles for VIM installer for windows10
    - Required: vim for windows (kaoriya)
#>

echo "開始します..."

$CurrentDir  = (Split-Path $MyInvocation.MyCommand.path) + "\"
$HOME_PATH = $CurrentDir + "home\"
$SCRIPT_FILENAME = "symlink.ps1"
$script = $HOME_PATH + $SCRIPT_FILENAME

echo "管理者権限を獲得しています..."
Set-ExecutionPolicy RemoteSigned

echo "Powerlineモジュールをインストールしています..."
Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser

echo ($script + " を実行します...")
Start-Process powershell -ArgumentList "-NoProfile -ExecutionPolicy unrestricted $script" -Verb runas

pause
