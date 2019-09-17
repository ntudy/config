syntax on

set nocompatible
set showmode
set showcmd
set mouse=a
set encoding=utf-8
set t_Co=256
set nu

set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set cursorline

set hlsearch
set showmatch
set ignorecase
set smartcase

set noerrorbells
set visualbell
set autoread

filetype indent on

colorscheme murphy

" Press F5 to run python program
map <F5> : call CompileRunGcc()<CR>
func! CompileRunGcc()
        exex "w"
        if &filetype == 'c'
                exec "!g++ % -o %<"
                exec "!time ./%<"
        elseif &filetype =='python'
                exec "!clear"
                exec "!time python3 %"
        endif
endfunc

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'https://github.com/scrooloose/nerdtree'
nnoremap <F3> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

Plugin 'https://github.com/bling/vim-airline'

Plugin 'w0rp/ale'
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 1

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Change tab using alt + number
:nn <M-1> 1gt
:nn <M-2> 2gt
:nn <M-3> 3gt
:nn <M-4> 4gt
:nn <M-5> 5gt
:nn <M-6> 6gt
:nn <M-7> 7gt
:nn <M-8> 8gt
:nn <M-9> 9gt
:nn <M-0> :tablast<CR>
