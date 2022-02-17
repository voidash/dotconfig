call plug#begin() 
  " visualizes colors with color palette
  Plug 'ap/vim-css-color'
  " file search , text search across folders
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  " colorscheme
  Plug 'nanotech/jellybeans.vim'
  " colorscheme
  Plug 'dikiaap/minimalist'
  " A Tree-like side bar for better navigation
  Plug 'preservim/nerdtree'
  " A cool status bar
  Plug 'vim-airline/vim-airline'
  " Airline themes
  Plug 'vim-airline/vim-airline-themes'
  " Nord
  Plug 'arcticicestudio/nord-vim'
  " Better syntax-highlighting for filetypes in vim
  Plug 'sheerun/vim-polyglot'
  " Intellisense engine
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Git integration
  Plug 'tpope/vim-fugitive'
  " Auto-close braces and scopes
  Plug 'jiangmiao/auto-pairs'
  " Switch to the begining and the end of a block by pressing %
  Plug 'tmhedberg/matchit'
  " wakatime for monitoring
  Plug 'wakatime/vim-wakatime'
  " vim nerdfonts devicons
  Plug 'ryanoasis/vim-devicons'
  " vim surround cs'" will remove ' and convert to "
  Plug 'tpope/vim-surround'
  " paste images for markdown and latex
  Plug 'ferrine/md-img-paste.vim'
  Plug 'SirVer/ultisnips'
    let g:UltiSnipsExpandTrigger = '<leader><tab>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
  Plug 'lervag/vimtex'
    let g:tex_flavor='latex'
    let g:vimtex_view_method='zathura'
    let g:vimtex_quickfix_mode=0
  Plug 'KeitaNakamura/tex-conceal.vim'
    set conceallevel=1
    let g:tex_conceal='abdmg'
    hi Conceal ctermbg=none
  Plug 'honza/vim-snippets'

  call plug#end()


setlocal spell
set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
  
 

"fzf specific
noremap <C-p> <Esc>:FZF<CR>
noremap <C-A-f> <Esc>:Rg<CR>
let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit'
      \}


"vim airline specific
let g:airline_theme  = "dark"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#tab_min_count = 2



"colorscheme
colorscheme minimalist

" markdown and latex paste image
autocmd FileType markdown let g:PasteImageFunction = 'g:MarkdownPasteImage'
autocmd FileType tex let g:PasteImageFunction = 'g:LatexPasteImage'

autocmd FileType markdown,tex nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
let g:mdip_imgdir = 'assets'
let g:mdip_imgname = 'image'


source ~/.config/nvim/coc.vim
source ~/.config/nvim/custom.vim

let g:UltiSnipsSnippetsDirectories=["~/.config/nvim/ultisnips","UltiSnips"]


"vimtex
syntax enable
let g:vimtex_view_method = 'zathura'

set shell=/bin/bash
