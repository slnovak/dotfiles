set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'derekwyatt/vim-scala'
Plugin 'garbas/vim-snipmate'
Plugin 'gmarik/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'honza/vim-snippets'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'sjl/gundo.vim'
Plugin 'slim-template/vim-slim'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'vim-ruby/vim-ruby'

call vundle#end()            " required
filetype plugin indent on    " required

filetype plugin indent on

nnoremap <space>u :GundoToggle<CR>
nnoremap <space><space> :NERDTreeToggle<CR>
nnoremap <space>f :NERDTreeFind<CR>
nmap <Up> <C-W>-<C-W>-
nmap <Down> <C-W>+<C-W>+
nmap <Left> <C-W><<C-W><
nmap <Right> <C-W>><C-W>>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let NERDTreeIgnore = ['\.pyc$']
let NERDTreeShowHidden=1

syntax enable

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

colorscheme solarized

hi clear SignColumn
let g:vim_markdown_folding_disabled=1

let g:ruby_path=system('cd ~ && rbenv which ruby')

if !empty(matchstr($MY_RUBY_HOME, 'jruby'))
  let g:ruby_path = join(split(glob($MY_RUBY_HOME.'/lib/ruby/*.*')."\n".glob($MY_RUBY_HOME.'/lib/rubysite_ruby/*'),"\n"),',')
endif

au BufRead,BufNewFile *.citrus setfiletype ruby
au BufRead,BufNewFile *.treetop setfiletype ruby
