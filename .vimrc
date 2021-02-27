                                                                                    
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""x  ______     _                               x"""""""""""""  
"""""""x    |  _  \   | |                                x"""""""""""  
""""""""x   | | | |___| |__  _   _  __ _  __ _  ___ _ __  x""""""""""           
""""""x     | | | / _ \ '_ \| | | |/ _` |/ _` |/ _ \ '__|    """"""""                      
""""""      | |/ /   _/ |_) | |_| | ($| | ($| |  __/ |       """"""""                      
""""""      |___/ \___|_.__/ \__,_|\__, |\__, |\___|_|        """""""                      
"""""^^^      	                    __/ / __/ |              """"""""                      
"”“”“^^^^^^^^^     	               |___/ |___/           ^^^^^^""""""                          
"""""^^^^^^^^^^                                        ^^^^^^^^""""""             
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""" debugger's vim setting """"""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""






"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"vim基本设置


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"关闭vi的一致性模式 避免以前版本的一些Bug和局限
set nocompatible

"开启语法高亮
syntax on

"显示行号,关闭用set nonu
set nu "set number

" 启用相对行号(简写 :set rnu)
set relativenumber

"显示行列信息,默认开启，关闭用set noruler
set ruler

"在状态栏显示正在输入的命令
set showcmd

"设置历史记录条数
set history=1000

"突出显示当前行列
set cursorline
set cursorcolumn

"设置在vim可以使用鼠标,可以有n,i,v,h,a等各种模式
set mouse=i

"设置Tab宽度
set tabstop=4

"设置自动对齐空格数
set shiftwidth=4

"设置编码方式
set encoding=utf-8

"自动判断编码时 依次尝试一下编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

"检测文件类型
filetype on

"检测匹配缩进规则
filetype indent on

"允许插件 
filetype plugin on

"代码补全
set completeopt=menu,preview,longest

"智能匹配,光标遇到圆括号、方括号、大括号时，自动高亮对应另一个
set showmatch

"底部显示当前模式
set showmode

"底部显示当前模式
set showmode

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

"智能缩进
set smartindent 

"底部显示键入指令
"set showcmd

"关闭自动折行，默认打开
"set nowrap

"不在单词内部折行
set linebreak

"是否显示状太栏，0不显示，１多窗口时显示，２显示
set laststatus=2

"搜索时，高亮显示匹配项
set hlsearch

"搜索时，光标自动匹配结果
set incsearch

"保留撤销历史
set undofile

"设置备份文件、交换文件、操作历史文件保存位置
"//表示生成的文件名带有绝对路径，路径中用%替换目录分隔符，防文件重名
"set backupdir=~/.vim/.backup//  
"set directory=~/.vim/.swp//
"set undodir=~/.vim/.undo// 

"自动切换工作目录
set autochdir

"设置主题
colorscheme  molokai

"设置字体
"set guifont=YaHei\ Consolas\ Hybrid\ 18
 

">>键盘映射
	"简化窗口切换
	nnoremap <c-h> <c-w>h
	nnoremap <c-j> <c-w>j
	nnoremap <c-k> <c-w>k
	nnoremap <c-l> <c-w>l


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"插入文件头设置


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

".py文件头设置

func SetTitle()
call setline(1, "\#!/usr/bin/python")
call setline(2, "\# -*- coding=utf8 -*-")
call setline(3, "\"\"\"")
call setline(4, "\# @Author : Li Bin")
call setline(5, "\# @Created Time : ".strftime("%Y-%m-%d %H:%M:%S"))
call setline(6, "\# @Description : ")
call setline(7, "\"\"\"")
normal G
normal o
normal o
endfunc
autocmd bufnewfile *.py call SetTitle()





"====================================================================

"+========================= Vundle配置 ==============================

"====================================================================


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
"Plugin 'scrooloose/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'lilydjwg/fcitx.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line





"====================================================================
"
"===================== MiniBufExplorer setting ======================
"
"====================================================================

let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMoreThanOne=0

">> MiniBufExpl Colors
hi MBENormal               guifg=#808080 guibg=fg
	hi MBEChanged              guifg=#CD5907 guibg=fg
	hi MBEVisibleNormal        guifg=#5DC2D6 guibg=fg
	hi MBEVisibleChanged       guifg=#F1266F guibg=fg
	hi MBEVisibleActiveNormal  guifg=#A6DB29 guibg=fg
	hi MBEVisibleActiveChanged guifg=#F1266F guibg=fg


"====================================================================

"========================= Tagslist setting =========================

"====================================================================


"按F8按钮，在窗口的左侧出现taglist的窗口,像vc的左侧的workpace
 nnoremap <silent> <F8> :TlistToggle<CR><CR>
 " :Tlist              调用TagList
 let Tlist_Show_One_File=1                    " 只显示当前文件的tags
 let Tlist_Exit_OnlyWindow=1                  " 如果Taglist窗口是最后一个窗口则退出Vim
 let Tlist_Use_Right_Window=1                 " 在右侧窗口中显示
 let Tlist_File_Fold_Auto_Close=1             " 自动折叠


set tags+=~/.vim/stl/tags 


"====================================================================

"============================ NERDTree setting ======================

"====================================================================

nnoremap <silent> <F3> :NERDTreeToggle<CR><CR>
" let NERDTreeQuitOnOpen=1   " Close NERDtree when files was opened
let NERDTreeMinimalUI=1    " Start NERDTree in minimal UI mode (No help lines)
let NERDTreeDirArrows=1    " Display arrows instead of ascii art in NERDTree
let NERDTreeChDirMode=2    " Change current working directory based on root directory in NERDTree
let g:NERDTreeHidden=1     " Don't show hidden files
let NERDTreeWinSize=25     " Initial NERDTree width
let NERDTreeAutoDeleteBuffer = 1  " Auto delete buffer deleted with NerdTree
let NERDTreeShowBookmarks=0   " Show NERDTree bookmarks
let NERDTreeIgnore = ['\.pyc$', '\.swp', '\.swo', '__pycache__']   " Hide temp files in NERDTree
let g:NERDTreeShowLineNumbers=0  " Don't show Line Number
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name 
let g:NERDTreeHighlightCursorline = 0 "禁用高亮
let g:NERDTreeChDirMode = 1
"autocmd BufWinEnter * silent NERDTreeMirror

"只剩NERDTree时，退出
autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif




"====================================================================
"======================vim-nerdtree-tabs setting=====================
"====================================================================



"Open NERDTree on console vim startup. ((default: 0),When set to 2, open only if directory was given as startup argument).
let g:nerdtree_tabs_open_on_console_startup = 0

"Automatically find and select currently opened file in NERDTree.(default: 0)
let g:nerdtree_tabs_autofind = 1

"Close current tab if there is only one window in it and it's NERDTree(default: 1)
let g:nerdtree_tabs_autoclose = 1 

"On startup, focus NERDTree if opening a directory, focus file if opening a file. (When set to 2, always focus file window after startup).(default: 1)
let g:nerdtree_tabs_smart_startup_focus = 2

"Synchronize view of all NERDTree windows (scroll and cursor position)(default: 1)
let g:nerdtree_tabs_synchronize_view = 1

"Synchronize focus when switching windows (focus NERDTree after tab switch if and only if it was focused before tab switch)
let g:nerdtree_tabs_synchronize_focus = 1


"====================================================================

"=============== vim-nerdtree-syntax-highlight setting ==============

"====================================================================


"sable unmatched folder and file icons having the same color as their labels (normally green and white), if set by this plugin (it could have been set by some other plugin that you are using).
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1



""Highlight full name (not only icons). You need to add this if you don't have vim-devicons and want highlight.
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1


"Highlight folders using exact match
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

">>customizing colors
	" you can add these colors to your .vimrc to help customizing
	let s:brown = "905532"
	let s:aqua =  "3AFFDB"
	let s:blue = "689FB6"
	let s:darkBlue = "44788E"
	let s:purple = "834F79"
	let s:lightPurple = "834F79"
	let s:red = "AE403F"
	let s:beige = "F5C06F"
	let s:yellow = "F09F17"
	let s:orange = "D4843E"
	let s:darkOrange = "F16529"
	let s:pink = "CB6F6F"
	let s:salmon = "EE6E73"
	let s:green = "8FAA54"
	let s:lightGreen = "31B53E"
	let s:white = "FFFFFF"
	let s:rspec_red = 'FE405F'
	let s:git_orange = 'F54D27'

	let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
	let g:NERDTreeExtensionHighlightColor['o'] = s:white " sets the color of o files to blue
	let g:NERDTreeExtensionHighlightColor['h'] = s:green " sets the color of h files to blue
	let g:NERDTreeExtensionHighlightColor['c'] = s:red " sets the color of c files to blue
	let g:NERDTreeExtensionHighlightColor['cpp'] = s:darkOrange " sets the color of cpp files to blue
	let g:NERDTreeExtensionHighlightColor['c++'] = s:green " sets the color of c++ files to blue
	let g:NERDTreeExtensionHighlightColor['py'] = s:lightGreen " sets the color of css files to blue

	"let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:orange " sets the color for .gitignore files
	"let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
	"let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb
	let g:WebDevIconsDefaultFolderSymbolColor = s:beige " sets the color for folders that did not match any rule
	let g:WebDevIconsDefaultFileSymbolColor = s:salmon " sets the color for files that did not match any rule
