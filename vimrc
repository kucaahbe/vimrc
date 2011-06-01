set nocompatible
" pathogen setup:
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
" common colorizing:
syntax on
colorscheme desert
" Enabling filetype plugin:
filetype plugin indent on
" print the line number in front of each line
set number
" Help
set helpheight=30
" Indent
set smartindent
set shiftwidth=2 " default shift for indent
" Cursor
set cursorline

" ----------------------------
"     Misc local settings
" ----------------------------
if filereadable($HOME."/.vimrc.local")
  source $HOME/.vimrc.local
endif
