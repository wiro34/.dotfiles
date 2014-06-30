function percol-cdr() {
    local destination="$(cdr -l | sed -e 's/^[[:digit:]]*[[:blank:]]*//' | percol --query "$LBUFFER")"
    if [ -n "$destination" ]; then
        BUFFER="cd $destination"
        zle accept-line
        zle -R -c
    else
        zle reset-prompt
    fi
}
zle -N percol-cdr
bindkey '^f' percol-cdr
