"______________ Plugins ______________"

" Set runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" ########## Plugin list
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'kaicataldo/material.vim'
Plugin 'mileszs/ack.vim'
Plugin 'skwp/greplace.vim'
Plugin 'junegunn/fzf.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-surround'
Plugin 'StanAngeloff/php.vim'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'tobyS/vmustache'
Plugin 'tobyS/pdv'
Plugin 'jiangmiao/auto-pairs'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'editorconfig/editorconfig-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'ap/vim-css-color'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'janko/vim-test'
Plugin 'niklaas/lightline-gitdiff'
Plugin 'nathangrigg/vim-beancount'
Plugin 'easymotion/vim-easymotion'
Plugin 'jceb/vim-orgmode'
" ######### End plugin list

call vundle#end()
filetype plugin indent on



"______________ General ______________"

" Always use latest settings, no compatibility with vi
set nocompatible

" Syntax highlighting
syntax enable

" Disable error bells
set noerrorbells visualbell t_vb=

" Autowrite files when switching buffers
set autowriteall

" Persistent undo
set undodir=$HOME/.vim/undo/ undofile undolevels=1000 undoreload=3000

" Autocomplete sources
set complete=.,w,b,u

" Share clipboard with osx
set clipboard=unnamed

"always show signcolumns
set signcolumn=yes

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c



"______________ Appareance ______________"

" Force 256 colors
set termguicolors
set t_CO=256

" Theme
let g:material_theme_style='palenight'
set background=dark
colorscheme material

" Cursor change for mode changes
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Font Settings
set guifont=Droid\ Sans\ Mono\ for\ Powerline:h18

" Disable wrap
set formatoptions-=t
set wrap!

" Make backspace go through indents end of line and start
set backspace=indent,eol,start

" Show line numbers
set number relativenumber

" Color column
set colorcolumn=101

" Current line highlight
set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#000000 ctermbg=000

" Show matching brackets/parenthesis
set showmatch

" Highlight problematic whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Tabs are spaces, not tabs
set expandtab

" Hide scrollbars
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" Change tabbar style
set guioptions-=e



"______________ Search ______________"

" Highlight matches when searching
set hlsearch

" Start highlighting as soon as you type
set incsearch



"______________ Split Management ______________"

set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

nmap <Leader>wv :vsp<cr>
nmap <Leader>wh :sp<cr>



"______________ Mappings ______________"

" Leader is now Space
map <Space> <Leader>

" Make it easy to edit the Vimrc file
nmap <Leader>ev :tabedit ~/.vimrc<cr>

" Make it easy to edit the nvim file
nmap <Leader>env :tabedit $MYVIMRC<cr>

" Make it easy to edit snippets
nmap <Leader>es :e ~/.vim/snippets/

" Clear search highlight
nmap <Leader><space> :nohlsearch<cr>

" Make NERDTree easier to toggle.
nmap <Leader>ft :NERDTreeToggle<cr>

" Close buffer
nmap <Leader>bd :bd<cr>

" Save buffer
nmap <Leader>fs :w<cr>

" Quit vim
nmap <Leader>qq :qa<cr>

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt

" Create a new tab
nmap <Leader>bn :tabnew<cr>

" Map escape to exit terminal mode
tnoremap <Esc> <C-\><C-n>



"______________ Ionic-specific ______________"

" Ionic cordova build ios
nmap <Leader>icbi :15sp\|:terminal ionic cordova build ios<cr>

" Ionic cordova build android
nmap <Leader>icba :15sp\|:terminal ionic cordova build android<cr>

" ngServe dev2
nmap <Leader>ngs2 :tabnew\|:terminal ng serve --configuration dev2<cr>

" ngServe dev
nmap <Leader>ngs0 :tabnew\|:terminal ng serve<cr>



"______________ Laravel-specific ______________"

" Map to navigate to web routes file
nmap <Leader>lrw :e routes/web.php<cr>

" Map to navigate to api routes file
nmap <Leader>lra :e routes/api.php<cr>

" Map to navigate to channel routes file
nmap <Leader>lrc :e routes/channel.php<cr>

" Map to navigate to console routes file
nmap <Leader>lrx :e routes/console.php<cr>

" Map to navigate to routes file
nmap <Leader>lm :!php artisan make:

" Find Controllers
nmap <Leader>lfc :e app/Http/Controllers/<cr>

" Find Models
nmap <Leader>lfm :e app/<cr>

