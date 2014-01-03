augroup myvimrchooks
    au!
    autocmd bufwritepost .vimrc source ~/.gvimrc
augroup END

"Pathogen setup
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"Enables tab completion for vim commands
set nocompatible

set guioptions-=T 				"Disable toolbar
filetype plugin on 				"Enable filetype plugins
filetype indent on 				"Enable filetype indent
set nu 						"Line numbers
syntax on 					"Enable syntax higlighting
set autoread 					"Set to auto read when a file is changed from the outside
set background=light
colorscheme solarized 				"Set the color scheme
set autowrite 					"Set to auto write before changing buffers
set history=1000				"Set history value ( Default is 20 )
set clipboard=unnamedplus 			"Enable normal clipboard 
set ffs=unix 					"Set to save with UNIX line endings (LF)
set spell					"Enable spellchecking
set backupdir=~/.vimswap 			"Set the swap file backup directory
set incsearch					"Increamental search
set hlsearch 					"Highlight search terms
set foldenable					"Auto fold code

set nowrap					"wrap long lines
set expandtab					"Tabs are now spaces, not tabs
set autoindent					"Indent at the same level as the previous line
set softtabstop=4               		" let backspace delete indent
let g:NERDTreeDirArrows=0
let NERDTreeChDirMode=2 			" Nerd tree auto refresh

:nnoremap <Tab> :bnext<CR>			"Easy buffer switching (next buffer)
:nnoremap <S-Tab> :bprevious<CR>		"Easy buffer switching (prev buffer)
set encoding=utf-8

set nospell
set guifont=Monospace\ 9 


""----- Demu ---""
" Strip the newline from the end of a string
function! Chomp(str)
  return substitute(a:str, '\n$', '', '')
endfunction

" Find a file and pass it to cmd
function! DmenuOpen(cmd)
  let fname = Chomp(system("git ls-files | dmenu -i -l 20 -p " . a:cmd))
  if empty(fname)
    return
  endif
  execute a:cmd . " " . fname
endfunction


""----- Demu keybindsings ---""
map <c-t> :call DmenuOpen("tabe")<cr>
map <c-f> :call DmenuOpen("e")<cr>
