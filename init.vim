




syntax on			" Turn on syntax highlighting
"filetype off 			" Helps force plugins to load correctly when it is turned back on below
filetype indent on      	" load filetype-specific indent files<Paste>

" AUTOCLOSE TAGS
inoremap <html<CR>   <!DOCTYPE html><CR></html><Esc>O<Tab>
inoremap <script<CR>   <script><CR></script><Esc>O<Tab>
inoremap <style<CR>   <style><CR></style><Esc>O<Tab>
inoremap <head<CR>   <head><CR></head><Esc>O<Tab>
inoremap <body<CR>   <body><CR></body><Esc>O<Tab>
inoremap <head<CR>   <head><CR></head><Esc>O<Tab>
inoremap <div<CR>   <div><CR></div><Esc>O<Tab>
inoremap <xml<CR>   <xml><CR></xml><Esc>O<Tab>

inoremap <h1        <h1></h1><Esc>hhhhi
inoremap <h2        <h2></h2><Esc>hhhhi
inoremap <h3        <h3></h3><Esc>hhhhi
inoremap <h4        <h4></h4><Esc>hhhhi
inoremap <ul        <ul></ul><Esc>hhhhi
inoremap <li        <li></li><Esc>hhhhi
inoremap <p        <p></p><Esc>hhhi
inoremap <br        </br>

"Auto-insert closing parenthesis/brace
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>


inoremap " ""<Left>
inoremap `  ``<Left>
"inoremap '  ''<Left>

inoremap () ()
inoremap {} {}
inoremap [] []


inoremap {<CR> {<CR>}<Esc>O
inoremap (<CR> (<CR>)<Esc>O





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

"set foldenable         	" enable folding
"set foldmethod=indent   	" fold based on indent level
"set foldnestmax=10      	" 10 nested fold max
"nnoremap <space> za     	" space open/close foles

" EDITING
set tabstop=4       		" number of visual spaces per TAB

set shiftwidth=4			" 1 tab == 4 spaces

set expandtab           	" tabs are spaces





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
"set t_Co=256
"set background=dark
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1

"colorscheme mycolor
"colorscheme codedark



