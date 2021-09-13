" hello this is a setting neovim file

syntax on			" Turn on syntax highlighting
"filetype off 			" Helps force plugins to load correctly when it is turned back on below
filetype indent on      	" load filetype-specific indent files<Paste>


" golang snipes
"inoremap if<CR> if err != nil {<CR>}<Esc>Ofmt.Errorf(err)<Esc>I
    


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GENERAAL SETTING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set noswapfile              " no swap when changing file

" UI

"set termguicolors       	" using tree color in terminal
set number		        	" show number of line
set relativenumber	    	" show relative numbet for improve navigation between lines
set showcmd             	" show command in bottom bar
"set cursorline          	" highlight current line
set nowrap
set wildmenu            	" visual autocomplete for command menu      
set lazyredraw           	" redraw only when we need to.             

" FOLDING

set foldenable          	" enable folding
"set foldmethod=indent   	" fold based on indent level
"set foldnestmax=10      	" 10 nested fold max
"nnoremap <space> za     	" space open/close foles

" EDITING
set tabstop=4       		" number of visual spaces per TAB

set shiftwidth=4			" 1 tab == 4 spaces

set expandtab           	" tabs are spaces

"set noro                    " load init.vim as root ? // not read only



"  SEARSHING
"  finding files
"  searsh provides tab-completion for all file related task
set path+=**  

"set showmatch           	" highlight matching [{( )}]
"set incsearch           	" search as characters are entered
"set hlsearch            	" highlight matches
" turn off search highlight
"nnoremap <leader><space> :nohlsearch<cr>



"===============
set nocompatible     	 	" don't try to be vi compatible


"set ruler					" Show file stats

"Better window navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l



" Color scheme (terminal)
" set t_Co=256 " use this just in vim
"set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
"color PaperColor
"colorscheme PaperColor
"colorscheme codedark
"colorscheme afterglow

""""""""""""""""""""""""""""
"config vlang highlight "
" Disable highlight white space after "[]".
let g:v_highlight_array_whitespace_error = 0

" Disable highlight white space around the communications operator that don't follow the standard style.
let g:v_highlight_chan_whitespace_error = 0

" Disable highlight instances of tabs following spaces.
let g:v_highlight_space_tab_error = 0

" Disable highlight trailing white space.
let g:v_highlight_trailing_whitespace_error = 0

" Disable highlight function calls.
let g:v_highlight_function_calls = 0

let g:v_highlight_fields = 0




"''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''"
"
"   VIM PLUGINGS
"
"''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''"

"-- Emmet config --
let g:user_emmet_leader_key=','

" Plugins will be downloaded under the specified directory.

" inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
" inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
" nmap <C-n> :NERDTreeToggle<CR>



filetype plugin on
call plug#begin('~/.vim/plugged')

""" Declare the list of plugins.
" auto pairs
Plug 'jiangmiao/auto-pairs'
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'NLKNguyen/papercolor-theme'
Plug 'tpope/vim-surround'
"Plug 'tpope/vim-sensible'
"Plug 'junegunn/seoul256.vim'
Plug 'dart-lang/dart-vim-plugin'
Plug 'ollykel/v-vim'
Plug 'mdempsky/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }

"Plug 'scrooloose/nerdTree'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" HTML plagin:
Plug 'mattn/emmet-vim'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

