" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'morhetz/gruvbox'

Plug 'scrooloose/nerdtree'

Plug 'airblade/vim-gitgutter'

Plug 'valloric/youcompleteme'

Plug 'scrooloose/syntastic'

Plug '907th/vim-auto-save'

" Initialize plugin system
call plug#end()

" Colorscheme and other general settings first, so we can modify them later
colorscheme gruvbox
syntax on
set nu

" Split keybindings
map <C-v> :vs<CR>

" Settings for airline
let g:airline_powerline_fonts = 0
let g:airline_theme = 'gruvbox'

" Settings for gitgutter
let g:gitgutter_override_sign_column_highlight = 0
highlight SignColumn ctermbg=NONE
highlight GitGutterAdd    guifg=<X> guibg=<X> ctermfg=2 ctermbg=0
highlight GitGutterChange guifg=<X> guibg=<X> ctermfg=3 ctermbg=0
highlight GitGutterDelete guifg=<X> guibg=<X> ctermfg=1 ctermbg=0
highlight GitGutterDeleteChange guifg=<X> guibg=<X> ctermfg=3 ctermbg=0

" Settings for synastic
highlight SyntasticError ctermfg=3 ctermbg=0 guifg=<X> guibg=<X>
highlight SyntasticWarning ctermfg=3 ctermbg=0 guifg=<X> guibg=<X>
highlight SyntasticStyleError ctermfg=3 ctermbg=0 guifg=<X> guibg=<X>
highlight SyntasticStyleWarning ctermfg=3 ctermbg=0 guifg=<X> guibg=<X>
let g:syntastic_python_checkers = ['pylint']

" Settings for NERDTree
map <C-n> :NERDTreeToggle<CR>

" Settings for YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
highlight Pmenu guifg=<X> guibg=<X> ctermfg=7 ctermbg=0
highlight PmenuSel guifg=<X> guibg=<X> ctermfg=7 ctermbg=8

" Settings for vim-auto-save
let g:auto_save = 1
let g:auto_save_events = ["InsertLeave", "TextChanged"]

" Settings for moving between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Settings for Python indentation
set tabstop=4
set shiftwidth=4
filetype indent on

" Settings for UTF-8 encoding
set encoding=utf-8

" Use default terminal background instead of Gruvbox's one
highlight Normal ctermbg=NONE
