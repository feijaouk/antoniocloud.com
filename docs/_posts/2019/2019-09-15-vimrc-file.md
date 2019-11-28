---
layout: post
---

`vimrc` file options

- Remember, if you are using a `colorscheme`, you need to download that scheme. Example, check the link for the
`happy_hacking`

- If you use this `.vimrc` suggestion file, it enables `vim` `visual` mode, so `mouse` support is enable on vim.

- Basic commands in `visual mode` are :
    - `shift+y` to `copy`
    - `shift+p` to `paste`


- Below, suggestion for file `.vimrc` ...

```sh

""" read first from this file
""" from " Website: https://github.com/yorickpeterse/happy_hacking.vim
"colorscheme happy_hacking
colorscheme yozakura

""" then apply personalisations
filetype off

"highlight clear

filetype plugin indent on " Filetype auto-detection
syntax on " Syntax highlighting

"set background=dark


""" set UTF-8 encoding
set encoding=utf-8
set fenc=utf-8
set termencoding=utf-8
""" disable vi compatibility (emulation of old bugs)
set nocompatible
""" use indentation of previous line
set autoindent
""" use intelligent indentation for C
"set smartindent
""" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
""" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120
""" turn syntax highlighting on
set t_Co=256
"syntax on
""" colorscheme wombat256
""" turn line numbers on
set number
""" highlight matching braces
set showmatch
""" intelligent comments

set softtabstop=4
set showcmd
set showmatch
set incsearch
set hlsearch

set hidden

"if has('termguicolors')
"    set termguicolors
"endif

set mouse=a

""" https://gist.github.com/benjiao/08432d1377e768c2c4e9

" Use case insesitive search
set ignorecase
set smartcase

" Display cursor position
set ruler

" Prompt to save file on exit
set confirm

" Disable beep
set visualbell

" Highlight cursor line
set cursorline

```

