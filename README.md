# dotfiles_for_win

## 必要なもの

- VIM(ダウンロード、パス設定は割愛)
- Git(必要に応じてプロキシ設定)
- Powerline対応フォント([Cascadia Code PL](https://github.com/microsoft/cascadia-code/releases))
- Node.js(vim プラグインでnpm, yarnを必要とする場合)
  - npm
  - yarn

## インストール

powershellで以下を実行する。
途中管理者権限を要求されたら許可すること。
```ps1
cd ~
git clone https://github.com/shinshio/dotfiles_for_win.git

cd dotfiles_for_win
./installer.ps1
```

デフォルトでプロキシの設定をしている。
必要に応じて以下ファイルのプロキシ設定をコメントアウトすること。
- ~/.gitconfig
  - `proxy = http://in-proxy-o:8080`
- ~/Documents/WindowsPowerShell/Microsoft.PowerShell_profile.ps1
  - `Set-Item -path Env:http_proxy -value http://in-proxy-o:8080`

## アンインストール

powershellで以下を実行する。

```ps1
cd ~/dotfiles_for_win
./uninstaller.ps1
```
