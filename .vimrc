set nocompatible               " be iMproved
filetype off                   " required!       /**  从这行开始，vimrc配置 **/

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

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
Bundle 'tpope/vim-fugitive'
Bundle 'vim-scripts/grep.vim'
Bundle 'Rip-Rip/clang_complete'
Bundle 'Valloric/YouCompleteMe'
Bundle 'Mizuchi/STL-Syntax'
Bundle 'vim-scripts/a.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'

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

"tap跳转
nnoremap <silent> <F6>   :tabn<CR>
nnoremap <silent> <F5>   :tabp<CR>

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_confirm_extra_conf = 0

"nnoremap <leader>gc :YcmCompleter GoToDeclaration<CR>
"nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <F12>      :YcmCompleter GoToDefinitionElseDeclaration<CR>

"/ff 模糊查找文件
nnoremap <leader>ff :FufCoverageFile<CR>

" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
"开启光亮光标行
set cursorline
hi CursorLine   cterm=underline
"hi CursorLine   cterm=NONE ctermbg=darkgrey ctermfg=white guibg=darkgrey guifg=white
"开启高亮光标列
set cursorcolumn
hi CursorColumn cterm=NONE ctermbg=darkgrey ctermfg=white guibg=darkgrey guifg=white

" 高亮显示搜索结果
set hlsearch
" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

":cscope add ~/.vim/cscope.out
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
	set csprg=/usr/bin/cscope
	set csto=1
	set cst
        set nocsverb
        " add any database in current directory
        if filereadable("cscope.out")
		cs add cscope.out
        endif
        set csverb
endif


nmap <F10> :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <F11> :cs find g <C-R>=expand("<cword>")<CR><CR>
 
"nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <C-@>i :cs find i^<C-R>=expand("<cfile>")<CR>$<CR>
"nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>


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
"随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
nmap <silent> <Leader>i <Plug>IndentGuidesToggle 
