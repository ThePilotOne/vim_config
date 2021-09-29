syntax on "подсветка синтаксиса
set t_Co=256 "256 цветовой профиль
set term=xterm-256color
"set term=screen-256color
if has('termguicolors')
    set termguicolors
endif
"set expandtab "заменяет табы пробелами
set tabstop=4 "размер таба 4 пробела
set nu "номера строк
set wrap "переносит строки
set linebreak "разрывает строки
set nobackup "не бэкапит изменения
set noswapfile "не создает файл .swp
"set hlsearch "подсветка всех результатов поиска
set incsearch "инкрементальный поиск
"highlight LineNr ctermfg=DarkGrey "отображает номера строк темно серым 
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz "делает дотупными горячие клавиши в русской раскладке
"let g:material_theme_style = 'default' | 'palenight' | 'ocean' | 'lighter' | 'darker' | 'default-community' | 'palenight-community' | 'ocean-community' | 'lighter-community' | 'darker-community'
let g:material_theme_style = 'ocean' "тема цветовой схемы material
let g:material_terminal_italics = 1 "включение италика 
colorscheme material "цветовая схема
set cursorline "подсветка строки на которой курсор
set background=dark "тёмный задник
set list 
set listchars=tab:>· "подсветка табов
set ignorecase "регистронезависимый поиск
set encoding=utf-8 " Кодировка файлов по умолчанию
set fileencodings=utf8,cp1251 "кодировки которые vim будет понимать
set mouse=a "включение поддержки мыши
