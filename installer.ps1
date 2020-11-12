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
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

echo "Powerlineモジュールをインストールしています..."
if (!(Get-Module "posh-git")) {
    echo "  >> posh-gitをインストールします。許可を選択してください。"
    Install-Module posh-git -Scope CurrentUser
} else {
    echo "  >> posh-gitはインストール済みです。スキップします。"
}
if (!(Get-Module "oh-my-posh")) {
    echo "  >> oh-my-poshをインストールします。許可を選択してください。"
    Install-Module oh-my-posh -Scope CurrentUser
} else {
    echo "  >> oh-my-poshはインストール済みです。スキップします。"
}

echo ($script + " を実行します...")
Start-Process powershell -ArgumentList "-NoProfile -ExecutionPolicy unrestricted $script" -Verb runas

pause
