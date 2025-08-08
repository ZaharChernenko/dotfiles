let g:SuperTabMappingBackward = '<tab>'
" moving in normal mode
noremap E g_
noremap Q ^
noremap q ge
" movement in normal mode is Russian keys, map almost everywhere, so
" that cyrillic can be used in nerdtree, not nmap, because otherwise
" nothing will work in visual mode
map А F
map В D
map Г U
map Ж :
map Й Q
map К R
map М V
map П G
map У E
map Ф A
map Х {
map Ц W
map Ч X
map Ш I
map Ъ }
map Ы S

map а f
map в d
map г u
map д l
map з p
map й q
map к r
map л k
map м v
map н y
map о j
map р h
map с c
map у e
map ф a
map ц w
map ч x
map ш i
map щ o
map ь m
map ы s
map пп gg
" tabs edit like vs code
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" vimspector
noremap ;t <CMD>call vimspector#ToggleBreakpoint()<CR>
noremap ;c <CMD>call vimspector#ClearBreakpoints()<CR>
noremap ;r <CMD>wa<CR><CMD>call vimspector#Launch()<CR>
noremap же <CMD>call vimspector#ToggleBreakpoint()<CR>
noremap жс <CMD>call vimspector#ClearBreakpoints()<CR>
noremap жк <CMD>wa<CR><CMD>call vimspector#Launch()<CR>
" ycm
noremap gd <CMD>YcmCompleter GoTo<CR>
noremap пв <CMD>YcmCompleter GoTo<CR>
noremap <F2> :YcmCompleter RefactorRename<Space>
inoremap <F2> <Esc>:YcmCompleter RefactorRename<Space>
" fzf
" this two due to the fact that the side scroll is perceived as vertical
autocmd FileType fzf tnoremap <buffer> <silent> <ScrollWheelRight> <NOP>
autocmd FileType fzf tnoremap <buffer> <silent> <ScrollWheelLeft> <NOP>

if has('macunix')
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

  " wintabs
  noremap <silent> <D-h> <CMD>WintabsPrevious<CR>
  noremap <silent> <D-l> <CMD>WintabsNext<CR>
  noremap <silent> <D-w> <CMD>WintabsClose<CR>
  inoremap <silent> <D-w> <CMD>WintabsClose<CR>
  " russian
  noremap <silent> <D-р> <CMD>WintabsPrevious<CR>
  noremap <silent> <D-д> <CMD>WintabsNext<CR>
  noremap <silent> <D-ц> <CMD>WintabsClose<CR>
  inoremap <silent> <D-ц> <CMD>WintabsClose<CR>

  " floaterm
  autocmd FileType floaterm noremap <buffer> <silent> <ScrollWheelUp> <CMD>call ScrollUp()<CR>
  autocmd FileType floaterm noremap <buffer> <silent> <ScrollWheelDown> <CMD>call ScrollDown()<CR>
  autocmd FileType floaterm tnoremap <buffer> <silent> <ScrollWheelUp> <C-\><C-n>:call ScrollUp()<CR>
  autocmd FileType floaterm tnoremap <buffer> <silent> <ScrollWheelDown> <C-\><C-n>:call ScrollDown()<CR>
  autocmd FileType floaterm noremap <buffer> <silent> <D-h> <CMD>FloatermPrev<CR>
  autocmd FileType floaterm noremap <buffer> <silent> <D-l> <CMD>FloatermNext<CR>
  autocmd FileType floaterm noremap <buffer> <silent> <D-t> <CMD>FloatermNew<CR>
  autocmd FileType floaterm tnoremap <buffer> <silent> <D-h> <CMD>FloatermPrev<CR>
  autocmd FileType floaterm tnoremap <buffer> <silent> <D-l> <CMD>FloatermNext<CR>
  autocmd FileType floaterm tnoremap <buffer> <silent> <D-t> <CMD>FloatermNew<CR>
  autocmd FileType floaterm tnoremap <buffer> <silent> <C-t> <CMD>FloatermToggle<CR>
  noremap <silent> <C-t> <CMD>FloatermToggle<CR>
  inoremap <silent> <C-t> <CMD>FloatermToggle<CR>
  " russian
  autocmd FileType floaterm noremap <buffer> <silent> <D-р> <CMD>FloatermPrev<CR>
  autocmd FileType floaterm noremap <buffer> <silent> <D-д> <CMD>FloatermNext<CR>
  autocmd FileType floaterm noremap <buffer> <silent> <D-е> <CMD>FloatermNew<CR>
  autocmd FileType floaterm tnoremap <buffer> <silent> <D-р> <CMD>FloatermPrev<CR>
  autocmd FileType floaterm tnoremap <buffer> <silent> <D-д> <CMD>FloatermNext<CR>
  autocmd FileType floaterm tnoremap <buffer> <silent> <D-е> <CMD>FloatermNew<CR>
  autocmd FileType floaterm tnoremap <buffer> <silent> <C-е> <CMD>FloatermToggle<CR>
  noremap <silent> <C-е> <CMD>FloatermToggle<CR>
  inoremap <silent> <C-е> <CMD>FloatermToggle<CR>

  " fzf
  autocmd FileType fzf tnoremap <buffer> <C-t> <ESC>
  " russian
  autocmd FileType fzf tnoremap <buffer> <C-е> <ESC>

  " NerdTree
  noremap <silent> <C-e> <CMD>NERDTreeToggle<CR>
  inoremap <silent> <C-e> <CMD>NERDTreeToggle<CR>
  " russian
  noremap <silent> <C-у> <CMD>NERDTreeToggle<CR>
  inoremap <silent> <C-у> <CMD>NERDTreeToggle<CR>

  " coderunner
  noremap <silent> <C-r> :CodeRunnerRun<CR>
  inoremap <silent> <C-r> <ESC>:CodeRunnerRun<CR>
  " russian
  noremap <silent> <C-к> :CodeRunnerRun<CR>
  inoremap <silent> <C-к> <ESC>:CodeRunnerRun<CR>

