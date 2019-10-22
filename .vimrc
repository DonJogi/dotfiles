" inoremap jk <ESC>

set nocompatible
set runtimepath+=~/.vim
set wildmenu
" set wildmode=list:longest
set showcmd
set nostartofline
set hidden
set autochdir

let g:pathogen_disabled = []
call add(g:pathogen_disabled, '')
execute pathogen#infect()

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug '/usr/sbin/fzf'
Plug 'junegunn/fzf.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mbbill/undotree'
Plug 'vim-syntastic/syntastic'
Plug 'easymotion/vim-easymotion'
Plug 'lervag/vimtex'
Plug 'tpope/vim-surround'

call plug#end()

let mapleader = "\<Space>"
map <C-c> "+y<CR> 

if has('gui_running')
		if has('gui_macvim')
				set guifont=Monaco:h12
		endif
		
		if has('gui_gtk3')
				set guifont=Jetbrains\ Mono
				source $VIMRUNTIME/mswin.vim
				behave mswin
				set guioptions-=T  " Remove toolbar
		endif

		if has('gui_gtk2')
				source $VIMRUNTIME/mswin.vim
				behave mswin
		endif

		" set background=light
		set background=dark
		" colorscheme candid
		colorscheme summerfruit256
		let g:airline_theme="papercolor"
		set guicursor+=n-v-c:blinkon0
		set lines=55 columns=180
endif

" NERDTree
" map <C-n> :NERDTreeTabsToggle<CR>
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <leader>q :bp<cr>:bd #<cr>
nnoremap <F4> :NERDTreeToggle<cr>
nnoremap ,n :NERDTreeFind<cr>
nnoremap <leader>fT :NERDTreeFind<cr>

filetype plugin indent on
syntax on

" Various
set encoding=utf-8
set backspace=2		" make backspace work like most other apps
set scrolloff=5		" keep 3 lines when scrolling
set ruler			" show the cursor position all the time
set number			" show line numbers
set ignorecase		" ignore case when searching
set ttyfast     	" smoother changes
set autoindent		" always set autoindenting on
set smartindent		" smart indent
set cindent			" cindent
set wrap
set linebreak
set langmenu=en_US
let $LANG = 'en_US'
set tabstop=4

" Enable folding
set foldmethod=indent
set foldlevel=99

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamecollapse = 0

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null

" CtrlP
" Default ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}

" Use the nearest .git directory as the cwd
" This makes a lot of sense if you are working on a project that is in version
" control. It also supports works with .svn, .hg, .bzr.
let g:ctrlp_working_path_mode = 'r'

" Use a leader instead of the actual named binding
nmap <leader>p :CtrlP<cr>

" Easy bindings for its various modes
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>

" Undotree
nnoremap <F5> :UndotreeToggle<cr>
let g:undotree_WindowLayout = 3
let g:undotree_SetFocusWhenToggle = 1

" Buffer navigation
nnoremap <C-S-tab> :bprevious<CR>
nnoremap <C-tab>   :bnext<CR>

" Quickly move current line
nnoremap [e  :<c-u>execute 'move -1-'. v:count1<cr>
nnoremap ]e  :<c-u>execute 'move +'. v:count1<cr>

" Quickly add empty lines
nnoremap [<space>  :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap ]<space>  :<c-u>put =repeat(nr2char(10), v:count1)<cr>

" fzf.vim

nnoremap <Leader>f :GFiles<CR>
nnoremap <Leader>F :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>h :History<CR>
nnoremap <Leader>l :BLines<CR>
nnoremap <Leader>L :Lines<CR>
nnoremap <Leader>' :Marks<CR>
