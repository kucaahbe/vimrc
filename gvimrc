set guioptions-=m "the menubar is not displayed
set guioptions-=T "the toolbar is not displayed
set vb t_vb=      " When no beep or flash is wanted
" install bdg font into ~/.fonts
" enable there bitmap fonts(for terminus too):
" sudo dpkg-reconfigure fontconfig-config
" fc-cache -fv
" fc-list
set guifont=Terminus\ 14

colorscheme anotherdark
" line numbers coloring
highlight LineNr guibg=#3d3d3d guifg=#616161
" Cursor
highlight CursorLine guibg=#616161

" tabs move with shift- right/left
map <S-Right> gt
map <S-Left> gT
imap <S-Right> <C-PageDown>
imap <S-Left> <C-PageUp>

" ----------------------------
"     Misc local settings
" ----------------------------
if filereadable($HOME."/.gvimrc.local")
  source $HOME/.gvimrc.local
endif
