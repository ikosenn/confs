set nocompatible
syntax enable

filetype plugin indent on
" show line numbers
set number

" set tabs to have 4 spaces
set tabstop=4
autocmd FileType python setlocal tabstop=4
" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
" set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
set noswapfile
set nobackup
set incsearch
set hlsearch
set listchars=tab:»·,trail:·
set t_Co=256


let python_highlight_all = 1
map <C-n> :NERDTreeToggle<CR>
nmap <c-s> :w<cr>
imap <c-s> <esc>:w<cr>a
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
autocmd BufWritePre * %s/\s\+$//e
" autocmd FileType python, javascript match OverLength /\%80v.\+/

call plug#begin('~/.vim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'amadeus/vim-evokai'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'airblade/vim-gitgutter'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'nvie/vim-flake8'
Plug 'elzr/vim-json'
Plug 'https://github.com/leafgarland/typescript-vim.git'
Plug 'posva/vim-vue'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/skielbasa/vim-material-monokai.git'
"Plug 'vim-syntastic/syntastic'
"Plug 'https://github.com/vim-latex/vim-latex'
"Plug 'xuhdev/vim-latex-live-preview'
"Plug 'https://github.com/vim-scripts/LanguageTool'
call plug#end()
autocmd BufWritePost *.py call Flake8()

" for command mode
nnoremap <S-Tab> <<
" " for insert mode
inoremap <S-Tab> <C-d>

" latex
"let g:tex_flavor='latex'
"set grepprg=grep\ -nH\ $*
"autocmd Filetype tex setl updatetime=1
"let g:livepreview_previewer = 'open -a Preview'
"set spell
" set spelllang=en_us
"let g:languagetool_jar='/usr/local/Cellar/languagetool/3.8/libexec/languagetool.jar'
"let g:languagetool_lang='en-US'
"
"
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_javascript_eslint_exe = 'npm run lint --'
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
      let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0

set background=dark
set termguicolors
colorscheme material-monokai
let g:materialmonokai_italic=1
let g:airline_theme='materialmonokai'
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
