" vim filetype=vim
set nocompatible
" pathogen setup:
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
" common colorizing:
syntax on
filetype plugin indent on
colorscheme desert

set number " print the line number in front of each line

set helpheight=30

set smartindent
set shiftwidth=2 " default shift for indent

" ----------------------------
"     Misc local settings
" ----------------------------
if filereadable($HOME."/.vimrc.local")
  source $HOME/.vimrc.local
endif
