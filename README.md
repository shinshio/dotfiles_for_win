# dotfiles_for_win

Windows10向けのdotfiles。

ターミナル、シェル(PowerShell)、VIMの設定をしています。

## Requirements

- [Windows Terminal](https://github.com/microsoft/terminal)
  - `settings.json`が`~\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState`にあることを確認しておくこと。
- - [VIM](https://www.kaoriya.net/software/vim/)
  - kaoriya版を推奨。vimprocがビルド済みの状態で同梱されているため。
  - `:set encoding=utf-8`にしておく。kaoriya版の場合、`vim/switches/catalog/utf-8.vim`を`vim/swtches/enable`に置いておく。
- [Git](https://gitforwindows.org/)
  - プロキシ設定など固有環境依存のモノは、`~/.gitconfig.local`を作成して入力すること。
- [Cica](https://github.com/miiton/Cica)
  - Powerline対応フォント(Windows Terminal, GVIMに使用)
- [Node.js](https://nodejs.org/ja/download/)
  - coc.nvimのエクステンションのビルドに必要。
  - yarnも用意しておくこと。`npm install -g yarn`でインストール。
- 環境変数設定
  - `HTTP_PROXY`として`プロキシサーバアドレス:ポート番号`を設定しておくこと。
  - `HTTPS_PROXY`として`プロキシサーバアドレス:ポート番号`を設定しておくこと。

## Installation

1. 上記のとおり、Windowsに`HTTP_PROXY`, `HTTPS_PROXY`を通しておくこと。
2. 上記のとおり、Gitのプロキシ設定を`~/.gitconfig.local`に入力しておくこと。
3. powershellで以下を実行する。
  途中管理者権限を要求されたら許可すること。
  ```ps1
  cd ~
  git clone https://github.com/shinshio/dotfiles_for_win.git

  cd dotfiles_for_win
  ./installer.ps1
  ```

## Uninstallation

powershellで以下を実行する。
```ps1
cd ~/dotfiles_for_win
./uninstaller.ps1
```

## Dependencies at each languages

### Golang

- goimports
  - `go get golang.org/x/tools/cmd/goimports`
