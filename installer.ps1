<#
Dotfiles for VIM installer for windows10
    - Required: vim for windows (kaoriya)
#>

echo "�J�n���܂�..."

$CurrentDir  = (Split-Path $MyInvocation.MyCommand.path) + "\"
$HOME_PATH = $CurrentDir + "home\"
$SCRIPT_FILENAME = "symlink.ps1"
$script = $HOME_PATH + $SCRIPT_FILENAME

echo "�Ǘ��Ҍ������l�����Ă��܂�..."
Set-ExecutionPolicy RemoteSigned

echo "Powerline���W���[�����C���X�g�[�����Ă��܂�..."
Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser

echo ($script + " �����s���܂�...")
Start-Process powershell -ArgumentList "-NoProfile -ExecutionPolicy unrestricted $script" -Verb runas

pause
