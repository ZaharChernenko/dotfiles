let g:SuperTabMappingForward = '<Esc><Tab>'
" alt in console is escaped seq ^], so this is why <Esc>key works like <A-key>
" sed -n l

"escape
inoremap <Esc>c <Esc>
vnoremap <Esc>c <Esc>
" russian
inoremap <Esc>с <Esc>
vnoremap <Esc>с <Esc>

" moving in buffer
noremap <Esc>h <left>
noremap <Esc>j <down>
noremap <Esc>k <up>
noremap <Esc>l <right>
inoremap <Esc>h <left>
inoremap <Esc>j <down>
inoremap <Esc>k <up>
inoremap <Esc>l <right>
tnoremap <Esc>h <left>
tnoremap <Esc>j <down>
tnoremap <Esc>k <up>
tnoremap <Esc>l <right>
" russian
noremap <Esc>р <left>
noremap <Esc>о <down>
noremap <Esc>л <up>
noremap <Esc>д <right>
inoremap <Esc>р <left>
inoremap <Esc>о <down>
inoremap <Esc>л <up>
inoremap <Esc>д <right>
tnoremap <Esc>р <left>
tnoremap <Esc>о <down>
tnoremap <Esc>л <up>
tnoremap <Esc>д <right>

" moving between buffers
noremap <silent> <Esc>wh <C-w>h
noremap <silent> <Esc>wj <C-w>j
noremap <silent> <Esc>wk <C-w>k
noremap <silent> <Esc>wl <C-w>l
tnoremap <silent> <Esc>wh <C-w>h
tnoremap <silent> <Esc>wj <C-w>j
tnoremap <silent> <Esc>wk <C-w>k
tnoremap <silent> <Esc>wl <C-w>l
" russian
noremap <silent> <Esc>цр <C-w>h
noremap <silent> <Esc>цо <C-w>j
noremap <silent> <Esc>цл <C-w>k
noremap <silent> <Esc>цд <C-w>l
tnoremap <silent> <Esc>цр <C-w>h
tnoremap <silent> <Esc>цо <C-w>j
tnoremap <silent> <Esc>цл <C-w>k
tnoremap <silent> <Esc>цд <C-w>l

" coderunner
noremap <silent> <Esc>r :CodeRunnerRun<Cr>
inoremap <silent> <Esc>r <Esc>:CodeRunnerRun<Cr>
" russian
noremap <silent> <Esc>к :CodeRunnerRun<Cr>
inoremap <silent> <Esc>к <Esc>:CodeRunnerRun<Cr>

" floaterm
autocmd FileType floaterm tnoremap <buffer> <silent> <Esc>t <Cmd>FloatermToggle<Cr>
noremap <silent> <Esc>t <Cmd>FloatermToggle<Cr>
inoremap <silent> <Esc>t <Cmd>FloatermToggle<Cr>
" russian
autocmd FileType floaterm tnoremap <buffer> <silent> <Esc>е <Cmd>FloatermToggle<Cr>
noremap <silent> <Esc>е <Cmd>FloatermToggle<Cr>
inoremap <silent> <Esc>е <Cmd>FloatermToggle<Cr>

" fzf
autocmd FileType fzf tnoremap <buffer> <Esc>t <Esc>
" russian
autocmd FileType fzf tnoremap <buffer> <Esc>е <Esc>

" nerdtree
noremap <silent> <Esc>e <Cmd>NERDTreeToggle<Cr>
inoremap <silent> <Esc>e <Cmd>NERDTreeToggle<Cr>
" russian
noremap <silent> <Esc>у <Cmd>NERDTreeToggle<Cr>
inoremap <silent> <Esc>у <Cmd>NERDTreeToggle<Cr>
