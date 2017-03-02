set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Examples --------------------------------------------------------------

" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'

" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" -----------------------------------------------------------------------

" Installed -------------------------------------------------------------

" Colorscheme package
Plugin 'https://github.com/flazz/vim-colorschemes.git'

" NERDtree ~ Visualy displayed project file tree
Plugin 'https://github.com/scrooloose/nerdtree.git'

" Ctrl P ~ Quick search files and open them
Plugin 'https://github.com/ctrlpvim/ctrlp.vim.git'

" fugitive ~ git integration
Plugin 'https://github.com/tpope/vim-fugitive.git'

" editorconf-vim ~ Configure settings for your porject
Plugin 'https://github.com/editorconfig/editorconfig-vim.git'

" NERDcommenter
Plugin 'https://github.com/scrooloose/nerdcommenter.git'

" syntastic ~ Syntax check
Plugin 'https://github.com/vim-syntastic/syntastic.git'

" lightline
Plugin 'https://github.com/itchyny/lightline.vim.git'

" -----------------------------------------------------------------------

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p

autocmd BufWinEnter * NERDTree
autocmd BufWinEnter * wincmd p

let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>'],
    \ }

set tabstop=4
set softtabstop=4
set shiftwidth=4

syntax on
set number

set background=dark
set termguicolors " if you want to run vim in a terminal
colorscheme breezy

let g:lightline = {
      \ 'colorscheme': 'breezy',
      \ }

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
