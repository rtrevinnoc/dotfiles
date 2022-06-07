call plug#begin('~/.local/share/nvim/plugged')

Plug 'https://gitlab.com/yorickpeterse/vim-paper.git'
Plug 'davidhalter/jedi-vim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1

Plug 'zchee/deoplete-jedi'
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
let g:airline_theme='minimalist' " <theme> is a valid theme name

Plug 'jiangmiao/auto-pairs'

Plug 'scrooloose/nerdcommenter'

Plug 'sbdchd/neoformat'
" Enable alignment
let g:neoformat_basic_format_align = 1
" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1
" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

Plug 'davidhalter/jedi-vim'
Plug 'Shougo/neco-syntax'
" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0
" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

Plug 'scrooloose/nerdtree'

Plug 'neomake/neomake'
let g:neomake_python_enabled_makers = ['pylint']

Plug 'terryma/vim-multiple-cursors'

Plug 'machakann/vim-highlightedyank'
hi HighlightedyankRegion cterm=reverse gui=reverse
" set highlight duration time to 1000 ms, i.e., 1 second
let g:highlightedyank_highlight_duration = 1000

Plug 'bluz71/vim-nightfly-guicolors'
Plug 'morhetz/gruvbox'
Plug 'relastle/bluewery.vim'
Plug 'eemed/sitruuna.vim'
Plug 'whatyouhide/vim-gotham'

Plug 'SirVer/ultisnips'

Plug 'honza/vim-snippets'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

Plug 'tomlion/vim-solidity'
Plug 'w0ng/vim-hybrid'
Plug 'mcchrish/zenbones.nvim'

call plug#end()

call neomake#configure#automake('nrwi', 500)
set termguicolors
color paper
:set number relativenumber
:set nowrap
:set ignorecase
:set smartcase
:set mouse=a
set clipboard+=unnamedplus
nnoremap S :%s///g<Left><Left><Left>
