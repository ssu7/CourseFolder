syntax on

set wildmenu
set number 
set nocompatible 
set ruler
set showcmd
set title
set incsearch

imap <C-b> <Plug>Tex_MathBF
imap <C-c> <Plug>Tex_MathCal
imap <C-l> <Plug>Tex_LeftRight

set textwidth=78

set showmatch

let g:explVertical=1
let g:explSplitRight=1
let g:explStartRight=0

colorscheme delek
"set transparency=20

set laststatus=2

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set smartcase
set incsearch
set hlsearch

set hidden

filetype on 
filetype indent on
filetype plugin on 

set grepprg=grep\ -nH\ $*

let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode $*'
"let g:Tex_CompileRule_pdf = 'xelatex -interaction=nonstopmode $*'
let g:Tex_MultipleCompileFormats = 'pdf'
let g:Tex_ViewRule_pdf = 'open -a Preview.app' 
let g:Tex_ViewRule_pdf = 'AcroRd32'
let g:Tex_GotoError = 0
set iskeyword+=:

let g:Tex_IgnoredWarnings = 
    \"Underfull\n".
    \"Overfull\n".
    \"LaTeX Font Warning\n".
    \"specifier changed to\n".
    \"You have requested\n".
    \"Missing number, treated as zero.\n".
    \"There were undefined references\n".
    \"Citation %.%# undefined\n".
    \"Latex Warning:"
let g:Tex_IgnoreLevel=9

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1


nnoremap <F10> :GundoToggle<CR>
let g:gundo_width = 60
let g:gundo_preview_height = 40
let g:gundo_right = 1

hi User1 guifg=#eea040 guibg=#222222
hi User2 guifg=#dd3333 guibg=#222222
hi User3 guifg=#ff66ff guibg=#222222
hi User4 guifg=#a0ee40 guibg=#222222
hi User5 guifg=#eeee40 guibg=#222222

set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%2*0x%04B\ %*          "character under cursor
