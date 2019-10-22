" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

Plug 'scrooloose/nerdtree'

Plug 'airblade/vim-gitgutter'

Plug 'valloric/youcompleteme'

Plug 'morhetz/gruvbox'

" Initialize plugin system
call plug#end()

" Settings for airline
let g:airline_powerline_fonts = 0
let g:airline_theme = 'gruvbox'

" Settings for gitgutter
let g:gitgutter_override_sign_column_highlight = 0

" Settings for NERDTree
map <C-n> :NERDTreeToggle<CR>

" Settings for the colorscheme
colorscheme gruvbox
highlight Normal ctermbg=NONE
