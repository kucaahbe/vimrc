set nocompatible
set visualbell " use visual notification instead of beep

set guioptions+=M "the default menus are not loaded(should be BEFORE syntax or filetype 'on')

" pathogen setup:
call pathogen#infect()

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

" search
" vmap / y/<C-R>"<CR>

" trailing spaces
autocmd BufReadPost * syntax match TrailingSpaces /\s\+$/ contained
autocmd BufReadPost * highlight link TrailingSpaces SpellBad

" enable spelling
"set spell

" Russian support:
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz,Ж;:

" nerdtree settings
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif " close vim if the only window left open is a nerdtree

" === misc filetypes settings:

" vim-rails settings
autocmd BufRead,BufNewFile app/controllers/*_controller.rb set filetype=ruby.rails.rails-controller
autocmd BufRead,BufNewFile app/models/*.rb                 set filetype=ruby.rails.rails-model
autocmd BufRead,BufNewFile Gemfile,Guardfile               set filetype=ruby
autocmd BufRead,BufNewFile *_spec.rb                       set filetype=ruby.rspec
autocmd BufRead,BufNewFile [Rr]akefile{.rb}\=,*.rake       set filetype=ruby.rake
autocmd BufRead,BufNewFile *{.css}\=.scss                  set filetype=scss.css
autocmd BufRead,BufNewFile *.scss.erb                      set filetype=scss.css.eruby

autocmd BufRead,BufNewFile /etc/nginx/*                    set filetype=nginx.conf

autocmd BufRead,BufNewFile res/layout/*.xml                set filetype=xml.android-xml

" utility part

" tabs, see gvimrc

" toggle spelling with Ctrl-s
imap <C-s> <Esc>:set invspell<CR>i<Right>
nmap <C-s> :set invspell<CR>
" Sudo write :)
cmap Sw w !sudo tee %
" copy/paste
vmap <C-c> "+y

" ----------------------------
"     Misc local settings
" ----------------------------
if filereadable($HOME."/.vimrc.local")
  source $HOME/.vimrc.local
endif
