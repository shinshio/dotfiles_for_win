source $VIMRUNTIME/delmenu.vim
set langmenu=ja_jp.utf-8
source $VIMRUNTIME/menu.vim

Guifont! HackGen35Nerd\ Console:h12
GuiTabline 0
GuiPopupmenu 0

" set ambiwidth=double
set vb t_vb=
set guioptions=

" let g:save_window_file = expand('~/.vimwinpos')
" augroup SaveWindow
  " autocmd!
  " autocmd VimLeavePre * call s:save_window()
  " function! s:save_window()
    " let options = [
      " \ 'set columns=' . &columns,
      " \ 'set lines=' . &lines,
      " \ 'winpos ' . getwinposx() . ' ' . getwinposy(),
      " \ ]
    " call writefile(options, g:save_window_file)
  " endfunction
" augroup END

" if filereadable(g:save_window_file)
  " execute 'source' g:save_window_file
" e
