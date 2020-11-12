# dotfiles_for_win

## 必要なもの

- VIM(ダウンロード、パス設定は割愛)
- Git(必要に応じてプロキシ設定)
- Powerline対応フォント([Cascadia Code PL](https://github.com/microsoft/cascadia-code/releases))

## インストール

powershellで以下を実行する。
管理者権限が必要かも。
```ps1
cd ~
git clone https://github.com/shinshio/dotfiles_for_win.git

cd dotfiles_for_win
./installer.ps1
```

## アンインストール

symlinkファイルを削除する。

対象は以下。

- ~/_vimrc
- ~/_gvimrc
- ~/vimfiles/*
- ~/Documents/WindowsPowerShell/Microsoft.PowerShell_profile.ps1
- ~/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json

