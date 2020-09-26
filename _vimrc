" Use Vim settings, rather then Vi settings.
" This must be first, because it changes other options and side effects.
set nocompatible

" Automatic syntax recognition
syntax enable

filetype plugin indent on

set noswapfile
set relativenumber
"set number

" MAP LEADER
"let mapleader = ","
let mapleader = "\<Space>"
noremap <leader>w :<cr>

nnoremap ; :

" Bind 'jj' to <esc> to jump out of insert mode
inoremap jj <ESC>

" Font, encoding and colorscheme
colorscheme desert
set encoding=utf-8
set guifont=Anonymous\ Pro:h11

nmap <F3> i<C-R>=strftime("%d-%m-%Y %a %H:%M")<CR><Esc>
imap <F3> <C-R>=strftime("%d-%m-%Y %a %H:%M")<CR>

" Commenting blocks of code.
augroup commenting_blocks_of_code
  autocmd!
  autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
  autocmd FileType sh,ruby,python   let b:comment_leader = '# '
  autocmd FileType conf,fstab       let b:comment_leader = '# '
  autocmd FileType tex              let b:comment_leader = '% '
  autocmd FileType mail             let b:comment_leader = '> '
  autocmd FileType vim              let b:comment_leader = '" '
augroup END
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cv :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" Set 'Yank' to go in systm Clipboard and Ctrl-C to Vim 'p' command
set clipboard=unnamed
