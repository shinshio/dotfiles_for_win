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
            echo ($linkfile + "`r`n  >> 上書きします...")
            Remove-Item -Force $linkfile
        } else {
            echo ($linkfile + "`r`n  >> 新規作成します...")
        }
        cmd /c mklink $linkfile $sourcefile.FullName
    }
}

echo ([string]($files|Measure-Object).Count + "個のファイルを処理しました...")
pause