" Find Views
nmap <Leader>lfv :e resources/views/<cr>



"______________ PHP-specific ______________"

"Sort PHP use statements
"http://stackoverflow.com/questions/11531073/how-do-you-sort-a-range-of-lines-by-length
vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>



"______________ Auto-Commands ______________"

" Automatically source the Vimrc file on save.
augroup autosourcing
        autocmd!
        autocmd BufWritePost .vimrc source %
augroup END

" Auto adds the corresponding use statements
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

" Expands name under cursor to its fully qualified name
autocmd FileType php noremap <Leader>nf :call PhpExpandClass()<CR>

" Go back to recent
au TabLeave * let g:lasttab = tabpagenr()
nnoremap <silent> <Leader><tab> :exe "tabn ".g:lasttab<cr>
vnoremap <silent> <Leader><tab> :exe "tabn ".g:lasttab<cr>

" Disable folding in beancount
autocmd FileType beancount exe "normal zR"



"______________ Plugin Settings ______________"

"/
"/ Ack
"/

" Remap Ack
nmap <Leader>pf :Gcd\|:Ack! 

" Preview files as you choose them
let g:ackpreview=1


"/
"/ CoC
"/

source ~/.config/coc.vim


"/
"/ cTags
"/

" Remap tag
nmap <Leader>ft :tag<space>


"/
"/ CtrlP
"/

" Ignore this directories
let g:ctrlp_custom_ignore='node_modules\DS_Store\|git'

" Appearance of the window
let g:ctrlp_match_window='top,order:ttb,min:1,max:30,results:30'

" Remap buffer symbol find
nmap <Leader>br :CtrlPBufTag<cr>

" Remap recent buffers
nmap <Leader>bb :CtrlPMRUFiles<cr>

" Remap ctrl p to cmd p
nmap <D-p> :CtrlP<cr>


"/
"/ FZF
"/

" Add homebrew fzf to the vim path:
set rtp+=/usr/local/opt/fzf

" Set fzf default command
if (executable('ag'))
    let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
endif

" Remap FZF
"nmap <Leader>ff :Files<cr>
function! s:find_git_root()
    return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction
command! ProjectFiles execute 'Files' s:find_git_root()
nnoremap <Leader>ff :ProjectFiles<CR>

"/
"/ Greplace.vim
"/

" Bind to space p r
nmap <Leader>pr :Gsearch<space>

" Use Ag
set grepprg=ag
let g:grep_cmd_opts='--line-numbers --noheading'


"/
"/ Lightline
"/

" Enable
set laststatus=2

" Theme
let g:lightline = {
      \ 'colorscheme': 'material_vim',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'filename', 'readonly', 'modified' ],
      \             [ 'gitdiff' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ] ]
      \ },
      \ 'inactive': {
      \   'left': [ [ 'filename', 'gitversion' ] ],
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \ },
      \ 'component_expand': {
      \   'gitdiff': 'lightline#gitdiff#get',
      \ },
      \ 'component_type': {
      \   'gitdiff': 'middle',
      \ },
      \ }


"/
"/ NERDTree
"/

"Avoid NERDTree hijacking -
let NERDTreeHijackNetrw=0


"/
"/ PDV
"/

" Doc template dir
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"

" Doc remap
nnoremap <Leader>d :call pdv#DocumentWithSnip()<CR>


"/
"/ Ultisnips
"/

" Remap
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Split vertically when editing snippets
let g:UltiSnipsEditSplit="vertical"


"/
"/ vim fugitive
"/

" Remaps
nmap <leader>gs :Gstatus<CR>
"nmap <leader>ga :Git add -A<CR>
nmap <leader>gb :Gblame<CR>
"nmap <leader>gc :Gcommit<CR>
"nmap <leader>gd :Gdiff<CR>
"nmap <leader>gl :Glog<CR>
"nmap <leader>gp :Gpush<CR>
nmap <leader>gpl :Gpull<CR>
"nmap <leader>gr :Gread<CR>
nmap <leader>gw :Gwrite<CR>
"nmap <leader>ge :Gedit<CR>


"/
"/ vim-php-cs-fixer.vim
"/

" Formatting rules
let g:php_cs_fixer_level = "psr2"

" Remap formatting
"nnoremap <silent><leader>pf :call PhpCsFixerFixFile()<CR>



"______________ Tips and Reminders ______________"
" - Press 'zz' to instantly center the line where the cursor is located.
