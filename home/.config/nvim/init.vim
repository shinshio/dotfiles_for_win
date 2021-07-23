let g:python3_host_prog='C:\Users\10035637417\AppData\Local\Programs\Python\Python39\python.exe'

" -----------------------
"   Open files encoding
" -----------------------
" if exists('&ambw')
  " set ambiwidth=double
" endif
set fileencodings=utf-8,sjis,cp932

" --------
"   file
" --------
set noswapfile
set nobackup
set noundofile
set autoread
set hidden
set showcmd
set wildmode=list:full

" --------
"   view
" --------
set number
set virtualedit=onemore " block cursor
set smartindent
set visualbell
" set t_vb=
set showmatch  " highlight match brackets
set matchtime=1 " set highlight match brackets time
syntax enable
set nofoldenable
set wrap
set display=lastline
set splitbelow
set splitright
set mouse=a
set laststatus=2
set cmdheight=2
set showtabline=2

" ----------------------------------
"   status line(without powerline)
" ----------------------------------
"set statusline=%F  " file path
"set statusline+=%m " flag of no save
"set statusline+=%r " flag of readonly
"set statusline+=%h " flag of help
"set statusline+=%w " flag of preview
"set statusline+=%= " separate line
"set statusline+=[ENC=%{&fileencoding}] " file encoding
"set statusline+=[ROW=%l/%L] " row number
"set laststatus=2   " show last status

" ----------
"   Indent
" ----------
set list listchars=tab:\?\- " change tab character
set expandtab    " change tab to spaces
set tabstop=4
set shiftwidth=4
set shiftround

" ----------
"   search
" ----------
set ignorecase " if lowercase, search upper and lower
set smartcase  " if uppercase, search only upper
set incsearch  " highlight character at every input character
set wrapscan   " wrap search results
set hlsearch   " highlight searched word

" ----------------
"   completement
" ----------------
set completeopt=menuone,noinsert

" ---------------
"   key binding
" ---------------
nnoremap <Space> <Nop>
let mapleader = "\<Space>"

" ---------
"   shell
" ---------
" powershell
if has('win32')
  set shell=powershell.exe
  " set shell=C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
  set shellcmdflag=-c
  set shellquote=\"
  set shellxquote=
endif

" --------
"   dein
" --------
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein installation check {{{
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . s:dein_repo_dir
endif
" }}}

" begin settings {{{
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " .toml file
  let s:rc_dir = expand('~/.config/nvim')
  if !isdirectory(s:rc_dir)
    call mkdir(s:rc_dir, 'p')
  endif
  let s:toml = s:rc_dir . '/dein.toml'
  let s:toml_lazy = s:rc_dir . '/dein_lazy.toml'
  let s:toml_vscode = s:rc_dir . '/dein_vscode.toml'

  " read toml and cache
  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:toml_lazy, {'lazy': 1})
  " if exists('g:vscode')
    " call dein#load_toml(s:toml_vscode, {'lazy': 0})
  " endif

  " if exists('g:vscode')
    " call dein#add('asvetliakov/vim-easymotion')
  " else
    " call dein#add('easymotion/vim-easymotion')
  " endif

  " end settings
  call dein#end()
  call dein#save_state()
endif
" }}}

" plugin installation check {{{
if dein#check_install()
  call dein#install()
endif
" }}}

" plugin remove check {{{
let s:removed_plugins = dein#check_clean()
if len(s:removed_plugins) > 0
  call map(s:removed_plugins, "delete(v:val, 'rf')")
  call dein#recache_runtimepath()
endif

filetype plugin indent on
set shellslash
set t_Co=256
set termguicolors

" ---------------
"   key binding
" ---------------
" move
inoremap jj      <ESC>
inoremap <C-j> <ESC>
nnoremap j          gj
nnoremap k          gk
noremap  <S-h>      0
noremap  <S-l>      $
nmap     <Esc><Esc> :nohlsearch<CR><Esc>
" edit
nnoremap Y y$
nnoremap +          <C-a>
nnoremap -          <C-x>
nnoremap <CR> i<CR><Esc>
" completement
inoremap <expr><C-n> pumvisible() ? "<Down>" : "<C-n>"
inoremap <expr><C-p> pumvisible() ? "<Up>" : "<C-p>"
inoremap <expr><Tab> pumvisible() ? "<C-y>" : "<Tab>"
" quickfix"
au FileType qf nnoremap <silent><buffer>q :quit<CR>


