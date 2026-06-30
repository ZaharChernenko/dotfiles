# Prepend a directory to $path, idempotently (zsh-only: uses the $path array).
idempotent_prepend_path() {
    local value=$1
    # I - returns index.
    # e - searches for exact match.
    if (( ${path[(Ie)$value]} == 0 )); then
        path=("${value}" "${path[@]}")
    fi
}
