" (_)_ __ (_) |___   _(_)_ __ ___
" | | '_ \| | __\ \ / / | '_ ` _ \
" | | | | | | |_ \ V /| | | | | | |
" |_|_| |_|_|\__(_)_/ |_|_| |_| |_|

"█▓▒░  DOCUMENTATION
" - https://neovim.io/doc/user/options.html
" - https://neovim.io/doc/user/quickref.html#option-list

"█▓▒░  PLUGINS
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"█▓▒░  OPTIONS
set encoding=UTF-8
set nu
set hidden
set cmdheight=2
set updatetime=300
set shortmess+=c
set splitright
set splitbelow

"█▓▒░  KEYBINDINGS
" Toggle File Browser
nnoremap <C-e> :NERDTreeToggle<cr>
tnoremap <C-e> <C-\><C-n>:NERDTreeToggle<cr>
" Toggle Terminal
nnoremap <C-t> :call Terminal(10)<cr>
tnoremap <C-t> <C-\><C-n>:call Terminal(10)<cr>
" Navigate to Different Buffers
nnoremap <silent> <A-Right>  <c-w>l
nnoremap <silent> <A-Left>   <c-w>h
nnoremap <silent> <A-Up>     <c-w>k
nnoremap <silent> <A-Down>   <c-w>j
tnoremap <silent> <A-Left>   <C-\><C-n><C-w>h
tnoremap <silent> <A-Down>   <C-\><C-n><C-w>j
tnoremap <silent> <A-Up>     <C-\><C-n><C-w>k
tnoremap <silent> <A-Right>  <C-\><C-n><C-w>l

"█▓▒░  TERMINAL
let g:term_buf = 0
let g:term_win = 0
" Function to toggle terminal
function! Terminal(height)
    if win_gotoid(g:term_win)
        hide
    else
        botright new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
            let g:term_buf = bufnr("")
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction
" Start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" Quit vim if terminal is the only buffer open
autocmd bufenter * if (winnr("$") == 1 && &buftype == 'terminal') | q | endif

"█▓▒░  NERDTREE - File Browser
let g:NERDTreeShowHidden = 0
let g:NERDTreeMinimalUI = 0
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Quit vim if nerdtree is the only buffer open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

