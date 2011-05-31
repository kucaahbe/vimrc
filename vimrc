" vim filetype=vim
set nocompatible
syntax on

set helpheight=30

" ----------------------------
"     Misc local settings
" ----------------------------
if filereadable($HOME."/.vimrc.local")
  source $HOME/.vimrc.local
endif

if filereadable($HOME."/.gvimrc.local")
  source $HOME/.gvimrc.local
endif
