runtime vimrc
" ------ Vundle Configurations (DO NOT EDIT) ------

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" ------ Vundle Plugins ------

Plugin 'Valloric/YouCompleteMe'
Plugin 'PProvost/vim-ps1'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'lilydjwg/colorizer'
Plugin 'itchyny/lightline.vim'

" ------ Vundle Configurations (DO NOT EDIT) -------

call vundle#end()            " required
filetype plugin indent on    " required

" ------ Editor Settings ------

syntax on " Turn on Syntax Highlighting
colorscheme slate

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

set encoding=utf-8
set bs=2
set tabstop=4
set shiftwidth=4
set expandtab
set number
set ignorecase
set smartcase
set scrolloff=70                            " Keep the screen vertically centered on cursor
set hlsearch                                " Turn on search highlighting
set wildchar=<Tab> wildmenu wildmode=full   " Pressing tab will show buffer list

" ------ Key Remappings ------

nnoremap <F9>                   :set wrap!<CR>                              " Toggle Line Wrapping
nnoremap <silent> <leader>nb    :set relativenumber!<CR>                    " Set Relative Line Numbering
nnoremap <silent> <C-l>         :nohl<CR><C-l>                              " Hide search highlighting
nnoremap <silent> <A-j>         :set paste<CR>m`o<ESC>``:set nopaste<CR>    " Paste new line under
nnoremap <silent> <A-k>         :set paste<CR>m`O<ESC>``:set nopaste<CR>    " Paste new line above

" ------ Vim CPP Enhanced Highlighting Config ------

let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1
