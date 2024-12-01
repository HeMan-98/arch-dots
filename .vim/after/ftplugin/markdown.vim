" Mapping Markdown to PDF (Dependencies - pandoc,texlive)
nnoremap <buffer> <leader>m :w \| :!pandoc -f markdown -t pdf % -o $(echo % \| cut -d . -f 1).pdf
" Mapping PDF Preview (Dependencies - zathura)
nnoremap <buffer> <leader>p :!zathura $(echo % \| cut -d . -f 1).pdf &
