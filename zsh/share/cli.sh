rg-regex() {
    fzf \
        --disabled \
        --bind 'start:reload(rg --column --line-number --no-heading --color=always --smart-case "" || true)' \
        --bind 'change:reload(rg --column --line-number --no-heading --color=always --smart-case {q} || true)' \
        --bind 'enter:become(echo {1}:{2}:{3})' \
        --delimiter : \
        --ansi \
        --preview 'bat -n --color=always --highlight-line {2} {1}' \
        --preview-window '+{2}-/2'
}

rg-fuzzy() {
    rg --column --line-number --no-heading --color=always --smart-case "" 2>/dev/null \
        | fzf \
            --bind 'enter:become(echo {1}:{2})' \
            --delimiter : \
            --nth 4.. \
            --ansi \
            --preview 'bat -n --color=always --highlight-line {2} {1}' \
            --preview-window '+{2}-/2'
}

rg-files() {
    rg --files | fzf --preview 'bat -n --color=always {}'
}
