"set mouse=a
"set title
"set list
set expandtab
set shiftwidth=4
set number
set cursorline
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set laststatus=2
set noshowmode
"highlight Normal guibg=none guifg=none

source $HOME/.config/nvim/plug-config/coc.vim
"source $HOME/.config/nvim/plug-config/rnvimr.vim

call plug#begin('~/.vim/plugged')
    "Themes
    Plug 'itchyny/lightline.vim'
    Plug 'ghifarit53/tokyonight-vim'
    Plug 'ryanoasis/vim-webdevicons'
    Plug 'frazrepo/vim-rainbow'
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'mhinz/vim-startify'
    Plug 'lilydjwg/colorizer'
    "--------------------------------------
    "Hermes
    Plug 'easymotion/vim-easymotion'
    Plug 'preservim/nerdcommenter'
    Plug 'Shougo/neocomplete.vim'
    """""""""Plug 'kevinhwang91/rnvimr', {'do': 'make sync'} "Useful Ranger

    Plug 'francoiscabrol/ranger.vim' "RANGER
    Plug 'rbgrouleff/bclose.vim' "RANGER

    Plug 'scrooloose/nerdtree'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    "Plug 'christoomey/vim-tmux-navigator'
    Plug 'chriskempson/base16-vim'
    Plug 'lervag/vimtex'
    "--------------------------------------
    "Extras
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'voldikss/vim-floaterm'
    ""--------------------------------------

call plug#end()
"----------------------------------------------
"Theme Admin
let g:lightline = { 'colorscheme': 'tokyonight' }
"if !has('gui_running')
  "set t_Co=256
"endif

if (has("termguicolors"))
    set termguicolors
endif

colorscheme tokyonight

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyoJacx_enable_italic = 1

"colorscheme OceanicNext
"colorscheme base16-default-dark

filetype plugin indent on " required

"---------------- Start Nvim! -----------------
let g:ascii = [
    \ '  .  .   . .   .   . .    +  . ',
    \ '    .    .. :. .___---------___. ',
    \ ' .    .  :.:. _/.^ .^ ^.  ... --\_. . ',
    \ '  .  .  .:../:            . .^  :.:\. ',
    \ ' :: +. :.:/: .   .    .        . . .:\ ',
    \ '  . _ :::/:               .  ^ .  . .:\ ',
    \ '- : :.:./.                        .  .:\ ',
    \ '  . :..|:                    .  .  ^. .:| ',
    \ ' : : ..||        .                . . !:| ',
    \ ' ::. ::|(                           . :)| ',
    \ '. : .:.|. ######              .#######::| ',
    \ ': .:  ::|.#######           ..########:| ',
    \ ' .  .. :\ ########          :######## :/ ',
    \ ' :: : -.:\ ########       . ########.:/ ',
    \ ' . . . :.:\. #######       #######..:/ ',
    \ '. . ::.:..:.\           .   .   ..:/ ',
    \ ' .. :  -::::.\.       | |     . .:/ ',
    \ '  .  .-:. -_:::\             ..:/ ',
    \ '. . . .: .:::.:.\.           .:/ ',
    \ '      : ....::_:..\    ___.  :/ ',
    \ '  .:. .. .  .: :.:.:\       :/ ',
    \ ' .   : . ::. :.:. .:.|\  .:/| ',
    \ '   +   .  .  ...:: ..|  --.:| ',
    \ '   .  .  . ... :..:..|(  ..)| ',
    \ ' .      :  .   .: ::/  .  .::\ ',
    \]

"let g:ascii = [
    "\ '     ___',
    "\ ' ___/   \___',
    "\ '/   "---"   \',
    "\ '"--_______--"',
    "\ '     / \',
    "\ '    /   \',
    "\ '    /\O/\',
    "\ '    / | \',
    "\ '    // \\',
    "\]


let g:startify_custom_header = g:ascii + startify#fortune#boxed()
let g:startify_custom_header =
    \ startify#pad(g:ascii + startify#fortune#boxed())
let g:startify_custom_header =
    \ 'startify#pad(g:ascii + startify#fortune#boxed())'

"let g:startify_custom_header_quotes = [
"    \ ['        Welcome, Human          '],
"    \ ['Nice to see you!', 'I was bored before you came.', ' Lets play! '],
"    \ {-> systemlist('echo quote #2')}
"    \ ]

let g:startify_custom_header_quotes =
    \ startify#fortune#predefined_quotes() + [['         Welcome, Human           ', 
    \ 'Nice to see you!', 'I was bored before you came.', 'Lets play!',
    \ 'And remember! The best way to' , 'predict the future is to create it. ']]
"----------------------------------------------
"------------ Rainbow Parentesis --------------
let g:rainbow_active = 1
let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
"----------------------------------------------

"--------------- Ranger config ----------------

"----------------------------------------------

"Indent guide line
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 1

"----------------------------------------------
"Hermes Admin
"let g:NERDCreateDefaultMappings=1

let mapleader=";"
nmap <Leader>s <Plug>(easymotion-s2)                                                        
"nmap <Leader>nd :NERDTree<CR>
nmap <Leader>nd :NERDTree<CR>
nmap \dc :FloatermNew --autoclose=0 g++ % -o %< && ./%<<CR>
"nmap \dj :FloatermNew --autoclose=0 javac % && java %<CR>
nmap \pj :FloatermNew --autoclose=0 javac % -d . *.java<CR>
nmap \rj :FloatermNew --autoclose=0 java %<CR>
nmap <Leader>tr :FloatermNew<CR>
nmap <Leader>re :CocRestart<CR>
nmap <space>j :tabnew<CR>
nmap <space>s :Startify<CR>
nmap <space>pp :tabn<CR>
nmap <space>po :tabp<CR>
vnoremap <Leader>c "+y
nmap <Leader>p "+p
nmap <space>f :RangerNewTab<CR>
nmap <space>f :RangerWorkingDirectoryExistingOrNewTab<CR>
nmap <Leader>f :Tnew<CR>

"------------ LATEX -------------
nmap \es :setlocal spell spelllang=es<CR>

"----------------------------------------------
"Extras
let g:fzf_layout = { 'down': '40%' }
let g:floaterm_keymap_new = '<Leader>ft'
let g:floaterm_keymap_toggle = '<Leader>t' 
let g:floaterm_position = 'bottom' 
let g:floaterm_width = 1.0
let g:floaterm_height = 1.0
let g:vimtex_view_method='zathura'

"Easymotion
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

