execute pathogen#infect()
if !exists("g:syntax_on")
    syntax enable
endif
filetype plugin indent on

"syntastic linter
function! SyntasticESlintChecker()
  let l:npm_bin = ''
  let l:eslint = 'eslint'

  if executable('npm')
      let l:npm_bin = split(system('npm bin'), '\n')[0]
  endif

  if strlen(l:npm_bin) && executable(l:npm_bin . '/eslint')
    let l:eslint = l:npm_bin . '/eslint'
  endif

  let g:syntastic_javascript_eslint_exec = l:eslint
endfunction

"Linting
let g:syntastic_javascript_checkers = ["eslint"]
let g:syntastic_go_checkers = ['go', 'golint', 'govet']

autocmd FileType javascript :call SyntasticESlintChecker()

"jsx syntax
let g:jsx_ext_required = 0

"js specific
let g:javascript_plugin_jsdoc = 1

set number
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set nocompatible
set modelines=0
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set noswapfile
set undofile
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
let mapleader = ","
nnoremap / /\v
vnoremap / /\v
nnoremap <CR> :wa<CR>:!!<CR>
set pastetoggle=<leader>p
" set relativenumber
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
"stuff to do with wrapping lines
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=100
set cursorline
"useful Esc remap
inoremap jj <ESC>
nnoremap ; :
"disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
"view trailing whitespace when required
nmap <leader>l :set list!<CR>
set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<

"for idiots like me who regularly hit F1 instead of Esc
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
"opening and closing splits
nnoremap <leader>w <C-w>v<C-w>1
nnoremap <leader>q <C-w>q
"movement between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>v V`]
nnoremap <leader>w <C-w>v<C-w>l
"shortcut to edit vimrc - super useful
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
autocmd StdinReadPre * let s:std_in=1
"NERDTree stuff
map <C-n> :NERDTreeToggle<CR>
"Split screen switch
nnoremap <Tab> <C-W><C-W>
"Airline Stuff
let g:airline#extensions#tabline#enabled = 1
" ctrl-P setup
set runtimepath^=~/.vim/bundle/ctrlp.vim
"bash setup"
set shell=zsh\ -l
