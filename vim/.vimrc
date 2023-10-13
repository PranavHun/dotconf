set nocompatible
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

set relativenumber
set number
set cursorline
set autochdir

set expandtab
set lazyredraw
set showmatch
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set noshowmode

syntax enable
filetype indent on
filetype plugin on


set wildmenu
set wildignore +=*.out,*.
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico,*.o
set wildignore+=*.pdf,*.psd

"set tags=./tags;tags,$HOME/Documents/software/;
set colorcolumn=80
set laststatus=2



nnoremap ` :nohlsearch<CR>                         " turn off search highlight
noremap <C-p> <Esc>:25Lexplore<CR>
noremap <C-s> <Esc>:w<CR>
inoremap <C-a> <Esc>A
inoremap <C-o> <ESC>o
autocmd FileType python set winwidth=95
autocmd! BufWritePost .vimrc source $MYVIMRC       " Load vimrc upon save
autocmd FileType cpp,cc,c
       \ inoremap ;m
       \ int main(int argc, char *argv[])<Enter>
       \ {<Enter>return 0;<Enter>}<Enter><Esc>vkkk<o
autocmd FileType cpp,cc,c,hpp,h,hh
       \ inoremap ;i
       \ #include <><Esc>i
autocmd FileType cpp,cc,c,hpp,h,hh
       \ inoremap ;c
       \ std::cout <<  << '\n';<Esc>8hi

"set rtp+=/usr/share/powerline/bindings/vim/

runtime! ftplugin/man.vim

call plug#begin('~/.vim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/goyo.vim'
Plug 'rhysd/vim-clang-format'
Plug 'rust-lang/rust.vim'
Plug 'vim-syntastic/syntastic'
Plug 'psf/black'
call plug#end()

colorscheme dracula
hi Normal  ctermbg=NONE
hi Nontext ctermbg=NONE

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler_options = ' -std=c++20 -fconcepts'
let g:syntastic_python_pylint_args = "--extension-pkg-whitelist=OpenGL"

