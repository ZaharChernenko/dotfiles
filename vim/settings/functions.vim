function PreSetup()
    if has('macunix')
        call PreSetupMacUNIX()
    elseif has('unix')
        call PreSetupUNIX()
    endif
endfunction


function PreSetupMacUNIX()
    if has('gui_running')
        set guifont=JetBrainsMono\ Nerd\ Font:h13
        set linespace=3
    endif
endfunction


function PreSetupUNIX()
    " browser for GBrowse and gx
    let g:netrw_browsex_viewer = "yandex-browser"

    if has('gui_running')
        set guifont=JetBrainsMono\ Nerd\ Font\ Mono\ Regular\ 11
        " egmrLtT - default value, custom: right, left scroll always because of gvim bug
        set guioptions=rl
    endif
endfunction


function PostSetup()
    " this is necessary because gvim opens the home directory by default
    cd %:p:h
    " Start NERDTree and put the cursor back in the other window.
    NERDTree | wincmd p
endfunction


" these functions are used when ScrollWheelDown and ScrollWheelUp do not work by default
function ScrollDown()
    call win_execute(getmousepos().winid, "normal! \<C-E>")
endfunction


function ScrollUp()
    call win_execute(getmousepos().winid, "normal! \<C-Y>")
endfunction
