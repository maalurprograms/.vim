set nocompatible              " be iMproved, required
filetype off                  " required
" Vundle ________________________________________
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

Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'https://github.com/mtscout6/syntastic-local-eslint.vim'
Plugin 'https://github.com/flazz/vim-colorschemes.git'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plugin 'https://github.com/tpope/vim-fugitive.git'
Plugin 'https://github.com/editorconfig/editorconfig-vim.git'
Plugin 'https://github.com/scrooloose/nerdcommenter.git'
Plugin 'https://github.com/vim-syntastic/syntastic.git'
Plugin 'https://github.com/itchyny/lightline.vim.git'
Plugin 'https://github.com/davidhalter/jedi-vim.git'
Plugin 'ervandew/supertab'

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

" NERDTree ______________________________________
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1

" Ctrl + p ______________________________________
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>'],
    \ }
map <C-T> :CtrlPBuffer<CR>
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Vim ___________________________________________

" Custom Keys -----------------------------------
let mapleader="ö"
map <leader>f :NERDTreeFind<cr>
map <leader>t :NERDTreeToggle<cr>
" -----------------------------------------------

" Snippets --------------------------------------
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/ultisnips']
"------------------------------------------------

if &term =~ '256color'
    " Disable Background Color Erase (BCE) so that color schemes
    " work properly when Vim is used inside tmux and GNU screen.
    set t_ut=
endif

filetype plugin on
syntax on
set number
set nowrap

set tabstop=4
set softtabstop=4
set shiftwidth=4

set background=dark
set termguicolors " if you want to run vim in a terminal
colorscheme breezy

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

autocmd FileType py highlight OverLength ctermbg=red ctermfg=white guibg=#592929
autocmd FileType py match OverLength /\%81v.\+/

let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

set clipboard=unnamedplus

" Lightline ______________________________________
let g:lightline = {
      \ 'colorscheme': 'breezy',
      \ }

" Syntastic _____________________________________
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_python_checkers = ['flake8']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Jedi
let g:jedi#use_tabs_not_buffers = 1
