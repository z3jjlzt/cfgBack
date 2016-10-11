set nocompatible              " 去除VI一致性,必须
filetype off                  " 必须

" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" 让vundle管理插件版本,必须
Plugin 'VundleVim/Vundle.vim'

" 主题
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'
let g:molokai_original = 1
let g:solarized_termtrans=1
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"
set background=dark
colorscheme solarized 

" 状态行
Plugin 'bling/vim-airline'

" 快速定位
Plugin 'easymotion/vim-easymotion'
map  f <Plug>(easymotion-bd-f)
nmap f <Plug>(easymotion-overwin-f)
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" 语法检查
Plugin 'scrooloose/syntastic'

" 自动补全
Plugin 'Valloric/YouCompleteMe'
let g:ycm_confirm_extra_conf=0

" 视图树
Plugin 'scrooloose/nerdtree'

call vundle#end()            
filetype plugin indent on    

" 简要帮助文档
" :PluginList       - 列出所有已配置的插件
" :PluginInstall    - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件

set number 
set relativenumber
set shiftwidth=4
set tabstop=4

" 自动缩进
set autoindent

" 显示现在处于什么模式
set showmode

" 开启mode模式行
set modeline

" 滚动时距离顶部和底部5行
set scrolloff=6        

" 允许backspace和光标键跨越行边界
"set whichwrap+=<,>,h,l

" 在状态行上显示光标所在位置的行号和列号
set ruler
"set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

" 设置行列高亮
set cursorcolumn
set cursorline

" 注释
nmap zs 0I//<Esc>
vmap zs 0I//<Esc>
vmap zu 0lx<Esc>
nmap zu 0xx<Esc>

" 显示状态行
set laststatus=2

"输入内容时显示匹配项
set incsearch

nmap <F5> :NERDTreeToggle<CR>
nmap <F10> :w !sudo tee %<CR>

" 开启鼠标
set mouse=a

" 告诉我们文件的哪一行被改变过
set report=0

" 语法高亮
syntax enable

" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" 标识符
let mapleader=";"


"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
