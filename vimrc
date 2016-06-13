set expandtab       " always use spaces instead of tabs
set tabstop=4       " if there are tabs display them with 4 spaces
set softtabstop=4   " this way backspace will remove the 'virtual' tab
set shiftwidth=4    " intend with 4 spaces
set autoindent
autocmd FileType make setlocal noexpandtab
" use intelligent indentation for C
set smartindent
" enable line numbers
set number
" enable syntax highlighting
syntax on
