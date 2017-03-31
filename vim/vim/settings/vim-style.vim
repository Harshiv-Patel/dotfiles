set lbr              " if wrapping, only break on whitespace
set nowrap           " do not wrap text
set showbreak=↪>\    " make wrapping text a little prettier (when enabled)
set nosmartindent    " do not use legacy smartindent as most filetype detections
                     "     have improved indent methods
set scrolloff=5      " add context lines to top/bottom when moving the cursor
set sidescroll=1     " prevent text 'jumping' left when writing a long line
set sidescrolloff=0  " do not scroll until cursor reaches edge of the screen

set expandtab        " use spaces instead of tabs
set shiftwidth=3     " set 'shift' size
set softtabstop=3    " set 'tab' size during indent mode
set tabstop=3        " set tab character size

set textwidth=80     " line length before wrapping text
set colorcolumn=+1   " highlight column after textwidth size

set fileformat=unix  " default line-ending format

" highlight lines longer than 'textwidth' size for each filetype
autocmd FileType *
    \ if &textwidth |
    \    exec 'match OverLength /\%' . string(&textwidth+2) . 'v.*/' |
    \ endif

" default text auto-format options (:help fo-table)
" c = auto-wrap comments, insert leader
" j = remove leader joining lines
" l = do not break long lines in insert mode (ENABLE for source code)
" n = auto-indent numbered lists
" o = auto-insert comment leader after 'o' from normal mode
" q = format comments with 'gq'
" r = auto-insert comment leader after <CR>
" t = auto-wrap text (DISABLE for source code)
set formatoptions+=cjnoqrt
