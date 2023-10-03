set scrolloff=8
set number
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

let mapleader = " "

nnoremap <leader>pv :Vex<CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR> 
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pf :Files<CR>