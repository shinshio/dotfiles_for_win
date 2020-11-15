<#
Dotfiles for VIM uninstaller for windows10
    - Required: vim for windows (kaoriya)
#>

$msg = Read-Host "アンインストーラーを実行しますか?(y/n)"
if ($msg -ne "y") {
    echo "終了します..."
    exit
}

echo "開始します..."

$SRC_DIR  = (Split-Path $MyInvocation.MyCommand.path) + "\home"
$HOME_PATH = $env:USERPROFILE


#delete files linked in src files at this dir

$files = Get-ChildItem $SRC_DIR -Recurse
foreach ($sourcefile in $files) {
    if (!$sourcefile.PSIsContainer) {
        $linkfile = $sourcefile.FullName.Replace($SRC_DIR, $HOME_PATH)
        if (Test-Path $linkfile) {
            echo ($linkfile + "`r`n  >> 削除します...")
            Remove-Item -Force $linkfile
        }
    }
}

echo ([string]($files|Measure-Object).Count + "個のファイルを処理しました...")
pause
