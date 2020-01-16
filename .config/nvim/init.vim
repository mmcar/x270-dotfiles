set number

set relativenumber
set undofile " maintain undo history between sessions
set undodir=~/.config/nvim/undodir
set shell=/usr/bin/fish
set mouse=a " enable mouse in all contexts
set cursorline
"open help buffers in vsplit instead of split
augroup vimrc_help
	autocmd!
	autocmd BufEnter *.txt if &buftype == 'help' | wincmd L | endif
augroup END

" Plug 
call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'jceb/vim-orgmode'
Plug 'dag/vim-fish' " syntax highlighting
Plug 'rafi/awesome-vim-colorschemes'
Plug 'wellle/targets.vim'
Plug 'psliwka/vim-smoothie' " Smooth scroll with C-d
Plug 'ryanoasis/vim-devicons'
call plug#end()

nnoremap <Space> <NOP>
let mapleader = " "

nmap <leader>, :NERDTreeToggle<CR>

"Goyo and Limelight 
nmap <leader>g :Goyo<CR>
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
let g:limelight_conceal_ctermfg = 'gray'

" easy change init.vim
nnoremap <leader>v :e ~/.config/nvim/init.vim<CR>
nnoremap <leader>V :so ~/.config/nvim/init.vim<CR>

" easy open vim notes
nnoremap <leader><C-v> :e ~/.config/nvim/notes.org<CR>

" split config
nnoremap <leader>j :split<CR>
nnoremap <leader>l :vsplit<CR>
nnoremap <M-h> <C-w>h
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-w>k
nnoremap <M-l> <C-w>l

nnoremap <leader>d :q<CR>

colorscheme solarized8

"Coc settings
source ~/.config/nvim/coc-config.vim

" custom status line
source ~/.config/nvim/statusline.vim

" move cursor and line with C-j C-k while in normal mode
nnoremap <C-j> <C-e>j
nnoremap <C-k> <C-y>k

nnoremap <silent> <C-s> :call smoothie#upwards() <CR>
