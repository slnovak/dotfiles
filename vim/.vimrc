set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ayu-theme/ayu-vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'garbas/vim-snipmate'
Plugin 'gmarik/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'honza/vim-snippets'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'ruby-matchit'
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'sjl/gundo.vim'
Plugin 'slim-template/vim-slim'
Plugin 't9md/vim-ruby-xmpfilter'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'vim-ruby/vim-ruby'
Plugin 'wincent/command-t'

call vundle#end()            " required
filetype plugin indent on    " required

let mapleader = ','

nnoremap <space>u :GundoToggle<CR>
nnoremap <space><space> :NERDTreeToggle<CR>
nnoremap <space>f :NERDTreeFind<CR>
nmap <Up> <C-W>-<C-W>-
nmap <Down> <C-W>+<C-W>+
nmap <Left> <C-W><<C-W><
nmap <Right> <C-W>><C-W>>
map <leader>r :!ruby %<cr>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let NERDTreeIgnore = ['\.pyc$']
let NERDTreeShowHidden=1

syntax enable
scriptencoding utf-8

set background=dark
set backspace=indent,eol,start
set backup
set backupdir=~/.vim/backup
set clipboard=unnamed
set colorcolumn=80
set diffopt=context:3,iwhite,filler "diff options
set encoding=utf-8
set expandtab
set fileformats=unix,dos,mac
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set list
set listchars=tab:>.
set mouse=a 
set nocompatible
set nolinebreak
set nowrapscan
set number
set ruler
set shiftwidth=2
set shortmess+=I
set showmatch
set smartcase
set smarttab
set splitbelow
set statusline=[%02n]\ %f\ %(\[%M%R%H]%)%=\ %4l,%02c%2V\ %P%*
set switchbuf=useopen,usetab
set tabstop=2
set tagbsearch
set viminfo='10,\"100,:20,%,n~/.viminfo

autocmd BufRead *.md set textwidth=80

set termguicolors     " enable true colors support
let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu       " otherwise solarized

hi clear SignColumn
let g:vim_markdown_folding_disabled=1

let g:ruby_path=system('cd ~ && rbenv which ruby')

if !empty(matchstr($MY_RUBY_HOME, 'jruby'))
  let g:ruby_path = join(split(glob($MY_RUBY_HOME.'/lib/ruby/*.*')."\n".glob($MY_RUBY_HOME.'/lib/rubysite_ruby/*'),"\n"),',')
endif

au BufRead,BufNewFile *.citrus setfiletype ruby
au BufRead,BufNewFile *.treetop setfiletype ruby
au Filetype python setl et ts=2 sw=2

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

set statusline+=%#warningmsg#
set statusline+=%*

let s:eslint_path = system('PATH=$(npm bin):$PATH && which eslint') 

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_highlighting = 1
let g:syntastic_error_symbol = '×' " There are better characters, but Hackpad won't show them
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = substitute(s:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
let g:syntastic_json_checkers = ['jsonlint']
let g:syntastic_loc_list_height = 5
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_scss_checkers = ['scss_lint']
let g:syntastic_style_error_symbol = '⚠'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_vim_checkers = ['vint']
let g:syntastic_warning_symbol = '⚠'

nmap <buffer> <F4> <Plug>(xmpfilter-run)
xmap <buffer> <F4> <Plug>(xmpfilter-run)
imap <buffer> <F4> <Plug>(xmpfilter-run)

nmap <buffer> <F3> <Plug>(xmpfilter-mark)
xmap <buffer> <F3> <Plug>(xmpfilter-mark)
imap <buffer> <F3> <Plug>(xmpfilter-mark)
