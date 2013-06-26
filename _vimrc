"I Dont't want windows cut and copy features
"set nocompatible
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin

" Load pathogen, then switch off the filetype and switch it on again to load the 
" plugins properly
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype off
syntax on
filetype plugin indent on
"Call pathogen to invoke plugins
"call pathogen#infect()
"call pathogen#helptags()

"set gfn=Courier_New:h12:cANSI 
"THEME, FONT
colorscheme desertEx
set guifont=Lucida\ Console:h11

"SYNTAX
set rnu "Displays relative number from current line
set textwidth=130
set expandtab
set shiftwidth=4 
set softtabstop=4
set tabstop=4 
set smarttab
syntax on "syntax highlighting..
set autoindent 
set smartindent
"set textwidth=2000
"When typing '#' as the first character in a new line, the indent for
"that line is removed, the '#' is put in the first column.  The indent
"is restored for the next line.  If you don't want this, use this mapping: 
inoremap # X#

"SEARCH
set incsearch  "Search as you type 
"set nowrapscan
set ignorecase
set smartcase
"Show matching bracets when text indicator is over them
set showmatch
set hlsearch


"TEXT DISPLAY
set wrap
set linebreak
set nolist  " list disables linebreak
"This will get Vim to wrap existing text as desired. wrap tells Vim to word wrap visually (as opposed to changing the text in the buffer), and linebreak tells Vim to only wrap at a character in the breakat option (by default, this includes " ^I!@*-+;:,./?" (note the inclusion of " " and that ^I is the control character for Tab)).

"GENERAL SETTINGS
set backspace=2  
set showmode  showmatch  showcmd

"WARNINGS
set noerrorbells
set visualbell

"SPELL CORRECTIONS
ab alos also
ab aslo also
ab charcter character
ab charcters characters
ab exmaple example
ab shoudl should
ab seperate separate
ab teh the
ab hte the 
ab abotu about 
ab togglig toggling
ab conneted connected
ab isintsnce isinstance
ab commment comment
ab commetn comment


"SHORTCUTS
"Tagbar Plugin
noremap <F3> :TagbarToggle<CR>
"Avoid Esc
inoremap ii <Esc> 
"Switch b/w no wrap and smooth wrap
command! -nargs=* Wrap set wrap linebreak nolist
command! -nargs=* NoWrap set nowrap linebreak nolist







"nnoremap <up> <nop> 
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>

" Below are for enabling minibifexp
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 

" Below are for enabling OmniAuto completion
"autocmd FileType python set omnifunc=pythoncomplete#Complete
"Below command allows to indent based on filetype
filetype plugin indent on

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

"let Tlist_Sort_Type = "name"
":nmap F :TlistToggle<cr>
":nmap F :TagbarToggle<cr>
":nmap T :TaskList<cr>

" for snipmate
":filetype plugin on
