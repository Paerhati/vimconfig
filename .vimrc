" ------ Source Vimrc Files ------
source ~\.vim\airline.vim

" ------ Vundle Configurations (DO NOT EDIT) ------

filetype off                  " required
set nocompatible              " be iMproved, required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" ------ Vundle Plugins ------

Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'PProvost/vim-ps1'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'lilydjwg/colorizer'
Plugin 'shime/vim-livedown'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'tomasiser/vim-code-dark'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'octol/vim-cpp-enhanced-highlight'

" ------ Vundle Configurations (DO NOT EDIT) -------

call vundle#end()            " required
filetype plugin indent on    " required

" ------ Editor Settings ------

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
set vb t_vb=                                " Turn off beeping and flashing >:(
set belloff=all                             " Turn off all unncessary flashing
set laststatus=2                            " Fix for lightline not appearing
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set guioptions+=k
set guifont=DejaVu_Sans_Mono_for_Powerline:h10
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

syntax on
colorscheme codedark

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" ------ Key Remappings ------

nnoremap <F9>                   :set wrap!<CR>                              " Toggle Line Wrapping
nnoremap <silent><leader>nb     :set relativenumber!<CR>                    " Set Relative Line Numbering
nnoremap <silent><C-l>          :nohl<CR>                                   " Hide search highlighting
nnoremap <silent><C-j>          m`:silent +g/\m^\s*$/d<CR>``:noh<CR>        " Delete blank line below
nnoremap <silent><C-k>          m`:silent -g/\m^\s*$/d<CR>``:noh<CR>        " Delete blank line above
nnoremap <silent><C-f>          :CtrlPLine<CR>                              " Initiate CtrlP line search
nnoremap <silent><A-f>          :CtrlPLine %<CR>                            " Initiate CtrlP line search in only the current buffer
nnoremap <silent><A-j>          :set paste<CR>m`o<Esc>``:set nopaste<CR>    " Delete blank line below
nnoremap <silent><A-k>          :set paste<CR>m`O<Esc>``:set nopaste<CR>    " Append blank line above
nnoremap <silent><A-p>          :CtrlPMRUFiles<CR>                          " Open CtrlP with most rescent files
nnoremap <silent><leader>nt     :NERDTreeFind<CR>                           " Open NerdTree

" ------ Vim CPP Enhanced Highlighting Config ------

let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"

let g:cpp_concepts_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_no_function_highlight = 1
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1

let g:airline#extensions#tabline#enabled = 1
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_open = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_cpp_checkers = ['gcc']
