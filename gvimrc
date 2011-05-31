set guioptions+=M "the default menus are not loaded
set guioptions-=m "the menubar is not displayed
set guioptions-=T "the toolbar is not displayed
set vb t_vb=      " When no beep or flash is wanted
set guifont=Terminus\ 10

" ----------------------------
"     Misc local settings
" ----------------------------
if filereadable($HOME."/.gvimrc.local")
  source $HOME/.gvimrc.local
endif
