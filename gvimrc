call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"Enables tab completion for vim commands
set nocompatible

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
