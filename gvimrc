set guioptions+=M "the default menus are not loaded
set guioptions-=m "the menubar is not displayed
set guioptions-=T "the toolbar is not displayed
set vb t_vb=      " When no beep or flash is wanted
set guifont=Terminus\ 10

colorscheme anotherdark

highlight LineNr guibg=#3d3d3d guifg=#616161 " line numbers coloring

" ----------------------------
"     Misc local settings
" ----------------------------
if filereadable($HOME."/.gvimrc.local")
  source $HOME/.gvimrc.local
endif
