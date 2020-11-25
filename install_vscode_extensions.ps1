<#
Install VSCode extensions' from vscode_extensions
    - Required: VSCode
#>

echo "開始します..."

if (!(Test-Path ./vscode_extensions)) {
    echo "vscode_extensions がありません."
} else {
    foreach ($item in Get-Content ./vscode_extensions) {
        code --install-extension $item
    }
}
code --list-extensions > ./vscode_extensions

echo "./vscode_extensions からインストールしました."
echo "終了します..."

pause
