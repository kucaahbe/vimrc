call plug#begin()
source ~/.vimplugs
call plug#end()

" print the line number in front of each line
set number

" show cursor line
set cursorline
" display line at 80:
set colorcolumn=80

" highlight search
set hlsearch

" expand tab as spaces
set expandtab

" windows settings
set nosplitbelow
set splitright

" indent
set smartindent
set shiftwidth=2
set cinoptions=:0

" nerdtree settings
let NERDTreeWinPos="right"
let NERDTreeLynxMotion=1

" ultisnips settings
let g:UltiSnipsSnippetDirectories=["vim-snippets"]

" toggle spelling with Ctrl-s
imap <C-s> <Esc>:set invspell<CR>i<Right>
nmap <C-s> :set invspell<CR>

inoremap '' ''<Left>
inoremap "" ""<Left>
inoremap (( ()<Left>
inoremap {{ {}<Left>
inoremap [[ []<Left>
inoremap {{{ {  }<Left><Left>

autocmd BufNewFile,BufRead *.js.erb set ft=javascript.eruby
autocmd BufNewFile,BufRead *.es6.erb set ft=javascript.eruby
autocmd BufNewFile,BufRead *_spec.rb set ft=ruby.rspec

if filereadable($HOME."/.vimrc.local")
  source $HOME/.vimrc.local
endif
