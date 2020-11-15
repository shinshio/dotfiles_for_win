# dotfiles_for_win

## 必要なもの

- VIM(ダウンロード、パス設定は割愛)
- Git(必要に応じてプロキシ設定)
- Powerline対応フォント([Cascadia Code PL](https://github.com/microsoft/cascadia-code/releases))

## インストール

powershellで以下を実行する。
途中管理者権限を要求されたら許可すること。
```ps1
cd ~
git clone https://github.com/shinshio/dotfiles_for_win.git

cd dotfiles_for_win
./installer.ps1
```

対象は以下。

- ~/_vimrc
- ~/_gvimrc
- ~/vimfiles/*
- ~/Documents/WindowsPowerShell/Microsoft.PowerShell_profile.ps1
- ~/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json

## アンインストール

powershellで以下を実行する。

```ps1
cd ~/dotfiles_for_win
./uninstaller.ps1
```
