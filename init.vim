call plug#begin()
Plug 'mlaursen/vim-react-snippets'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdcommenter'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'mattn/emmet-vim'
Plug 'mhartington/oceanic-next'
"Plug 'SirVer/ultisnips'
"Plug 'mlaursen/vim-react-snippets'
"Plug 'dense-analysis/ale'
"Plug 'maxmellon/vim-jsx-pretty'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'arcticicestudio/nord-vim'
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug  'alvan/vim-closetag'
Plug  'jiangmiao/auto-pairs'
call plug#end()
filetype plugin indent on

" Theme
 syntax enable
" for vim 7
 set t_Co=256

" for vim 8
 if (has("termguicolors"))
  set termguicolors
 endif


colorscheme OceanicNext
highlight LineNr ctermfg=lightblue  ctermbg=Black

let g:pymode_rope = 0
let g:lightline#bufferline#show_number = 2
let g:lightline = {
      \ 'colorscheme': 'purify',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'tabline': {
      \   'left': [ ['buffers'] ],
      \   'right': [ ['close'] ]
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ }
      \ }


set noshowmode
set showtabline=2
set relativenumber
set number
set autoindent
set smartindent
set cindent
"set spell


let mapleader=","
nnoremap <leader>q :q!<cr>
nnoremap  <leader><leader> :wq<cr>
nnoremap <leader>w :w <cr>

nnoremap <C-S> :q!<cr>


" Keymapping for lighline buffers
nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)

"Kemapping for lightline deletions
nmap <Leader>c1 <Plug>lightline#bufferline#delete(1)
nmap <Leader>c2 <Plug>lightline#bufferline#delete(2)
nmap <Leader>c3 <Plug>lightline#bufferline#delete(3)
nmap <Leader>c4 <Plug>lightline#bufferline#delete(4)
nmap <Leader>c5 <Plug>lightline#bufferline#delete(5)
nmap <Leader>c6 <Plug>lightline#bufferline#delete(6)
nmap <Leader>c7 <Plug>lightline#bufferline#delete(7)
nmap <Leader>c8 <Plug>lightline#bufferline#delete(8)
nmap <Leader>c9 <Plug>lightline#bufferline#delete(9)
nmap <Leader>c0 <Plug>lightline#bufferline#delete(10)

"let g:material_theme_style = 'lighter'

au! BufNewFile,BufRead *.svelte set ft=html

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

"inoremap <silent><expr> <Tab>
      "\ pumvisible() ? "\<C-n>" :
      "\ <SID>check_back_space() ? "\<Tab>" :
      "\ coc#refresh()

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
