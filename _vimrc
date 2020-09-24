filetype off
filetype plugin indent on
set nocompatible
set noswapfile
set relativenumber
let mapleader = ","
nnoremap ; :
inoremap jj <ESC>
colorscheme desert
set encoding=utf-8
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
noremap <silent> <C-k> :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> <C-u> :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
