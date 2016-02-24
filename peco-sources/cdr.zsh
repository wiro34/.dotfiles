function peco-cdr() {
    local destination="$(cdr -l | sed -e 's/^[[:digit:]]*[[:blank:]]*//' | peco --query "$LBUFFER")"
    if [ -n "$destination" ]; then
        BUFFER="cd $destination"
        zle accept-line
        zle -R -c
    else
        zle reset-prompt
    fi
}
zle -N peco-cdr
