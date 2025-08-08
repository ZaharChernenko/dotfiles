let g:SuperTabMappingBackward = '<tab>'
" moving in normal mode
noremap E g_
noremap Q ^
noremap q ge

" movement in normal mode with russian keys, map almost everywhere, so
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

" floaterm
autocmd FileType floaterm noremap <buffer> <silent> <ScrollWheelUp> <Cmd>call ScrollUp()<Cr>
autocmd FileType floaterm noremap <buffer> <silent> <ScrollWheelDown> <Cmd>call ScrollDown()<Cr>
autocmd FileType floaterm tnoremap <buffer> <silent> <ScrollWheelUp> <C-\><C-n>:call ScrollUp()<Cr>
autocmd FileType floaterm tnoremap <buffer> <silent> <ScrollWheelDown> <C-\><C-n>:call ScrollDown()<Cr>

" fzf
" this two due to the fact that the side scroll is perceived as vertical
autocmd FileType fzf tnoremap <buffer> <silent> <ScrollWheelRight> <NOP>
autocmd FileType fzf tnoremap <buffer> <silent> <ScrollWheelLeft> <NOP>

" vimspector
noremap ;t <Cmd>call vimspector#ToggleBreakpoint()<Cr>
noremap ;c <Cmd>call vimspector#ClearBreakpoints()<Cr>
noremap ;r <Cmd>wa<Cr><Cmd>call vimspector#Launch()<Cr>
noremap же <Cmd>call vimspector#ToggleBreakpoint()<Cr>
noremap жс <Cmd>call vimspector#ClearBreakpoints()<Cr>
noremap жк <Cmd>wa<Cr><Cmd>call vimspector#Launch()<Cr>

" ycm
noremap gd <Cmd>YcmCompleter GoTo<Cr>
noremap пв <Cmd>YcmCompleter GoTo<Cr>
noremap <F2> :YcmCompleter RefactorRename<Space>
inoremap <F2> <Esc>:YcmCompleter RefactorRename<Space>

if has('macunix')
    execute $"source {$XDG_CONFIG_HOME}/vim/shortcuts/shortcuts_macunix.vim"
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

    " terminal
    tnoremap <C-v> <C-W>"+
    " russian
    tnoremap <C-м> <C-W>"+

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

    " NerdTree
    noremap <silent> <A-e> <Cmd>NERDTreeToggle<Cr>
    inoremap <silent> <A-e> <Cmd>NERDTreeToggle<Cr>
    " russian
    noremap <silent> <A-у> <Cmd>NERDTreeToggle<Cr>
    inoremap <silent> <A-у> <Cmd>NERDTreeToggle<Cr>

    " coderunner
    noremap <silent> <A-r> :CodeRunnerRun<Cr>
    inoremap <silent> <A-r> <Esc>:CodeRunnerRun<Cr>
    " russian
    noremap <silent> <A-к> :CodeRunnerRun<Cr>
    inoremap <silent> <A-к> <Esc>:CodeRunnerRun<Cr>

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
    noremap <silent> <Esc>k :wincmd k<Cr>
    noremap <silent> <Esc>h :wincmd h<Cr>
    noremap <silent> <Esc>j :wincmd j<Cr>
    noremap <silent> <Esc>l :wincmd l<Cr>
    tnoremap <silent> <Esc>k <C-\><C-n>:wincmd k<Cr>
    tnoremap <silent> <Esc>h <C-\><C-n>:wincmd h<Cr>
    tnoremap <silent> <Esc>j <C-\><C-n>:wincmd j<Cr>
    tnoremap <silent> <Esc>l <C-\><C-n>:wincmd l<Cr>
    " Russian
    noremap <silent> <Esc>л :wincmd k<Cr>
    noremap <silent> <Esc>р :wincmd h<Cr>
    noremap <silent> <Esc>о :wincmd j<Cr>
    noremap <silent> <Esc>д :wincmd l<Cr>
    tnoremap <silent> <Esc>л <C-\><C-n>:wincmd k<Cr>
    tnoremap <silent> <Esc>р <C-\><C-n>:wincmd h<Cr>
    tnoremap <silent> <Esc>о <C-\><C-n>:wincmd j<Cr>
    tnoremap <silent> <Esc>д <C-\><C-n>:wincmd l<Cr>
    " NerdTree
    noremap <silent> <Esc>e :NERDTreeToggle<Cr>
    inoremap <silent> <Esc>e <Esc>:NERDTreeToggle<Cr>i
    " Russian
    noremap <silent> <Esc>у :NERDTreeToggle<Cr>
    inoremap <silent> <Esc>у <Esc>:NERDTreeToggle<Cr>i
    " terminal
    tnoremap <silent> <Esc>t <C-\><C-n>:call ToggleTerminal(0)<Cr>
    noremap <silent> <Esc>t :call ToggleTerminal(0)<Cr>
    inoremap <silent> <Esc>t <Esc>:call ToggleTerminal(1)<Cr>
    " Russian
    tnoremap <silent> <Esc>е <C-\><C-n>:call ToggleTerminal(0)<Cr>
    noremap <silent> <Esc>е :call ToggleTerminal(0)<Cr>
    inoremap <silent> <Esc>е <Esc>:call ToggleTerminal(1)<Cr>
    " code run
    noremap <silent> <Esc>r :call coderunner#Run()<Cr>
    inoremap <silent> <Esc>r <Esc>:call coderunner#Run()<Cr>
    " Russian
    noremap <silent> <Esc>к :call coderunner#Run()<Cr>
    inoremap <silent> <Esc>к <Esc>:call coderunner#Run()<Cr>
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
  noremap <C-s> <Cmd>w<Cr>
  inoremap <C-s> <Cmd>w<Cr>

  " russian
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
  noremap <C-ы> <Cmd>w<Cr>
  inoremap <C-ы> <Cmd>w<Cr>

endif
