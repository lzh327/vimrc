set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

autocmd VimEnter * set vb t_vb=

" theme
try
    colorscheme molokai
catch
    colorscheme default
endtry

if has("gui_macvim") || has("gui_mac") || has("mac")
    set guifont=Monaco:h12
    set lines=50 columns=130
    map <F1> :set guifont=Monaco:h12<CR>
    map <F2> :set guifont=Monaco:h14<CR>
    macmenu Window.Toggle\ Full\ Screen\ Mode key=<C-D-CR>
elseif has("unix")
    set guifont=Monospace\ 12
    set lines=35 columns=120
    map <C-F1> :set guifont=Monospace\ 12<CR>
    map <C-F2> :set guifont=Monospace\ 14<CR>
endif

silent! so $HOME/.vim/gvimrc.mine
