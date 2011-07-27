set nocompatible

set guioptions+=M "the default menus are not loaded(should be BEFORE syntax or filetype 'on')

" pathogen setup:
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" common colorizing:
syntax on
colorscheme desert

" enabling filetype plugin:
filetype plugin indent on

" print the line number in front of each line
set number

" help
set helpheight=30

" indent
set smartindent
set shiftwidth=2 " default shift for indent

" cursor
set cursorline

" search
set hlsearch

" key mappings:
map Q gQ " more user-friendly *Ex-mode*

" windows settings
set nosplitbelow
set splitright

" Russian support:
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz,Ж.;:/

" ----------------------------
"     Misc local settings
" ----------------------------
if filereadable($HOME."/.vimrc.local")
  source $HOME/.vimrc.local
endif
