"for plugin
set nocompatible 
filetype plugin indent off            " for NeoBundle
 
if has('vim_starting')
    set rtp+=$HOME/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-surround'

NeoBundle 'petdance/vim-perl'
NeoBundle 'hotchpotch/perldoc-vim'
NeoBundle 'Shougo/neocomplcache'
"NeoBundle 'Shougo/neosnippet'
"NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'kevinw/pyflakes-vim'
NeoBundle 'kovisoft/slimv'
NeoBundle 'Shougo/vimproc.vim'
NeoBundle 'Shougo/vimshell'
NeoBundle 'derekwyatt/vim-scala'
call neobundle#end()

filetype plugin indent on

NeoBundleCheck

"for color
syntax on
colorscheme hybrid
set background=dark

"for tab
set smarttab
set expandtab
set virtualedit=block
set shiftwidth=4
set softtabstop=4
set tabstop=4

"others
set hlsearch
set ignorecase
set smartcase
set incsearch
set wrapscan
set clipboard=unnamed
set autoindent

autocmd FileType python setl cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl expandtab

set number

set wildmenu
set wildmode=list:full
set wildignore=*.o,*.obj,*.pyc,*.so,*.dll
set backspace=indent,eol,start

let mapleader = "\<Space>"

"for split screen
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sn gt
nnoremap sp gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Unite tab<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>

nnoremap <F1> :e $MYVIMRC<CR>
inoremap <C-j> <C-x><C-n>

"for quickrun
nmap <Leader>r <plug>(quickrun)

"key maps for command mode
cnoremap <C-a> <HOME>
cnoremap <C-e> <End>
cnoremap <C-h> <Left>
cnoremap <C-l> <Right>
cnoremap <C-k> <Up>
cnoremap <C-j> <Up>
cnoremap <C-w> <M-f> <S-Right>
cnoremap <C-b> <M-b> <S-Right>

nnoremap <C-a> %x<C-o>x

"start
autocmd BufNewFile *.pl 0r $HOME/.vim/template/perl-script.txt
autocmd BufNewFile *.py 0r $HOME/.vim/template/python-script.txt
autocmd BufNewFile *.cpp 0r $HOME/.vim/template/cpp.txt
autocmd BufNewFile *.cc 0r $HOME/.vim/template/cpp.txt
autocmd BufNewFile *.sh 0r $HOME/.vim/template/bash.txt

autocmd QuickfixCmdPost make,grep,grepadd,vimgrep copen

autocmd BufEnter *.cc,*.cpp,*.h,*.hh let $CURRENT_EDIT_FILE_BY_VIM = expand("%")

"lisp
let g:paredit_mode = 1
let g:paredit_electric_return = 0
let g:slimv_repl_name = 'REPL'
let g:slimv_lisp = 'ros run'
let g:slimv_impl = 'clisp'
let g:slimv_preferred = 'clisp'
let g:slimv_repl_simple_eval = 0
"let g:slimv_swank_cmd = '!osascript -e "tell application \"Terminal\" to do script \"clisp '.$HOME.'/.vim/bundle/slimv/slime/start-swank.lisp\""'
let g:lisp_rainbow=1

nnoremap <silent> ,cl :VimShellInteractive ros -s swank -e '(swank:create-server :port 4005 :dont-close t)' wait<CR>

autocmd BufNewFile,BufRead *.asd set filetype=lisp

"scala
autocmd BufNewFile,BufRead *.scala setf scala
let g:neocomplcache_enable_at_startup = 1
"ユーザ定義の辞書を指定
let g:neocomplcache_dictionary_filetype_lists = {
  \ 'default' : '',
  \ 'scala' : $HOME . '/.vim/dict/scala.dict',
  \ }

