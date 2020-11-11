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
foreach ($linked in $files) {
    if (!$linked.PSIsContainer) {
        if ($linked.FullName -eq $MyInvocation.MyCommand.path) {
            continue
        }
        $symfile = $linked.FullName.Replace($CurrentDir, $HOME_PATH)
        if (Test-Path $symfile) {
            echo ($symfile + "`r`n  >> ���ɑ��݂���̂ŃX�L�b�v���܂��B")
            continue
        } else {
            echo ($symfile + "`r`n  >> �V���{���b�N�����N���쐬���܂��B")
            cmd /c mklink $symfile $linked.FullName
        }
    }
}

pause
