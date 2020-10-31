set number
"Neovide configuration
"
set guifont=Cascadia:h19 
let &runtimepath.=',~/AppData/Local/nvim/plugged/neoterm'

filetype plugin on

let g:neovide_refresh_rate=60
let g:neovide_cursor_vfx_mode = "railgun"
let g:neovide_cursor_vfx_mode = "sonicboom"

call plug#begin('~/AppData/Local/nvim/plugged')
" below are some vim plugins for demonstration purpose.
" add the plugin you want to use here.
Plug 'joshdick/onedark.vim'
Plug 'iCyMind/NeoSolarized'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'christoomey/vim-tmux-navigator'
Plug 'kassio/neoterm'

call plug#end()

"coc setup
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-tsserver']


" nerdtree setup

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>
" panel switching
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
"fzf 
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}



" own CONFIGURATION

inoremap <c-u> <Esc>vawU<Esc>i 
nnoremap <leader>ev :tabe $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap <c-v> "+p
inoremap <c-v> <Esc>"+pi
cnoremap <c-v> <c-r>+

vnoremap <c-c> "+y

" add quotes

vnoremap <leader>" <esc>`<i"<esc>`>a"<esc>gv
" SIGNATURE
iabbrev ssig -- <cr> Ashish Thapa <cr> ashish.thapa477@gmail.com <cr> voidash.github.io

iabbrev lostHope Don't forget why you started

			
autocmd VimEnter * if argc() != 0 | NERDTreeFind  | endif
autocmd BufEnter * lcd %:p:h

" GUI font

"quick way to switch between tabs
map <S-l> :tabn<cr>
map <S-h> :tabp<cr>

		
tnoremap <Esc> <C-\><C-n>

"for terminal

nnoremap <C-`> :belowright Tnew<cr>


