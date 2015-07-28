set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'fatih/vim-go'

Plugin 'Valloric/YouCompleteMe'

Plugin 'scrooloose/nerdtree'
nmap <F2> :NERDTreeToggle<CR>

Plugin 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

Plugin 'kien/ctrlp.vim'

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
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax enable
filetype plugin on
set number
let g:go_disable_autoinstall = 0

colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

set cul "高亮光标所在行
"set cuc
set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示
autocmd InsertEnter * se cul    " 用浅色高亮当前行  
"set ruler           " 显示标尺  
set showcmd         " 输入的命令显示出来，看的清楚些  
set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离  
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容  
set laststatus=2    " 启动显示状态行(1),总是显示状态行(2)  

" 历史记录数
set history=1000
"搜索逐字符高亮
set hlsearch
set incsearch

"当打开vim且没有文件时自动打开NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
" 只剩 NERDTree时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" 设置当文件被改动时自动载入
set autoread

"禁止生成临时文件
set nobackup
set noswapfile
"搜索忽略大小写
set ignorecase

" 高亮显示匹配的括号
set showmatch

" 不自动换行
set nowrap

"nmap <F3>a <ESC><C-w>>
"nmap <F3>d <ESC><C-w><

nmap <F3> <C-w>
"map <F3> <C-w>

nmap <C-a> <ESC><C-w>>
nmap <C-d> <ESC><C-w><
"map <C-a> <ESC><C-w>>
"map <C-d> <ESC><C-w><

nmap <C-z> <ESC>:res+1<CR>
nmap <C-c> <ESC>:res-1<CR>
"map <C-z> <ESC>:res+1<CR>
"map <C-c> <ESC>:res-1<CR>

"第一次执行后删除
PluginInstall
GoInstallBinaries 

