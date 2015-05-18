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
nnoremap <silent> <F6>   :tabn<CR>
nnoremap <silent> <F5>   :tabp<CR>

:set ts=4
:set number
:cscope add ~/.vim/cscope.out
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
nmap <F11> :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <F12>  :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :cs find i^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>

