set smartindent
set shiftwidth=4
set softtabstop=4
set expandtab
set mouse=a "ability to use mouse
set smartcase
set number

" stuff to enable solarized color theme
syntax on
let g:solarized_termcolors=256
set t_Co=256 
set background=dark

"colorscheme hybrid
colorscheme onedark 

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd w
let NERDTreeIgnore=['.o$[[file]]']
let NERDTreeIgnore=['.h.gch$[[file]]']
let g:NERDTreeDirArrows=0

execute pathogen#infect()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_cpp_check_header = 1

"keyboard mappings
map <F1> :w<CR>
map <F2> :wqa<CR>
map <F12> :qa!<CR>
map <F8> :w<CR> :silent !clear<CR> :silent :!./%<CR> 
