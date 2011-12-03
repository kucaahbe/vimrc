set nocompatible
set visualbell " use visual notification instead of beep

set guioptions+=M "the default menus are not loaded(should be BEFORE syntax or filetype 'on')

" pathogen setup:
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" enabling syntax highlighting:
syntax on

" terminal settings:
if !has('gui_running')
  if &term =~ "xterm"
    if has("terminfo")
      set t_Co=256

      colorscheme desert256
      highlight LineNr ctermbg=232 ctermfg=0
      highlight CursorLine ctermbg=234 cterm=none
    endif
  elseif &term =~ "linux"
    if has("terminfo")
      set t_Co=8

      colorscheme desert
      highlight LineNr ctermbg=0 ctermfg=7
    endif
  endif
endif

" enabling filetype plugin:
filetype plugin indent on

" print the line number in front of each line
set number

" help
set helpheight=30

" tab
set expandtab

" indent
set smartindent
set shiftwidth=2 " default shift for indent

" cursor
set cursorline

" completion
set complete=.,w,b,i

" search
set hlsearch

" key mappings:
map Q gQ " more user-friendly *Ex-mode*

" windows settings
set nosplitbelow
set splitright

" Russian support:
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz,Ж;:

au BufRead,BufNewFile /etc/nginx/*              set filetype=nginx

" ----------------------------
"     Misc local settings
" ----------------------------
if filereadable($HOME."/.vimrc.local")
  source $HOME/.vimrc.local
endif
