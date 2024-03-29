source $VIMRUNTIME/delmenu.vim
set langmenu=ja_jp.utf-8
source $VIMRUNTIME/menu.vim

if has('nvim')
  Guifont! HackGen35Nerd\ Console:h12
  GuiTabline 0
  GuiPopupmenu 0
else
  set guifont=HackGen35Nerd_Console:h12
endif

set background=dark
if has ('nvim')
  colorscheme monokai
endif

if !has('nvim')
  set ambiwidth=double
endif

set vb t_vb=
set guioptions=

let g:save_window_file = expand('~/.vimwinpos')
augroup SaveWindow
  autocmd!
  autocmd VimLeavePre * call s:save_window()
  function! s:save_window()
    let options = [
      \ 'set columns=' . &columns,
      \ 'set lines=' . &lines,
      \ 'winpos ' . getwinposx() . ' ' . getwinposy(),
      \ ]
    call writefile(options, g:save_window_file)
  endfunction
augroup END

if !has ('nvim')
  if filereadable(g:save_window_file)
    execute 'source' g:save_window_file
  endif
endif
