"pathogen support
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

"line numbering
set number
set relativenumber

"tab defaults
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab

"wrap lines
set linebreak

"set display options
set scrolloff=1
set sidescrolloff=5
set display+=lastline

"statusline defaults
set laststatus=2
set ruler

"enable completion for command-line
set wildmenu

"automatically change directory to file location
set autochdir
"this line is to fix a bug with autochdir in vim
autocmd VimEnter * set autochdir

"change spellcheck to english
set spelllang=en

"enable sensible splits
set splitbelow
set splitright

"indent by filetype
filetype plugin indent on

"enable syntax highlighting
syntax on

" rebind the command W to w
command W w

"search defaults
set incsearch
set hlsearch
set ignorecase
set smartcase

"delete comment character when joining commented lines
set formatoptions+=j

"automatically re-read file if changed
set autoread

"use blowfish2 as default encryption method
set cryptmethod=blowfish2

"clear search highlighting on Leader-c (clear)
nnoremap <Leader>c :noh<cr>:<backspace>

"auto-indent code on cu (clean up)
nnoremap cu gg=G``zz

"map F3 to toggle spellcheck
nnoremap <F3> :set spell! spell?<cr>

"search selection with Leader-s
nnoremap <Leader>s *N
vnoremap <Leader>s y/<C-r>"<cr>``

"navigate wrapped lines with ease
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

"remove trailing spaces with Leader-t
nnoremap <Leader>t :%s/\s\+$//<cr>
