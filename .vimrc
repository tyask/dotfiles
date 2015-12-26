
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
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'thinca/vim-quickrun'
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

set number

set ambiwidth=double

set wildmenu
set wildmode=list:full
set wildignore=*.o,*.obj,*.pyc,*.so,*.dll
set backspace=indent,eol,start

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
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Unite tab<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>

"for quickrun
nmap <Leader>r <plug>(quickrun)

"start perl
autocmd BufNewFile *.pl 0r $HOME/.vim/template/perl-script.txt

"for snippet
"Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
 
"SuperTab like snippets behavior.
 imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\<Plug>(neosnippet_expand_or_jump)"
\<TAB>"

" For snippet_complete marker.
if has('conceal')
    set conceallevel=2 concealcursor=i
endif
