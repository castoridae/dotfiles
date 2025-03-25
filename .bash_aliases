alias -- -='cd -'
alias ..='cd ..'
alias ...='cd ../..'

alias l='ls -lah'
alias la='ls -lAh'
alias ll='ls -lh'
alias ls='ls -G'
alias lsa='ls -lah'

alias g='git'
alias s='git status'


# shares
waits() {
    BASE_PATH=""
    
    if [ -d "/workspace/shares" ]; then
        BASE_PATH="/workspace/shares"
    elif [ -d "/workspaces/shares" ]; then
        BASE_PATH="/workspaces/shares"
    else
        return 1
    fi

    "$BASE_PATH/projects/backend/scripts/wait_for_backend.sh" && \
    "$BASE_PATH/projects/backend/scripts/wait_for_test_server.sh"
}

if [ -d "/workspace/shares" ]; then
    alias shares="node /workspaces/shares/projects/tools/cli/bin/run"
fi
