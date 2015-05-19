set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
Plugin 'godlygeek/tabular'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/bufexplorer.zip'
Plugin 'tpope/vim-surround'
Plugin 'klen/python-mode'
Plugin 'benmills/vimux'
Plugin 'mileszs/ack.vim'
"Plugin 'jiangmiao/auto-pairs'
call vundle#end()            " required
filetype plugin indent on    " required

let g:ycm_global_ycm_extra_conf = '/home/zhangjiguo/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_confirm_extra_conf = 0
nnoremap <leader>gc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <C-]> :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:EclimCompletionMethod = 'omnifunc'

set completeopt=longest,menu
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

" hit enter to cancel searched highlight
noremap <CR> :nohlsearch<CR>
noremap <C-N> :Ack <cword><CR>

" select ALL
"map <C-A> ggVG
"map <C-D> :wq <CR>
map <C-L> $v0
map <C-P> :CtrlP <CR>
map <C-T> :TlistToggle <CR>
nmap <Home> 0
imap <Home> <ESC>0i
map <C-S> :w <CR>
imap <C-S> <ESC>:w <CR>
map <F10> <Esc>:tabnew<CR>
"nmap <C-I> j[mzf%
"nmap <C-N> zdj
map <C-J> gT
imap <C-J> <Esc>gT
map <C-K> gt
imap <C-K> <Esc>dt i
"map <C-,> \cm <Esc>
"imap <C-,> <Esc>\cm <Esc>
map <C-_> \cc <Esc>
imap <C-_> <Esc>\cc <Esc>
map <C-\> \cu<Esc>
imap <C-\> <Esc>\cu<Esc>
map <F9> <Esc>:tabm
imap <F9> <Esc>:tabm
"imap <F7> <Esc>:set paste<CR>
"imap <F8> <Esc>:set nopaste<CR>
noremap <F5> :silent! e!<CR>
vmap <F5> : w!/tmp/x1<CR>
vmap <F6> : r /tmp/x1<CR>
map <F11> :BufExplorer<CR>
map <Backspace> Xi
" http://vim.wikia.com/wiki/Search_for_visually_selected_text
vnoremap * y/<C-R>"<CR>

 " Run the current file with rspec
 map <Leader>rb :call VimuxRunCommand("clear; rspec " . bufname("%"))<CR>

 " Prompt for a command to run
 map <Leader>vp :VimuxPromptCommand<CR>

 " Run last command executed by VimuxRunCommand
 map <Leader>vl :VimuxRunLastCommand<CR>

 " Inspect runner pane
 map <Leader>vi :VimuxInspectRunner<CR>

 " Close vim tmux runner opened by VimuxRunCommand
 map <Leader>vq :VimuxCloseRunner<CR>

 " Interrupt any command running in the runner pane
 map <Leader>vx :VimuxInterruptRunner<CR>

 " Zoom the runner pane (use <bind-key> z to restore runner pane)
 map <Leader>vz :call VimuxZoomRunner()<CR>
 "
"inoremap ( ()<LEFT>
"inoremap [ []<LEFT>
"inoremap { {}<LEFT>

syntax enable
syntax on
autocmd FileType c,cpp,py setlocal shiftwidth=4 | set expandtab

set nu
set cursorcolumn
set cursorline
set smarttab
set foldmethod=marker
set showmode
set showcmd
set autoread
"let g:Powerline_symbols = 'fancy'
"let g:Powerline_stl_path_style = 'full'
"let g:airline_powerline_fonts=1
let g:airline_theme="tomorrow"
let g:airline_section_c = '%F'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
"let g:airline#extensions#tabline#tab_nr_type = 2 " splits and tab number
set laststatus=2
"
colorscheme molokai

let g:pymode_warnings = 0
let g:pymode_indent = 1
let g:pymode_folding = 0
let g:pymode_breakpoint = 0
let g:pymode_lint_message = 1
let g:pymode_lint_cwindow = 0
let g:pymode_rope = 0
"let g:pymode_rope_completion = 0
"let g:pymode_rope_complete_on_dot = 0
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
let g:pymode_run = 0

let g:airline_powerline_fonts=0

let g:ackhighlight = 1

set incsearch
set hlsearch
set wildmode=longest,list,full
set wildmenu
