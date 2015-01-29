set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdtree'
Bundle 'Shougo/neocomplete.git'
Plugin 'kien/ctrlp.vim'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'airblade/vim-gitgutter'
Plugin 'chriskempson/base16-vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bkad/CamelCaseMotion'
Plugin 'danro/rename.vim'
Plugin 'tpope/vim-rails'
Plugin 'vim-scripts/EasyGrep'
Plugin 'thoughtbot/vim-rspec'
Bundle 'jgdavey/tslime.vim'

Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'vim-ruby/vim-ruby'
Plugin 'AndrewRadev/vim-eco'
Plugin 'elzr/vim-json'

call vundle#end()            " required
filetype plugin indent on    " required


" Colors
set t_Co=256
syntax on
set background=dark
colorscheme solarized
highlight clear SignColumn
highlight GitGutterAdd ctermfg=green

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
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Ruler
set colorcolumn=120
set nowrap

" CoffeeScript
let g:coffee_lint_options = '-f ~/coffeelint.json'

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

" pane navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Completion
let g:neocomplete#enable_at_startup = 1

function! Multiple_cursors_before()
  if exists(':NeoCompleteLock')==2
    exe 'NeoCompleteLock'
  endif
endfunction

function! Multiple_cursors_after()
  if exists(':NeoCompleteUnlock')==2
    exe 'NeoCompleteUnlock'
  endif
endfunction

" Clipboard
" set clipboard=unnamed

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_max_files=0
set wildignore+=*/.git/*,*.scssc

" Nerdtree
map <C-e> :NERDTreeToggle<CR>
nmap ≥ :NERDTreeFind<CR>

" CamelCaseMotion
map „ <Plug>CamelCaseMotion_w
map ı <Plug>CamelCaseMotion_b
map ´ <Plug>CamelCaseMotion_e

" RSpec
let g:rspec_command = "zeus rspec {spec}"
let g:rspec_runner = "os_x_iterm"

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
