syntax on "Включить подсветку синтаксиса
set nu "Включаем нумерацию строк
set termencoding=utf-8 "Кодировка терминала
set t_vb= "Не пищать! 

" Переносим на другую строчку, разрываем строки
set wrap
set linebreak

" Вырубаем .swp и ~ (резервные) файлы
set nobackup
set noswapfile
set encoding=utf-8 " Кодировка файлов по умолчанию
set fileencodings=utf8,cp1251

set clipboard=unnamed
set ruler

" Выключаем звук в Vim
set visualbell t_vb=

set guioptions-=T  "remove toolbar
set guioptions-=m  "remove menu bar
set guioptions-=L  "remove left-hand scroll bar
set guioptions-=r  "remove right-hand scroll bar


nnoremap <C-F11> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>

set guifont=JetBrains\ Mono:h11


set langmenu=en_US
let $LANG = 'en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

set tabstop=4 softtabstop=4
set shiftwidth=4

" Specify a directory for plugins
call plug#begin('~/vim82/plugged')

Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'



" Initialize plugin system
call plug#end()

colorscheme material

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>


" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

autocmd vimenter * NERDTree D:\Workspace\

let NERDTreeMinimalUI=1


" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ ]
  
" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" run prettier on save