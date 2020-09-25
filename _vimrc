filetype off
syntax enable
filetype plugin indent on
set nocompatible
set noswapfile
set relativenumber
set number
let mapleader = ","
nnoremap ; :
inoremap jj <ESC>
colorscheme desert
set encoding=utf-8
set guifont=Anonymous\ Pro:h11
nmap <F3> i<C-R>=strftime("%d-%m-%Y %a %H:%M")<CR><Esc>
imap <F3> <C-R>=strftime("%d-%m-%Y %a %H:%M")<CR>
imap <C-8> á

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
set clipboard=unnamed
