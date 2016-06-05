call plug#begin()
source ~/.vimplugs
call plug#end()


" show cursor line
set cursorline

" windows settings
set nosplitbelow
set splitright

" nerdtree settings
let NERDTreeWinPos="right"
let NERDTreeLynxMotion=1

" ultisnips settings
let g:UltiSnipsSnippetDirectories=["vim-snippets"]

" toggle spelling with Ctrl-s
imap <C-s> <Esc>:set invspell<CR>i<Right>
nmap <C-s> :set invspell<CR>

if filereadable($HOME."/.vimrc.local")
  source $HOME/.vimrc.local
endif
