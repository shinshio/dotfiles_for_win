<#
Dotfiles for VIM installer for windows10
    - Required: vim for windows (kaoriya)
#>

$CurrentDir  = (Split-Path $MyInvocation.MyCommand.path)
$HOME_PATH = $env:USERPROFILE

# mkdir

xcopy /t/e $CurrentDir $HOME_PATH


#mklink include subfolder

$files = Get-ChildItem $CurrentDir -Recurse
foreach ($linked in $files) {
    if (!$linked.PSIsContainer) {
        if ($linked.FullName -eq $MyInvocation.MyCommand.path) {
            continue
        }
        $symfile = $linked.FullName.Replace($CurrentDir, $HOME_PATH)
        echo ($linked.FullName + "`r`n>> " + $symfile)
        cmd /c mklink $symfile $linked.FullName
    }
}

pause
