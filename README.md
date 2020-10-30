# dotfiles_for_win

## 必要なもの

- VIM(ダウンロード、パス設定は割愛)
- Git(必要に応じてプロキシ設定)

## インストール

powershellで以下を実行する。
管理者権限が必要かも。
```powershell
cd ~
git clone https://github.com/shinshio/dotfiles_for_win.git

cd dotfiles_for_win
./installer.ps1
```

## アンインストール

symlinkファイルを削除する。

対象は以下。

- ~\_vimrc
- ~\vimfiles\*
- ~\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1

