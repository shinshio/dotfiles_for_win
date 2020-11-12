<#
Dotfiles for VIM installer for windows10
    - Required: vim for windows (kaoriya)
#>

$CurrentDir  = (Split-Path $MyInvocation.MyCommand.path)
$HOME_PATH = $env:USERPROFILE

# mkdir

xcopy /t/e/y $CurrentDir $HOME_PATH


#mklink include subfolder

$files = Get-ChildItem $CurrentDir -Recurse
foreach ($sourcefile in $files) {
    if (!$sourcefile.PSIsContainer) {
        if ($sourcefile.FullName -eq $MyInvocation.MyCommand.path) {
            continue
        }
        $linkfile = $sourcefile.FullName.Replace($CurrentDir, $HOME_PATH)
        if (Test-Path $linkfile) {
            echo ($linkfile + "`r`n  >> �㏑�����܂�...")
            Remove-Item -Force $linkfile
        } else {
            echo ($linkfile + "`r`n  >> �V�K�쐬���܂�...")
        }
        cmd /c mklink $linkfile $sourcefile.FullName
    }
}

echo ([string]($files|Measure-Object).Count + "�̃t�@�C�����������܂���...")
pause
