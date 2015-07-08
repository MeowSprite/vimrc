"配色方案
colorscheme evening

"字体
set guifont=Droid\ Sans\ Mono\ 9

"关闭vim一致性原则
set nocompatible

set number

"设置在编辑过程中右下角显示光标的行列信息
set ruler

"设置取消备份 禁止临时文件的生成
set nobackup
set noswapfile

"设置匹配模式
set showmatch

"设置C/C++方式自动对齐
set autoindent
set cindent

"开启语法高亮功能
syntax enable
syntax on

"设置自动对齐空格数
set shiftwidth=4

"将tab转换为空格
set ts=4
set expandtab

"设置编码方式
set encoding=utf-8


"ensures that Powerline shows up even if you don’t have any splits.
set laststatus=2

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
"Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"Bundle 'scrooloose/nerdtree'
Bundle 'taglist.vim' 
Bundle 'molokai' 
Bundle 'The-NERD-tree' 
Bundle 'The-NERD-Commenter' 
Bundle 'kien/ctrlp.vim' 
Bundle 'bling/vim-airline' 
Bundle 'klen/python-mode' 
Bundle 'https://github.com/Valloric/YouCompleteMe'
"Bundle 'tdcdev/ycm_simple_conf'
Bundle 'rdnetto/YCM-Generator'

" The bundles you install will be listed here

filetype plugin indent on

" The rest of your config follows here

" nerdtree
map <F2> :NERDTreeToggle<CR>
" taglist
" map <F3> :TlistToggle<CR>
nnoremap <silent> <F3> :TlistToggle<CR>
let Tlist_Exit_OnlyWindow = 1 "在只剩下Tag窗口时关闭vim
let Tlist_Show_One_File = 1 "只显示当前窗口的Tag
let Tlist_Use_Right_Window=1 "在Vim窗口右侧显示taglist窗口

"python-mode
let g:pymod = 1
let g:pymode_options = 1
let g:pymode_options_max_line_length = 79
let g:pymode_options_colorcolumn = 1
let g:pymode_python = 'python'
let g:pymode_indent = 1
let g:pymode_folding = 0
" Documentation
let g:pymode_doc = 0
let g:pymode_doc_key = 'K'
" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'
"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

let g:pymode_rope = 1


" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
"Find definition ~
let g:pymode_rope_goto_definition_bind = '<C-c>g'

" YouComleteMe
" extra_conf
" let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" airline
