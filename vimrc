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

colorscheme hybrid
"color atom, jellybeans, hybrid, solarized 

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd w
let NERDTreeIgnore=['.o$[[file]]']
let NERDTreeIgnore=['.h.gch$[[file]]']
<<<<<<< HEAD
=======
let g:NERDTreeDirArrows=0
>>>>>>> f8bb8e86cc6dc2bd81bb5380d530da9a4052dfd2


execute pathogen#infect()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_check_header = 1

"keyboard mappings
map <F1> :w<CR>
map <F2> :wqa<CR>
<<<<<<< HEAD
=======
map <F12> :qa!<CR>
>>>>>>> f8bb8e86cc6dc2bd81bb5380d530da9a4052dfd2
map <F8> :w<CR> :silent !clear<CR> :silent :!./%<CR> 
