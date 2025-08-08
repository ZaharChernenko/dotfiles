let g:SuperTabMappingForward = '<C-tab>'

" escape
inoremap <C-c> <Esc>
vnoremap <C-c> <Esc>
" russian
inoremap <C-с> <Esc>
vnoremap <C-с> <Esc>

" moving in buffer
noremap <C-h> <left>
noremap <C-j> <down>
noremap <C-k> <up>
noremap <C-l> <right>
inoremap <C-h> <left>
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-l> <right>
tnoremap <C-h> <left>
tnoremap <C-j> <down>
tnoremap <C-k> <up>
tnoremap <C-l> <right>
" russian
noremap <C-р> <left>
noremap <C-о> <down>
noremap <C-л> <up>
noremap <C-д> <right>
inoremap <C-р> <left>
inoremap <C-о> <down>
inoremap <C-л> <up>
inoremap <C-д> <right>
tnoremap <C-р> <left>
tnoremap <C-о> <down>
tnoremap <C-л> <up>
tnoremap <C-д> <right>

" moving between buffers
" russian
noremap <C-w>р <C-w>h
noremap <C-w>о <C-w>j
noremap <C-w>л <C-w>k
noremap <C-w>д <C-w>l
tnoremap <C-w>р <C-w>h
tnoremap <C-w>о <C-w>j
tnoremap <C-w>л <C-w>k
tnoremap <C-w>д <C-w>l

" coderunner
noremap <silent> <C-r> :CodeRunnerRun<Cr>
inoremap <silent> <C-r> <Esc>:CodeRunnerRun<Cr>
" russian
noremap <silent> <C-к> :CodeRunnerRun<Cr>
inoremap <silent> <C-к> <Esc>:CodeRunnerRun<Cr>

" floaterm
autocmd FileType floaterm noremap <buffer> <silent> <D-h> <Cmd>FloatermPrev<Cr>
autocmd FileType floaterm noremap <buffer> <silent> <D-l> <Cmd>FloatermNext<Cr>
autocmd FileType floaterm noremap <buffer> <silent> <D-t> <Cmd>FloatermNew<Cr>
autocmd FileType floaterm tnoremap <buffer> <silent> <D-h> <Cmd>FloatermPrev<Cr>
autocmd FileType floaterm tnoremap <buffer> <silent> <D-l> <Cmd>FloatermNext<Cr>
autocmd FileType floaterm tnoremap <buffer> <silent> <D-t> <Cmd>FloatermNew<Cr>
autocmd FileType floaterm tnoremap <buffer> <silent> <C-t> <Cmd>FloatermToggle<Cr>
noremap <silent> <C-t> <Cmd>FloatermToggle<Cr>
inoremap <silent> <C-t> <Cmd>FloatermToggle<Cr>
" russian
autocmd FileType floaterm noremap <buffer> <silent> <D-р> <Cmd>FloatermPrev<Cr>
autocmd FileType floaterm noremap <buffer> <silent> <D-д> <Cmd>FloatermNext<Cr>
autocmd FileType floaterm noremap <buffer> <silent> <D-е> <Cmd>FloatermNew<Cr>
autocmd FileType floaterm tnoremap <buffer> <silent> <D-р> <Cmd>FloatermPrev<Cr>
autocmd FileType floaterm tnoremap <buffer> <silent> <D-д> <Cmd>FloatermNext<Cr>
autocmd FileType floaterm tnoremap <buffer> <silent> <D-е> <Cmd>FloatermNew<Cr>
autocmd FileType floaterm tnoremap <buffer> <silent> <C-е> <Cmd>FloatermToggle<Cr>
noremap <silent> <C-е> <Cmd>FloatermToggle<Cr>
inoremap <silent> <C-е> <Cmd>FloatermToggle<Cr>

" fzf
autocmd FileType fzf tnoremap <buffer> <C-t> <Esc>
" russian
autocmd FileType fzf tnoremap <buffer> <C-е> <Esc>

" nerdtree
noremap <silent> <C-e> <Cmd>NERDTreeToggle<Cr>
inoremap <silent> <C-e> <Cmd>NERDTreeToggle<Cr>
" russian
noremap <silent> <C-у> <Cmd>NERDTreeToggle<Cr>
inoremap <silent> <C-у> <Cmd>NERDTreeToggle<Cr>

" wintabs
noremap <silent> <D-h> <Cmd>WintabsPrevious<Cr>
noremap <silent> <D-l> <Cmd>WintabsNext<Cr>
noremap <silent> <D-w> <Cmd>WintabsClose<Cr>
inoremap <silent> <D-w> <Cmd>WintabsClose<Cr>
" russian
noremap <silent> <D-р> <Cmd>WintabsPrevious<Cr>
noremap <silent> <D-д> <Cmd>WintabsNext<Cr>
noremap <silent> <D-ц> <Cmd>WintabsClose<Cr>
inoremap <silent> <D-ц> <Cmd>WintabsClose<Cr>
