" vim filetype=vim
set nocompatible
" pathogen setup:
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
" common colorizing:
syntax on
colorscheme desert

set helpheight=30

" ----------------------------
"     Misc local settings
" ----------------------------
if filereadable($HOME."/.vimrc.local")
  source $HOME/.vimrc.local
endif
