set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'tpope/vim-fugitive'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdtree'
Bundle 'Shougo/neocomplete.git'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'kien/ctrlp.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'jeetsukumaran/vim-buffergator'

Plugin 'altercation/vim-colors-solarized'

Plugin 'elzr/vim-json'

" plugin from http://vim-scripts.org/vim/scripts.html
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
" Plugin 'L9'

" plugin not on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on

" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Colors
set t_Co=256
syntax on
set background=dark
colorscheme solarized

" Tab Size
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

" Backspace
set backspace=indent,eol,start

" Status Line
set laststatus=2

" Line Numbers
set number

" Airline
" let g:airline_powerline_fonts = 1

" Powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

"
" Bindings

" Buffers

" close buffer
nmap <leader>d :bp<bar>sp<bar>bn<bar>bd<CR>

" close all buffers
nmap <leader>D :bufdo bd<CR>

" Switch between buffers
noremap <S-tab> :bp<CR>
noremap <tab> :bn<CR>

" Tabs

map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>

" open a new tab with ctrl-t
nnoremap <C-t> :tabnew<CR>

" cycle tabs left and right with ctrl
nnoremap <C-h> :tabp<CR>
nnoremap <C-l> :tabn<CR>

" Completion
let g:neocomplete#enable_at_startup = 1

" Clipboard
set clipboard=unnamed

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Nerdtree
map <C-N> :NERDTreeToggle<CR>
