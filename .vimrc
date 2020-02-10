" ===============================================================================================
"
"                       B888889b.            888b     d888
"                        889   888           8888b   d8888
"               .d88889  888   888  8888b.   888Y8b.d8P888
"              889      B888888P"      888b  888 Y888P 888
"              'd8889D.  888       .d888888  888  Y8P  888
"                   889  888       88   888  888   '   888
"            o 888889D'  888       'd888888  888       888
"
" ===============================================================================================


" -----------------------------------------------------------------------------------------------
" Auto-Load ViM-Plug
" -----------------------------------------------------------------------------------------------
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" -----------------------------------------------------------------------------------------------


" -----------------------------------------------------------------------------------------------
" Basic Configuration
" -----------------------------------------------------------------------------------------------
set nocompatible                            " Use ViM defaults
set ruler                                   " Show the cursor position all the time
set spell                                   " Enable spell check
set nowrap                                  " Do not wrap long lines

set t_Co=256                                " Specify ViM that terminal supports 256 colors
set history=100                             " Keep 100 lines of command line history
set visualbell                              " Disable sounds
set backspace=indent,eol,start              " Backspace in insert mode

set number                                  " Show line numbers
set relativenumber                          " Show relative line numbers
set cursorline                              " Highlight the line with the cursor
set ttyfast                                 " Faster redrawing
set nolazyredraw                            " Don't redraw while executing macros
set timeoutlen=1000 ttimeoutlen=0           " Eliminate delays on ESC in ViM

set invlist                                 " Set invisible characters
set listchars=tab:▸\ ,eol:¬,trail:⋅         " Display invisible characters
highlight NonText ctermfg=8
highlight SpecialKey ctermfg=8
" -----------------------------------------------------------------------------------------------


" -----------------------------------------------------------------------------------------------
" Enable Powerline
" -----------------------------------------------------------------------------------------------
set laststatus=2                " Display the statusline
set showtabline=2               " Display the tabline
set noshowmode                  " Hide the default mode (e.g. --INSERT-- below the statusline)
" -----------------------------------------------------------------------------------------------


" -----------------------------------------------------------------------------------------------
" Set Up ViM-Plug
" -----------------------------------------------------------------------------------------------
call plug#begin('~/.vim/bundle')

Plug 'vim-syntastic/syntastic'              " Syntax checker
Plug 'Valloric/YouCompleteMe'               " Autocompletion
Plug 'tmhedberg/SimpylFold'                 " Simple, correct folding for python
Plug 'ctrlpvim/ctrlp.vim'                   " Path/File finder
Plug 'Yggdroot/indentLine'                  " Display vertical lines at each indent
Plug 'jiangmiao/auto-pairs'                 " Insert/delete brackets/quotes in pairs

Plug 'morhetz/gruvbox'                      " Bright theme with retro groove colors
Plug 'ajmwagar/vim-deus'                    " Color theme

" Plug 'python-mode/python-mode', {'branch': 'develop'}           " Python IDE for ViM
" Plug 'lervag/vimtex'                                            " LaTeX support for ViM
Plug 'vim-latex/vim-latex'                                      " Enhances LaTeX support for ViM
Plug 'davidhalter/jedi-vim', {'for': 'python'}                  " Python Autocompletion for ViM
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}            " File browser
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'                  " Highlight extensions in NERDTree
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}	" Powerline for ViM

call plug#end()
" -----------------------------------------------------------------------------------------------


" -----------------------------------------------------------------------------------------------
" Customised Changes
" -----------------------------------------------------------------------------------------------
syntax on                                   " Enable syntax highlighting
filetype indent plugin on                   " Enable file type detection

set autoindent                              " Automatically indent lines
set tabstop=4                               " Display tabs as 4 spaces"
set softtabstop=4                           " Columns to indent when using ViM in insert mode
set expandtab                               " Inserts spaces for tabs

set noswapfile                              " Disable swap files
set nobackup                                " Disable creating backups
set nowritebackup                           " Disable writing backups
" set mouse+=a                                " Enable mouse mode on

set scrolljump=10                           " Lines to scroll when cursor leaves screen
set scrolloff=0                             " Minimum lines above and below cursor
set hlsearch                                " Highlight search terms
set incsearch                               " Find as you search
set ignorecase                              " Case insensitive search
set smartcase                               " Case sensitive search when UpperCase present
set showmatch                               " Show matching brackets/parentheses

set background=dark                         " Set dark theme
set colorcolumn=120                         " Set colorcolumn as 120th column
highlight ColorColumn ctermbg=gray

" Set ColorScheme
let g:gruvbox_italic = 1
let g:gruvbox_italicize_comments = 1
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_hls_cursor = 'aqua'
colorscheme gruvbox
" let g:deus_termcolors=256
" set termguicolors
" colorscheme deus

