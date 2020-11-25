<#
Make VSCode extensions' list
    - Required: VSCode
#>

echo "開始します..."

code --list-extensions > ./vscode_extensions

echo "./vscode_extensions を更新しました."
echo "終了します..."

pause
