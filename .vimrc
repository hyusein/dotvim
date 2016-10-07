let g:ctrlp_root_markers = ['.ctrlp']
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Enable some useful features
set tabstop=3
set shiftwidth=3
set expandtab
set autoindent
set cindent
set hlsearch
set number
set hidden
set incsearch
set laststatus=2 "always show status line

" Turn off swap files
set noswapfile

set wildmode=list:full
set wildignore=*.swp,*.bak
set wildignore+=*.pyc,*.class,*.sln,*.Master,*.csproj,*.csproj.user,*.cache,*.dll,*.pdb,*.min.*
set wildignore+=*/.git/**/*,*/.hg/**/*,*/.svn/**/*
set wildignore+=tags
set wildignore+=*.tar.*

imap <C-S> <Esc>:w<CR>i
map <C-S> :w<CR>i

" Easier navigation between the windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Remove trailing spaces
nnoremap <silent> <F12> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Fast buffer switch
nnoremap <F6> :buffers<CR>:buffer<Space>

" Fast exit
nnoremap <F3> :qall!<CR>

" Toggle NERDTree with \n
map <leader>n :NERDTreeToggle<CR>

" Toggle TagList
map <leader>p :TlistToggle<CR>

nmap <buffer> <silent> <leader> ,PP
let protodefprotogetter='$HOME/.vim/pullproto.pl'

" File search mappings
set path=**
nnoremap <leader>f :find *
nnoremap <leader>s :sfind *
nnoremap <leader>v :vert sfind *

nnoremap <leader>F :find <C-R>=expand('%:h').'/*'<CR>
nnoremap <leader>S :sfind <C-R>=expand('%:h').'/*'<CR>
nnoremap <leader>V :vert sfind <C-R>=expand('%:h').'/*'<CR>

set tags=tags;/

" point to Exuberant ctags
let Tlist_Ctags_Cmd='/usr/bin/ctags'

filetype plugin on
autocmd FileType python runtime! autoload/pythoncomplete.vim

syntax on
colorscheme wombat
set ts=3   

noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" Test options
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 

