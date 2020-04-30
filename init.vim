" hello this is a setting neovim file

syntax on			" Turn on syntax highlighting
"filetype off 			" Helps force plugins to load correctly when it is turned back on below
filetype indent on      	" load filetype-specific indent files<Paste>


" golang snipes
inoremap if<CR> if err != nil {<CR>}<Esc>Ofmt.Println(err)<Esc>I
    


" AUTOCLOSE TAGS
inoremap <ht   <!DOCTYPE html><CR><html><CR></html><Esc>O
<<<<<<< HEAD
inoremap <he    <head><CR><meta charset="utf-8"><CR><title></title><CR></head><CR>
"inoremap <?   <?php  ?><Esc>hhi
=======
inoremap <ph   <?php<CR>?><Esc>O
>>>>>>> 1db738ee3deda544f6a3617cd016c5af74be0203
inoremap <sc   <script><CR></script><Esc>O<Tab>
inoremap <st   <style><CR></style><Esc>O<Tab>
inoremap <he   <head><CR></head><Esc>O<Tab>
inoremap <bo   <body><CR></body><Esc>O<Tab>
inoremap <di   <div><CR></div><Esc>O<Tab>
inoremap <fo   <form action=""><CR></form><Esc>O<Tab>

inoremap <ti    <title></title><Esc>7hi
inoremap <la    <label ></label><Esc>7hi
inoremap <in    <input  id="" value="" type="" name=""/><Esc>2hi
inoremap <te    <textarea id="" name="text"></textarea><Esc>12hi
inoremap <bu    <button onclick=""></button><Esc>8hi

inoremap <pr    <pre id=""></pre>
inoremap <im    <img src=""/><Esc>
inoremap <h1    <h1></h1><Esc>4hi
inoremap <h2    <h2></h2><Esc>4hi
inoremap <h3    <h3></h3><Esc>4hi
inoremap <h4    <h4></h4><Esc>4hi
inoremap <ul    <ul></ul><Esc>4hi
inoremap <li    <li></li><Esc>4hi
inoremap <p     <p></p><Esc>3hi
inoremap <a     <a href=""></a><Esc>5hi
inoremap <br    <br/>
inoremap <hr    <hr/>

"Auto-insert closing parenthesis/brace
"inoremap main  package main<CR>import (<CR>)<Esc>O"fmt"<Esc>jo<CR><CR>func main() {<CR>}<Esc>O
"noremap " ""<Left>
"noremap {<CR> {<CR>}<Esc>O


" SETTING

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

set noro                    " load init.vim as root ? // not read only



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
colorscheme codedark


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
"   PLUGING VIM
"
"''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''"



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
" List ends here. Plugins become visible to Vim after this call.
call plug#end()


