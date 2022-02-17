set hidden
set number relativenumber 

nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" for buffer
nnoremap <leader>zz :bdelete<CR>

" custom functions to run 
function! RunCommand() 
  let extension = expand("%:e")
  if (extension == "rs")
    let l:command_ = "cargo run 2> /dev/null" 
  elseif (extension =="js" || extension =="ts" || extension =="tsx" || extension == "jsx")
    let l:command_ = "npm run start"
  elseif (extension =="py")
		let l:command = "python %"
  else
    let l:command_ = "echo \"can't run program\""
  endif

  execute '!'.l:command_
endfunction

function! TestCommand() 
  let extension = expand("%:e")
  if (extension == "rs")
    let l:command_ = "cargo test -- --nocapture" 
  elseif (extension =="js" || extension =="ts" || extension =="tsx" || extension == "jsx")
    let l:command_ = "npm run test"
  else
    let l:command_ = "echo \"no test available\""
  endif

  execute '!'.l:command_
endfunction

function! TestIndividualForRust()
  "for the function you want to test put it in cursor
  let extension = expand("%:e") 
  let l:current_cursor_word = expand("<cword>")

  if(extension == "rs")
    execute '! cargo test '.l:current_cursor_word. ' -- --nocapture'
  endif
endfunction

nnoremap <f10> :w!<CR>:call RunCommand()<CR>
nnoremap <f9> :w!<CR>:call TestCommand()<CR>
nnoremap <leader><f9> :w!<CR>:call TestIndividualForRust()<CR>


" markdown specific
nnoremap <leader>lp i[](<Esc>"+pa)<Esc>F[a
inoremap <leader>lp [](<Esc>"+pa)<Esc>F[a

"nerdtree specific

nmap <C-b> :NERDTreeToggle<CR>
inoremap <C-b> <Esc>:NERDTreeToggle<Cv>
