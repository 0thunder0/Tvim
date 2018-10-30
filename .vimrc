""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通用设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number
"开启行号显示
set number
"开启行号显示
filetype on
"检测文件的类型
set autoindent
"自动对齐
set smartindent
"智能选择对齐方式
set tabstop=4
"设置Tab键为4个空格
set shiftwidth=4
"设置当行之间交错时使用4个空格
set showmatch
"设置匹配模式
syntax enable
"set background=light
"colorscheme solarized
colorscheme morning
"主题设置
"===================================================================="
"插件设置


call plug#begin('~/.vim/plugged')
"vim外观功能
Plug 'https://github.com/scrooloose/nerdtree.git'
"Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'https://github.com/Lokaltog/vim-powerline.git'
Plug 'https://github.com/chxuan/change-colorscheme.git'
Plug 'https://github.com/mhinz/vim-startify.git'
Plug 'https://github.com/majutsushi/tagbar.git'
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'https://github.com/Yggdroot/indentLine.git'
"基础功能插件
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/vim-syntastic/syntastic.git'
Plug 'https://github.com/jiangmiao/auto-pairs.git'
Plug 'https://github.com/scrooloose/nerdcommenter.git'
Plug 'https://github.com/godlygeek/tabular.git'
"Plug 'https://github.com/Valloric/YouCompleteMe.git'
Plug 'https://github.com/shawncplus/phpcomplete.vim.git'
"扩展增强
Plug 'https://github.com/pbrisbin/vim-mkdir.git'
Plug 'https://github.com/danro/rename.vim.git'


call plug#end()

"===================================================================="
"插件配置

"	1.NERDTree设置
nmap <F3> :NERDTreeToggle<CR>
"让NERDTree显示隐藏文件
let NERDTreeShowHidden=1 
"	2.tagbar设置
let g:tagbar_width = 30
nmap <F4> :TagbarToggle<CR>
"开启自动预览(随着光标在标签上的移动，顶部会出现一个实时的预览窗口)
let g:tagbar_autopreview = 1
"关闭排序,即按标签本身在文件中的位置排序
let g:tagbar_sort = 0
"	3.indentLine缩进画线设置
let g:indentLine_char='|'
let g:indentLine_enabled = 1
"	4.主题切换插件
nmap <F10> :NextColorScheme<CR>
nmap <F9> :PreviousColorScheme<CR>
"	5.neocomplete配置
"let g:neocomplete#enable_at_startup = 1
"	6.代码对齐插件
let g:multi_cursor_start_key='<C-n>'
let g:multi_cursor_start_word_key='g<C-n>'
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
"	7.外观-状态栏：Vim Powerline
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\	
set laststatus=2