" SimpylFold
let g:SimpylFold_fold_import = 0
let g:SimpylFold_docstring_preview = 1

" NERDTree
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeQuitOnOpen = 0
let g:NERDTreeShowHidden = 1
" let g:NERDTreeDirArrowExpandable = '▸'
" let g:NERDTreeDirArrowCollapsible = '▾'
" let g:NERDTreeFileExtensionHighlightFullName = 1
" let g:NERDTreeExactMatchHighlightFullName = 1
" let g:NERDTreePatternMatchHighlightFullName = 1
" let g:NERDTreeLimitedSyntax = 1
" let g:NERDTreeHighlightCursorLine = 0
" let g:NERDTreeSyntaxEnabledExtensions = ['dat', 'txt', 'md', 'c', 'c++', 'py', '.sh']
nnoremap <C-n> :NERDTreeToggle<CR>

" CtrlP.vim
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_dotfiles = 1
let g:ctrlp_by_filename = 1
let g:ctrlp_working_path_mode = 'ra'

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_filetype_whitelist = {"c": 1, "cpp": 1, "latex": 1, "python": 1}
let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = ['g:ycm_python_interpreter_path', 'g:ycm_python_sys_path']
let g:ycm_global_ycm_extra_conf = '~/global_extra_conf.py'
nnoremap <leader>y :let g:ycm_auto_trigger=0<CR>
nnoremap <leader>Y :let g:ycm_auto_trigger=1<CR>

" Syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_python_checkers=['python', 'pep8']
let g:syntastic_tex_checkers=['chktex']
let g:syntastic_python_pep8_args='--ignore=W605'
let g:syntastic_python_pep8_post_args="--max-line-length=119"

" Python-Mode
" let g:pymode_python ='python3'
" let g:pymode_lint = 0
" let g:pymode_rope = 0
" let g:pymode_folding = 0
" let g:pymode_rope_completion = 0
" let g:pymode_options_colorcolumn = 1
" let g:pymode_options_max_line_length = 119

" ViM-LaTeX
let g:tex_conceal = 0
let g:Tex_FoldedSections = 'section'
let g:Tex_FoldedEnvironments = 'abstract'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_FormatDependency_pdf = 'pdf'
let g:Tex_CompileRule_pdf = 'latexmk -pdf -f $*'
au BufRead *.tex highlight Folded ctermbg=black ctermfg=green

" ViM-TeX
" let g:vimtex_fold_enabled = 1
" let g:vimtex_fold_manual = 1
" let g:vimtex_fold_types = {'blacklist': ['figure', 'table', 'equation', 'subsection']}
" -----------------------------------------------------------------------------------------------


" -----------------------------------------------------------------------------------------------
" Bindings & Mappings
" -----------------------------------------------------------------------------------------------

" Shortcut to toggle folding
nnoremap <space> za

" Shortcut to save
nmap <leader>, :w<CR>

" Close the current buffer
noremap <C-x> :q<CR>

" Execute a Python Code
autocmd FileType python nnoremap <C-t> :w !python <CR>

" Shortcuts To ReFormat Other's Code
nmap \t :set ts=4 sts=4 sw=4 noet<CR>
nmap \s :set ts=4 sts=4 sw=4 et<CR>
noremap <C-f> :set ts=8<CR> \| :retab<CR>
" noremap \b cw\begin{<C-R>"}<CR>\end{<C-R>"}
" -----------------------------------------------------------------------------------------------


" -----------------------------------------------------------------------------------------------
" Only do this part when compiled with support for autocommands
" -----------------------------------------------------------------------------------------------
if has("autocmd")
  augroup fedora
autocmd!
" In text files, always limit the width of text to 78 characters
  " autocmd BufRead *.txt set tw=78
  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif
  " don't write swapfile on most commonly used directories for NFS mounts or USB sticks
  autocmd BufNewFile,BufReadPre /media/*,/run/media/*,/mnt/* set directory=~/tmp,/var/tmp,/tmp
  " start with spec file template
  autocmd BufNewFile *.spec 0r /usr/share/vim/vimfiles/template.spec
  augroup END
endif

if has("cscope") && filereadable("/usr/bin/cscope")
   set csprg=/usr/bin/cscope
   set csto=0
   set cst
   set nocsverb
   " add any database in current directory
   if filereadable("cscope.out")
      cs add $PWD/cscope.out
   " else add database pointed to by environment
   elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB
   endif
   set csverb
endif
" -----------------------------------------------------------------------------------------------


" -----------------------------------------------------------------------------------------------
if &term=="xterm"
     set t_Co=8
     set t_Sb=[4%dm
     set t_Sf=[3%dm
endif

" Don't wake up system with blinking cursor:
" http://www.linuxpowertop.org/known.php
let &guicursor = &guicursor . ",a:blinkon0"
" -----------------------------------------------------------------------------------------------
