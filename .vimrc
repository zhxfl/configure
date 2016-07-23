set nocompatible               " be iMproved
filetype off                   " required!       /**  从这行开始，vimrc配置 **/

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:  /* 插件配置格式 */
"   
" original repos on github （Github网站上非vim-scripts仓库的插件，按下面格式填写）
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/taglist.vim'
Bundle 'vim-scripts/L9'
Bundle 'vim-scripts/FuzzyFinder'
Bundle 'vim-scripts/grep.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'Mizuchi/STL-Syntax'
Bundle 'vim-scripts/a.vim'
Bundle 'Yggdroot/indentLine'
Bundle 'scrooloose/nerdcommenter'
call vundle#end()            " required
filetype plugin indent on     " required!   /** vimrc文件配置结束 **/
"                                           /** vundle命令 **/
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo 
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"   
" see :h vundle for more details or wiki for FAQ 
" NOTE: comments after Bundle command are not allowed..

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on

nnoremap <silent> <F6>   :tabn<CR>
nnoremap <silent> <F5>   :tabp<CR>
nnoremap <silent> <F7>  :Rgrep<CR>

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_register_as_syntastic_checker = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_confirm_extra_conf = 0


nnoremap <F10> :YcmCompleter GoToDeclaration<CR>
nnoremap <F9>  :YcmCompleter GoToDefinition<CR>
nnoremap <F12>      :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap     <Leader>ff :FufCoverageFile<CR>

" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number


colorscheme desert
"开启光亮光标行
set cursorline
"hi CursorLine   cterm=underline
"hi CursorLine   cterm=NONE ctermbg=darkgrey ctermfg=white guibg=darkgrey guifg=white

"开启高亮光标列
set cursorcolumn
hi CursorColumn term=NONE cterm=NONE ctermbg=darkgrey ctermfg=white guibg=darkgrey guifg=white
hi CursorLine   term=NONE cterm=NONE ctermbg=darkgrey ctermfg=white guibg=darkgrey guifg=white

" 高亮显示搜索结果
set hlsearch
" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set sw=4

set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

""""""""""""""""""""""""
" *.cpp 和 *.h 间切换
nmap <Leader>ch  :A<CR>
" 子窗口中显示 *.cpp 或 *.h
nmap <Leader>sch :AS<CR>

""""""""""""""""""""""""
" 配色方案
set background=dark
"highlight Normal ctermfg=grey 
"colorscheme solarized
"colorscheme molokai  
"
"
""""缩进显示"""""

let g:indentLine_char = '¦'
let g:indentLine_enabled = 1 

colorscheme desert


"CUDA syntax highlight {
"au BufNewFile,BufRead *.cu set ft=cuda
" }
