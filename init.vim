


"highlight ErrorMsg guifg=#FFFF00 guibg=NONE

"""""""""""""""""""""""""""""""""""" global setteng
set number
"set relativenumber
set autoindent
set tabstop=4
set expandtab 
set shiftwidth=4
set nowrap              "no wrap lines
set nobackup
set noswapfile
set scrolloff=6
"set nowritebackup

""""""""""""""""""""""' key map
" autoclose
inoremap " ""<left>
inoremap ' ''<left>
"inoremap ` ``<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

inoremap "" ""
inoremap '' ''
"inoremap `` ``
inoremap () ()
inoremap [] []
inoremap {} {}

inoremap {<CR> {<CR>}<ESC>O
inoremap `<CR> `<CR>`<ESC>O


" the prefix to use for leader commands
let g:mapleader="<space>"

" Use vim-plug to manage your plugins:
" https://github.com/junegunn/vim-plug


""""""""""""""""""""""""""""""""" plugins

"call plug#begin('~/.vim/vendor')
"call plug#end()

call plug#begin()

"plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-tslint', {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-lists', {'do': 'yarn install --frozen-lockfile'} " mru and stuff
"Plug 'neoclide/coc-highlight', {'do': 'yarn install --frozen-lockfile'} " color highlighting
Plug 'neoclide/coc.nvim', {'branch': 'release'}



" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

"Plug 'lewis6991/gitsigns.nvim'

" themes

"Plug 'Mofiqul/vscode.nvim'
"Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
"Plug 'arzg/vim-colors-xcode', { 'as': 'xcode' }
"Plug 'bluz71/vim-moonfly-colors'
"Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
"Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'olimorris/onedarkpro.nvim'   " Vim-Plug
"Plug 'AlexvZyl/nordic.nvim', { 'branch': 'main' }

" airline
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'


" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
"
"
"
"Plug 'nvim-tree/nvim-web-devicons' " optional
"Plug 'nvim-tree/nvim-tree.lua'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }


" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }

call plug#end()
" You can revert the settings after the call like so:
filetype indent on   " enable file-type-specific indentation
"syntax off          " Disable syntax highlighting
"


" Color scheme (terminal)
set background=dark

"let g:solarized_termtrans=1 " or =256
"highlight DiagnosticError guifg=#FFFF00 guibg=NONE
"highlight DiagnosticSignError guifg=#FFFF00 guibg=NONE
"highlight WarningMsg guifg=#FFFF00 guibg=NONE
"highlight CustomMethod guifg=#87CEFA " 
"highlight Function guifg=#87CEEB



"colorscheme catppuccin
"colorscheme nordic
colorscheme onedarkpro
"colorscheme moonfly
"colorscheme tokyonight

lua << EOF
EOF

" set statusline+=%{get(b:,'gitsigns_status','')}


"""""""""""""""""""""""""""" coc setteng """""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=200

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
" set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" nmap <space>e <Cmd>CocCommand explorer<CR>
"
"
"
"
"
"
"
"
"
"
"
"======================= DockerFile ==========================
" dockerfile.vim - Syntax highlighting for Dockerfiles
" Maintainer:   Honza Pokorny <https://honza.ca>
" Last Change:  2020 Feb 11
" License:      BSD

" https://docs.docker.com/engine/reference/builder/

if exists("b:current_syntax")
    finish
endif

syntax include @JSON syntax/json.vim
unlet b:current_syntax

syntax include @Shell syntax/sh.vim
unlet b:current_syntax

syntax case ignore
syntax match dockerfileLinePrefix /\v^\s*(ONBUILD\s+)?\ze\S/ contains=dockerfileKeyword nextgroup=dockerfileInstruction skipwhite
syntax region dockerfileFrom matchgroup=dockerfileKeyword start=/\v^\s*(FROM)\ze(\s|$)/ skip=/\v\\\_./ end=/\v((^|\s)AS(\s|$)|$)/ contains=dockerfileOption

syntax keyword dockerfileKeyword contained ADD ARG CMD COPY ENTRYPOINT ENV EXPOSE HEALTHCHECK LABEL MAINTAINER ONBUILD RUN SHELL STOPSIGNAL USER VOLUME WORKDIR
syntax match dockerfileOption contained /\v(^|\s)\zs--\S+/

syntax match dockerfileInstruction contained /\v<(\S+)>(\s+--\S+)*/             contains=dockerfileKeyword,dockerfileOption skipwhite nextgroup=dockerfileValue
syntax match dockerfileInstruction contained /\v<(ADD|COPY)>(\s+--\S+)*/        contains=dockerfileKeyword,dockerfileOption skipwhite nextgroup=dockerfileJSON
syntax match dockerfileInstruction contained /\v<(HEALTHCHECK)>(\s+--\S+)*/     contains=dockerfileKeyword,dockerfileOption skipwhite nextgroup=dockerfileInstruction
syntax match dockerfileInstruction contained /\v<(CMD|ENTRYPOINT|RUN)>/         contains=dockerfileKeyword skipwhite nextgroup=dockerfileShell
syntax match dockerfileInstruction contained /\v<(CMD|ENTRYPOINT|RUN)>\ze\s+\[/ contains=dockerfileKeyword skipwhite nextgroup=dockerfileJSON
syntax match dockerfileInstruction contained /\v<(SHELL|VOLUME)>/               contains=dockerfileKeyword skipwhite nextgroup=dockerfileJSON

syntax region dockerfileString contained start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region dockerfileJSON   contained keepend start=/\v\[/ skip=/\v\\\_./ end=/\v$/ contains=@JSON
syntax region dockerfileShell  contained keepend start=/\v/ skip=/\v\\\_./ end=/\v$/ contains=@Shell
syntax region dockerfileValue  contained keepend start=/\v/ skip=/\v\\\_./ end=/\v$/ contains=dockerfileString

syntax region dockerfileComment start=/\v^\s*#/ end=/\v$/
set commentstring=#\ %s

hi def link dockerfileString String
hi def link dockerfileKeyword Keyword
hi def link dockerfileComment Comment
hi def link dockerfileOption Special

let b:current_syntax = "Dockerfile"
