augroup filetypedetect
    autocmd!
    au BufRead,BufNewFile *.py setfiletype python
    au BufRead,BufNewFile *.html setfiletype html
    au BufRead,BufNewFile *.css setfiletype css
    au BufRead,BufNewFile *.ps1 setfiletype ps1
    au BufRead,BufNewFile *.md, *.mkd setfiletype markdown
    au BufRead,BufNewFile *.toml setfiletype toml
augroup END
