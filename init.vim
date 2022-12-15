set number
set relativenumber
set autowrite
set noswapfile
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set wildmenu
set wildmode=list:longest,full
set undofile
set undodir="C:/Users/O/AppData/Local/nvim/undo"

filetype plugin indent on
syntax on
colorscheme shine

tnoremap <Esc> <C-\><C-n>  <ESC>

inoremap { {}<ESC>i
inoremap ( ()<ESC>i
inoremap " ""<ESC>i
inoremap ' ''<ESC>i
inoremap [ []<ESC>i
inoremap /*  /**/<ESC>h2i<ENTER><ESC>ka<TAB>
inoremap #i #include <><ESC>i
inoremap #in #include ""<ESC>i
inoremap std std::<ESC>a
inoremap //  //<esc>i
inoremap /.  //---> <ESC>O<ESC>cc<ESC>jo<ESC>cc<ESC>kA
inoremap <? <?php?><ESC>hha<ENTER><ENTER><ESC>ka<TAB>
inoremap #if #ifndef<ENTER>#define<ESC>10o<ESC>i#endif<ESC>11kA <ESC>A

noremap <a-s> <c-w>s
noremap <a-v> <c-w>v

noremap <a-=> <c-w>=
noremap <a-c> <c-w>c

noremap <a-w> <c-w>w

noremap <a-h> <c-w><
noremap <a-j> <c-w>+
noremap <a-k> <c-w>-
noremap <a-l> <c-w>>

noremap  <s-tab>  :30 Lexplore<cr>
noremap  <a-t>  :terminal pwsh.exe<cr>
