<#
Dotfiles for VIM uninstaller for windows10
    - Required: vim for windows (kaoriya)
#>

$msg = Read-Host "�A���C���X�g�[���[�����s���܂���?(y/n)"
if ($msg -ne "y") {
    echo "�I�����܂�..."
    exit
}

echo "�J�n���܂�..."

$SRC_DIR  = (Split-Path $MyInvocation.MyCommand.path) + "\home"
$HOME_PATH = $env:USERPROFILE


#delete files linked in src files at this dir

$files = Get-ChildItem $SRC_DIR -Recurse
foreach ($sourcefile in $files) {
    if (!$sourcefile.PSIsContainer) {
        $linkfile = $sourcefile.FullName.Replace($SRC_DIR, $HOME_PATH)
        if (Test-Path $linkfile) {
            echo ($linkfile + "`r`n  >> �폜���܂�...")
            Remove-Item -Force $linkfile
        }
    }
}

echo ([string]($files|Measure-Object).Count + "�̃t�@�C�����������܂���...")
pause
