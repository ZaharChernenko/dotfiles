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
elseif has('unix') && has("gui_running")
    execute $"source {$XDG_CONFIG_HOME}/vim/shortcuts/shortcuts_unix_gui.vim"
else
    execute $"source {$XDG_CONFIG_HOME}/vim/shortcuts/shortcuts_unix_cli.vim"
endif
