set number
set relativenumber
set undofile " maintain undo history between sessions
set undodir=~/.config/nvim/undodir

" Plug
call plug#begin('~/.local/share/nvim/plugged')
Plug 'https://github.com/itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'liuchengxu/vim-which-key'
Plug 'jceb/vim-orgmode'
Plug 'dag/vim-fish'
call plug#end()

let mapleader = ","

nmap <leader>, :NERDTreeToggle<CR>
nmap <leader>g :Goyo<CR>

" edit init.vim
nnoremap <leader>` :e ~/.config/nvim/init.vim<CR>
" source init.vim
nnoremap <leader>~ :so ~/.config/nvim/init.vim<CR>
