" created by raphael pinet
" v0.0 - 03/03/2015

" Mouse active
:set mouse=a

" number of line (set number)
:set nu
" syntax highlight (syntax on)
:sy on
" show command in foot-bar
:set showcmd
" show parenthesis
:set showmatch
:set mat=2

:set listchars=tab:>-,trail:-
":set listchars=space:.,trail:.
" auto indent
:filetype plugin indent on
:set smartindent
:set autoindent
" fast saving
nmap <leader>w :w!<cr>

" always show current position
:set ruler

" No annoying sound on errors
":set noerrorbells
:set novisualbell
":set t_vb=
":set tm=500

"""""""""""""""""""""""""
""""" color and font
"""""""""""""""""""""""""
" eanble syntax highlighting
:syntax enable

" see other theme color in /usr/share/vim/vim72/colors/
:set t_Co=256
":colorscheme koehler
":colorscheme muse
":colorscheme dieter
:colorscheme desert
:set background=dark

" Set extra options when running in GUI mode
"if has("gui_running")
"    set guioptions-=T
"    set guioptions+=e
"    set t_Co=256
"    set guitablabel=%M\ %t
"endif

:set  foldmethod =syntax    "Réduira automatiquement les fonctions et blocs (#region en C# par exemple)
":set  foldtext =MyFoldFunction()    "on utilise notre fonction (optionnel)

" Set utf8 as standard encoding and en_US as the standard language
":set encoding=utf8
"set guifont =Courier\12

:set  tabstop =4
:set  shiftwidth =4
:set  softtabstop =4

" Use Unix as the standard file type
":set ffs=unix,dos,mac



:set history=100
:set hlsearch
:set incsearch
" this like /search\c
:set ignorecase

" edit on current line
:set cursorline
":hi Cursorline ctermbg=darkgrey guibg=#771c1c cterm=none

":filetype on
":set spelllang =eng,fr
":set spell
":set spellsuggest =5

"iab void (void)
iab { {}
iab ( ()
iab [ []
iab " ""
"iab ' ''
iab ? () ?  :  ;
iab #i #include
iab psw "../includes/push_swap.h"
iab lft "../libft/libft.h"
iab #d #define
"iab printf printf("%s\n");
iab ret0 return (0);
iab imv int main(void)
iab imc int main(int ac, char **av)
":iabrev adn and
iab adn and
iab ligth light
iab widht width
iab lenght length

:autocmd BufNewFile *.txt :write
:autocmd BufWritePre *.c :normal gg=G
:autocmd BufWritePre *.h :normal gg=G


" cursor position in last one
:au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif



