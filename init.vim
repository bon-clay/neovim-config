" - Setup vim plug
" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
"       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"
" - for install all plugins:
" :PlugInstall 
"
" - for tagbar:
" sudo apt install exuberant-ctags
"
" - for autocomplit:
" sudo apt install nodejs
" sudo apt install npm
" cd ~/.config/nvim/plugged/coc.nvim/
" sudo npm install -g yarn
" yarn install
" yarn build
" pip3 install jedi
" - after use in nvim:
" :CocInstall coc-python
"
"
"
:set autoindent
:set completeopt-=preview
:set expandtab
:set foldcolumn=1
:set mouse=a
:set number
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set tabstop=4
:set t_Co=256

filetype on
filetype plugin on
syntax on


call plug#begin()

Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/neoclide/coc.nvim'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/tpope/vim-surround' "ys
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'https://github.com/tpope/vim-commentary' "gc gcc
Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/easymotion/vim-easymotion'
Plug 'https://github.com/Xuyuanp/nerdtree-git-plugin'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/tpope/vim-fugitive'

call plug#end()


let g:mapleader=','
let g:tagbar_autofocus=1
let g:tagbar_autoclose=1

let python_highlight_all = 1

colorscheme afterglow

nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-y> :TagbarToggle<CR>
nnoremap <C-p> :!python3 %<CR>

map <Leader> <Plug>(easymotion-prefix)
map <Leader>gs :Git<CR>
map <Leader>gc :Git commit<CR>
map <Leader>gp :Git push<CR>
