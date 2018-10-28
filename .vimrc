" 行号
set number
" 高亮搜索
set hlsearch
" 增量搜索
set incsearch
" tab宽度
set tabstop=4
" 自动缩进
set smartindent
" 缩进宽度
set shiftwidth=4
" 非扩展tab，tab不使用空格替换;%retab!对全文进行tab更换
set noexpandtab
" 显示不可见字符
set invlist
" 对大括号进行配对换行
imap { {}<ESC>i<CR><ESC>O
" scheme格式化脚本,可能需要racket支持，待验证
autocmd filetype lisp,scheme,art setlocal equalprg=scmindent.rkt

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 平滑滚动;<ctrl-d><ctrl-u><ctrl-b><ctrl-f>
Bundle 'yonchu/accelerated-smooth-scroll'
""""""""""""""""""""""""""""Scheme 开始"""""""""""""""""""""""""""
" 括号配色
Plugin 'amdt/vim-niji'
" 括号自动补全
Plugin 'vim-scripts/paredit.vim'
" transfer limes，配合tmux跨边界转移，按两次<C-c>传输至指定pane并附加换行执行，
" 若未指定pane，需要在第一次指定session、window、pane
Plugin 'sjl/tslime.vim'
""""""""""""""""""""""""""""Scheme 结束"""""""""""""""""""""""""""

""""""""""""""""""""""""""""Web 开始"""""""""""""""""""""""""""
" html标签扩展
Plugin 'mattn/emmet-vim'
" html格式化；不完美，标签在一行就无法格式化了
Plugin 'othree/html5.vim'
" css格式化,没有效果
"Plugin 'cakebaker/scss-syntax.vim'
""""""""""""""""""""""""""""Web 结束"""""""""""""""""""""""""""
"
""""""""""""""""""""""""""""MarkDown 开始"""""""""""""""""""""""""""
" MarkDown预览
" https://github.com/iamcco/markdown-preview.vim
" MarkdownPreview开始预览，MarkdownPreviewStop结束预览
Plugin 'iamcco/markdown-preview.vim'

" MarkDown语法高亮
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
""""""""""""""""""""""""""""MarkDown 结束"""""""""""""""""""""""""""

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
