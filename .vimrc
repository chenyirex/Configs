"Specify a directory for plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call plug#end()

" Include the system settings
:if filereadable( "/etc/vimrc" )
   source /etc/vimrc
:endif

"Key bindings
noremap cp yap<S-}>p
noremap <leader>a =ip
set pastetoggle=<leader>z
inoremap <> <><Left>
inoremap () ()<Left>
inoremap {} {}<Left>
inoremap [] []<Left>
inoremap "" ""<Left>
inoremap '' ''<Left>
inoremap `` ``<Left>
noremap H     ^
noremap L     $
noremap <C-x> :bp<Bar>bd #<Cr>
nmap >> <Nop>
nmap << <Nop>
vmap >> <Nop>
vmap << <Nop>
nnoremap <Tab>   >>
nnoremap <S-Tab> <<
vnoremap <Tab>   >><Esc>gv
vnoremap <S-Tab> <<<Esc>gv
map <C-n> :NERDTreeToggle<CR>
nnoremap , i<cr><Esc>
nnoremap ; ^
nnoremap . $
nmap <silent> ,/ :nohlsearch<CR>

"Case Ignore
set ignorecase
set autoindent
set smartindent
set autochdir
set number
set nobackup
set noswapfile
set mouse=a

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

