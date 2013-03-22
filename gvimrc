augroup myvimrchooks
    au!
    autocmd bufwritepost .vimrc source ~/.gvimrc
augroup END

"Pathogen setup
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"Disable toolbar
set guioptions-=T 

"Enables tab completion for vim commands
set nocompatible

"Enable normal clipboard 
set clipboard=unnamedplus

"Enable filetype plugins
filetype plugin on
filetype indent on

"Set to auto read when a file is changed from the outside
set autoread

"Enable syntax higlighting
syntax on

"Line numbers
set nu

"Set to save with UNIX line endings (LF)
set ffs=unix


"Set the swap file backup directory
set backupdir=/tmp

" Nerd tree auto refresh
let NERDTreeChDirMode=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Loading the python-mode plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:pymode = 1
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8,mccabe"
" Skip errors and warnings
" E.g. "E501,W002", "E2,W" (Skip all Warnings and Errors startswith E2) and etc
let g:pymode_lint_ignore = "E501"
" Select errors and warnings
" E.g. "E4,W"
let g:pymode_lint_select = ""
let g:pymode_lint_onfly = 0
let g:pymode_lint_config = "$HOME/.pylintrc"
" Check code every save
let g:pymode_lint_write = 1
" Auto open cwindow if errors be finded
let g:pymode_lint_cwindow = 1
" Show error message if cursor placed at the error line
let g:pymode_lint_message = 1
" Auto jump on first error
let g:pymode_lint_jump = 0
" Hold cursor in current window when quickfix is open
let g:pymode_lint_hold = 0
" Place error signs
let g:pymode_lint_signs = 1
" Maximum allowed mccabe complexity
let g:pymode_lint_mccabe_complexity = 8
" Minimal height of pylint error window
let g:pymode_lint_minheight = 3
" Maximal height of pylint error window
let g:pymode_lint_maxheight = 6
"Enable python folding
let g:pymode_folding = 1
" Enable python objects and motion
let g:pymode_motion = 1
" Enable pymode's custom syntax highlighting
let g:pymode_syntax = 1
" Enable all python highlightings
let g:pymode_syntax_all = 1
" Highlight "print" as function
let g:pymode_syntax_print_as_function = 0
" Highlight indentation errors
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
" Highlight trailing spaces
let g:pymode_syntax_space_errors = g:pymode_syntax_all
" Highlight string formatting
let g:pymode_syntax_string_formatting = g:pymode_syntax_all
" Highlight str.format syntax
let g:pymode_syntax_string_format = g:pymode_syntax_all
" Highlight string.Template syntax
let g:pymode_syntax_string_templates = g:pymode_syntax_all
" Highlight doc-tests
let g:pymode_syntax_doctests = g:pymode_syntax_all
" Highlight builtin objects (__doc__, self, etc)
let g:pymode_syntax_builtin_objs = g:pymode_syntax_all
" Highlight builtin functions
let g:pymode_syntax_builtin_funcs = g:pymode_syntax_all
" Highlight exceptions
let g:pymode_syntax_highlight_exceptions = g:pymode_syntax_all
" For fast machines
let g:pymode_syntax_slow_sync = 0
"Disable rope support
let g:pymode_rope = 0
let g:pymode_lint_buffer = 1
