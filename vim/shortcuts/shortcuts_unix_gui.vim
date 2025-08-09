let g:SuperTabMappingForward = '<A-tab>'

noremap <A-ScrollWheelUp> <ScrollWheelRight>
noremap <A-ScrollWheelDown> <ScrollWheelLeft>

" ctrl bindings
" ctrl+a
noremap <C-a> ggVG
inoremap <C-a> <Esc>ggVG
" ctrl+c
noremap <C-c> "+yi<Esc>
" ctrl+s
noremap <C-s> <Cmd>w<Cr>
inoremap <C-s> <Cmd>w<Cr>
" ctrl+v
inoremap <C-v> <C-r><C-o>+
nnoremap <C-v> a<C-r><C-o>+
vnoremap <C-v> xa<C-r><C-o>+
" ctrl+x
noremap <C-x> "+c<Esc>
" ctrl+z
inoremap <C-z> <Esc>ui
nnoremap <C-z> u
vnoremap <C-z> <Esc>u

" russian
" ctrl+a
noremap <C-ф> ggVG
inoremap <C-ф> <Esc>ggVG
" ctrl+c
noremap <C-с> "+yi<Esc>
" ctrl+s
noremap <C-ы> <Cmd>w<Cr>
inoremap <C-ы> <Cmd>w<Cr>
" ctrl+v
inoremap <C-м> <C-r><C-o>+
nnoremap <C-м> a<C-r><C-o>+
vnoremap <C-м> xa<C-r><C-o>+
" ctrl+x
noremap <C-ч> "+c<Esc>
" ctrl+z
nnoremap <C-я> u
vnoremap <C-я> <Esc>u
inoremap <C-я> <Esc>ui

" escape
inoremap <A-c> <Esc>
vnoremap <A-c> <Esc>
" russian
inoremap <A-с> <Esc>
vnoremap <A-с> <Esc>

" moving in buffer
noremap <A-h> <left>
noremap <A-j> <down>
noremap <A-k> <up>
noremap <A-l> <right>
inoremap <A-h> <left>
inoremap <A-j> <down>
inoremap <A-k> <up>
inoremap <A-l> <right>
tnoremap <A-h> <left>
tnoremap <A-j> <down>
tnoremap <A-k> <up>
tnoremap <A-l> <right>
" russian
noremap <A-р> <left>
noremap <A-о> <down>
noremap <A-л> <up>
noremap <A-д> <right>
inoremap <A-р> <left>
inoremap <A-о> <down>
inoremap <A-л> <up>
inoremap <A-д> <right>
tnoremap <A-р> <left>
tnoremap <A-о> <down>
tnoremap <A-л> <up>
tnoremap <A-д> <right>

" moving between buffers
noremap <silent> <A-w>h <C-w>h
noremap <silent> <A-w>j <C-w>j
noremap <silent> <A-w>k <C-w>k
noremap <silent> <A-w>l <C-w>l
tnoremap <silent> <A-w>h <C-w>h
tnoremap <silent> <A-w>j <C-w>j
tnoremap <silent> <A-w>k <C-w>k
tnoremap <silent> <A-w>l <C-w>l
" russian
noremap <silent> <A-ц>р <C-w>h
noremap <silent> <A-ц>о <C-w>j
noremap <silent> <A-ц>л <C-w>k
noremap <silent> <A-ц>д <C-w>l
tnoremap <silent> <A-ц>р <C-w>h
tnoremap <silent> <A-ц>о <C-w>j
tnoremap <silent> <A-ц>л <C-w>k
tnoremap <silent> <A-ц>д <C-w>l

" terminal
tnoremap <C-v> <C-W>"+
" russian
tnoremap <C-м> <C-W>"+

" coderunner
noremap <silent> <A-r> :CodeRunnerRun<Cr>
inoremap <silent> <A-r> <Esc>:CodeRunnerRun<Cr>
" russian
noremap <silent> <A-к> :CodeRunnerRun<Cr>
inoremap <silent> <A-к> <Esc>:CodeRunnerRun<Cr>

" floaterm
autocmd FileType floaterm noremap <buffer> <silent> <C-h> <Cmd>FloatermPrev<Cr>
autocmd FileType floaterm noremap <buffer> <silent> <C-l> <Cmd>FloatermNext<Cr>
autocmd FileType floaterm noremap <buffer> <silent> <C-t> <Cmd>FloatermNew<Cr>
autocmd FileType floaterm tnoremap <buffer> <silent> <C-h> <Cmd>FloatermPrev<Cr>
autocmd FileType floaterm tnoremap <buffer> <silent> <C-l> <Cmd>FloatermNext<Cr>
autocmd FileType floaterm tnoremap <buffer> <silent> <C-t> <Cmd>FloatermNew<Cr>
autocmd FileType floaterm tnoremap <buffer> <silent> <A-t> <Cmd>FloatermToggle<Cr>
noremap <silent> <A-t> <Cmd>FloatermToggle<Cr>
inoremap <silent> <A-t> <Cmd>FloatermToggle<Cr>
" russian
autocmd FileType floaterm noremap <buffer> <silent> <C-р> <Cmd>FloatermPrev<Cr>
autocmd FileType floaterm noremap <buffer> <silent> <C-д> <Cmd>FloatermNext<Cr>
autocmd FileType floaterm noremap <buffer> <silent> <C-е> <Cmd>FloatermNew<Cr>
autocmd FileType floaterm tnoremap <buffer> <silent> <C-р> <Cmd>FloatermPrev<Cr>
autocmd FileType floaterm tnoremap <buffer> <silent> <C-д> <Cmd>FloatermNext<Cr>
autocmd FileType floaterm tnoremap <buffer> <silent> <C-е> <Cmd>FloatermNew<Cr>
autocmd FileType floaterm tnoremap <buffer> <silent> <A-е> <Cmd>FloatermToggle<Cr>
noremap <silent> <A-е> <Cmd>FloatermToggle<Cr>
inoremap <silent> <A-е> <Cmd>FloatermToggle<Cr>

" fzf
autocmd FileType fzf tnoremap <buffer> <A-t> <Esc>
" russian
autocmd FileType fzf tnoremap <buffer> <A-е> <Esc>

" nerdtree
noremap <silent> <A-e> <Cmd>NERDTreeToggle<Cr>
inoremap <silent> <A-e> <Cmd>NERDTreeToggle<Cr>
" russian
noremap <silent> <A-у> <Cmd>NERDTreeToggle<Cr>
inoremap <silent> <A-у> <Cmd>NERDTreeToggle<Cr>

" wintabs
noremap <silent> <C-h> <Cmd>WintabsPrevious<Cr>
noremap <silent> <C-l> <Cmd>WintabsNext<Cr>
noremap <silent> <C-w> <Cmd>WintabsClose<Cr>
inoremap <silent> <C-w> <Cmd>WintabsClose<Cr>
" russian
noremap <silent> <C-р> <Cmd>WintabsPrevious<Cr>
noremap <silent> <C-д> <Cmd>WintabsNext<Cr>
noremap <silent> <C-ц> <Cmd>WintabsClose<Cr>
inoremap <silent> <C-ц> <Cmd>WintabsClose<Cr>
