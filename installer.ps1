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
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

echo "Powerline���W���[�����C���X�g�[�����Ă��܂�..."
if (!(Get-Module "posh-git")) {
    echo "  >> posh-git���C���X�g�[�����܂��B����I�����Ă��������B"
    Install-Module posh-git -Scope CurrentUser
} else {
    echo "  >> posh-git�̓C���X�g�[���ς݂ł��B�X�L�b�v���܂��B"
}
if (!(Get-Module "oh-my-posh")) {
    echo "  >> oh-my-posh���C���X�g�[�����܂��B����I�����Ă��������B"
    Install-Module oh-my-posh -Scope CurrentUser
} else {
    echo "  >> oh-my-posh�̓C���X�g�[���ς݂ł��B�X�L�b�v���܂��B"
}

echo ($script + " �����s���܂�...")
Start-Process powershell -ArgumentList "-NoProfile -ExecutionPolicy unrestricted $script" -Verb runas

pause
