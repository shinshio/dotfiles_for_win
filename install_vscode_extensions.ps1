<#
Install VSCode extensions' from vscode_extensions
    - Required: VSCode
#>

echo "�J�n���܂�..."

if (!(Test-Path ./vscode_extensions)) {
    echo "vscode_extensions ������܂���."
} else {
    foreach ($item in Get-Content ./vscode_extensions) {
        code --install-extension $item
    }
}
code --list-extensions > ./vscode_extensions

echo "./vscode_extensions ����C���X�g�[�����܂���."
echo "�I�����܂�..."

pause