else
  if has("gui_running")
    let g:SuperTabMappingForward = '<A-tab>'

    noremap <A-ScrollWheelUp> <ScrollWheelRight>
    noremap <A-ScrollWheelDown> <ScrollWheelLeft>

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

    " wintabs
    noremap <silent> <C-h> <CMD>WintabsPrevious<CR>
    noremap <silent> <C-l> <CMD>WintabsNext<CR>
    noremap <silent> <C-w> <CMD>WintabsClose<CR>
    inoremap <silent> <C-w> <CMD>WintabsClose<CR>
    " russian
    noremap <silent> <C-р> <CMD>WintabsPrevious<CR>
    noremap <silent> <C-д> <CMD>WintabsNext<CR>
    noremap <silent> <C-ц> <CMD>WintabsClose<CR>
    inoremap <silent> <C-ц> <CMD>WintabsClose<CR>

    " terminal
    " <C-w>N - normal mode in terminal (ctrl+w, shift+n)
    " все сочетания с ctrl регистронезависимые, поэтому ctrl+shift+w нельзя
    " забиндить на копирование, т.к. ctrl+c всегда остановка процесса, поэтому
    " строка ниже бесполезная
    " tnoremap <C-c> <C-W>N
    tnoremap <C-v> <C-W>"+
    tnoremap <silent> <A-t> <C-\><C-n>:call ToggleTerminal(0)<CR>
    noremap <silent> <A-t> <CMD>FloatermToggle<CR>
    inoremap <silent> <A-t> <Esc>:call ToggleTerminal(1)<CR>


    " Russian
    tnoremap <C-м> <C-W>"+
    tnoremap <silent> <A-е> <C-\><C-n>:call ToggleTerminal(0)<CR>
    noremap <silent> <A-е> :call ToggleTerminal(0)<CR>
    inoremap <silent> <A-е> <Esc>:call ToggleTerminal(1)<CR>
    " NerdTree
    noremap <silent> <A-e> :NERDTreeToggle<CR>
    inoremap <silent> <A-e> <Esc>:NERDTreeToggle<CR>i
    " Russian
    noremap <silent> <A-у> :NERDTreeToggle<CR>
    inoremap <silent> <A-у> <Esc>:NERDTreeToggle<CR>i

    " coderunner
    noremap <silent> <A-r> :CodeRunnerRun<CR>
    inoremap <silent> <A-r> <ESC>:CodeRunnerRun<CR>
    " russian
    noremap <silent> <A-к> :CodeRunnerRun<CR>
    inoremap <silent> <A-к> <ESC>:CodeRunnerRun<CR>

  else
    let g:SuperTabMappingForward = '<Esc><Tab>'
    " alt in console is escaped seq ^], so this is why <Esc>key works like <A-key>
    " sed -n l
    inoremap <Esc>a <left>
    inoremap <Esc>w <up>
    inoremap <Esc>s <down>
    inoremap <Esc>d <right>
    inoremap <Esc>c <Esc>
    " moving between buffers
    noremap <silent> <Esc>k :wincmd k<CR>
    noremap <silent> <Esc>h :wincmd h<CR>
    noremap <silent> <Esc>j :wincmd j<CR>
    noremap <silent> <Esc>l :wincmd l<CR>
    tnoremap <silent> <Esc>k <C-\><C-n>:wincmd k<CR>
    tnoremap <silent> <Esc>h <C-\><C-n>:wincmd h<CR>
    tnoremap <silent> <Esc>j <C-\><C-n>:wincmd j<CR>
    tnoremap <silent> <Esc>l <C-\><C-n>:wincmd l<CR>
    " Russian
    noremap <silent> <Esc>л :wincmd k<CR>
    noremap <silent> <Esc>р :wincmd h<CR>
    noremap <silent> <Esc>о :wincmd j<CR>
    noremap <silent> <Esc>д :wincmd l<CR>
    tnoremap <silent> <Esc>л <C-\><C-n>:wincmd k<CR>
    tnoremap <silent> <Esc>р <C-\><C-n>:wincmd h<CR>
    tnoremap <silent> <Esc>о <C-\><C-n>:wincmd j<CR>
    tnoremap <silent> <Esc>д <C-\><C-n>:wincmd l<CR>
    " NerdTree
    noremap <silent> <Esc>e :NERDTreeToggle<CR>
    inoremap <silent> <Esc>e <Esc>:NERDTreeToggle<CR>i
    " Russian
    noremap <silent> <Esc>у :NERDTreeToggle<CR>
    inoremap <silent> <Esc>у <Esc>:NERDTreeToggle<CR>i
    " terminal
    tnoremap <silent> <Esc>t <C-\><C-n>:call ToggleTerminal(0)<CR>
    noremap <silent> <Esc>t :call ToggleTerminal(0)<CR>
    inoremap <silent> <Esc>t <Esc>:call ToggleTerminal(1)<CR>
    " Russian
    tnoremap <silent> <Esc>е <C-\><C-n>:call ToggleTerminal(0)<CR>
    noremap <silent> <Esc>е :call ToggleTerminal(0)<CR>
    inoremap <silent> <Esc>е <Esc>:call ToggleTerminal(1)<CR>
    " code run
    noremap <silent> <Esc>r :call coderunner#Run()<CR>
    inoremap <silent> <Esc>r <Esc>:call coderunner#Run()<CR>
    " Russian
    noremap <silent> <Esc>к :call coderunner#Run()<CR>
    inoremap <silent> <Esc>к <Esc>:call coderunner#Run()<CR>
  endif

  " ctrl bindings
  noremap <C-c> "+yi<Esc>
  noremap <C-x> "+c<Esc>
  " ctrl+z
  nnoremap <C-z> u
  vnoremap <C-z> <Esc>u
  inoremap <C-z> <Esc>ui
  " ctrl+a
  noremap <C-a> ggVG
  inoremap <C-a> <Esc>ggVG
  " ctrl+v
  nnoremap <C-v> a<C-r><C-o>+
  vnoremap <C-v> xa<C-r><C-o>+
  inoremap <C-v> <C-r><C-o>+
  " ctrl+s
  noremap <C-s> :w<CR>
  inoremap <C-s> <Esc>:w<CR>
  " Russian
  noremap <C-с> "+yi<Esc>
  noremap <C-ч> "+c<Esc>
  " ctrl+z
  nnoremap <C-я> u
  vnoremap <C-я> <Esc>u
  inoremap <C-я> <Esc>ui
  " ctrl+a
  noremap <C-ф> ggVG
  inoremap <C-ф> <Esc>ggVG
  " ctrl+v
  nnoremap <C-м> a<C-r><C-o>+
  vnoremap <C-м> xa<C-r><C-o>+
  inoremap <C-м> <C-r><C-o>+
  " ctrl+s
  noremap <C-ы> :w<CR>
  inoremap <C-ы> <Esc>:w<CR>
endif
