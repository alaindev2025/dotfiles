# List commands
alias ls='eza --all --icons --git --group-directories-first'
alias ll='eza --all --long --group-directories-first --icons --git'
alias lt='eza --all --tree --level=2 --long --icons --git'

# Git commands 
alias lg='lazygit'
alias gs='git status'
alias gd='git diff'

# Atuin scrips commands
alias asr='atuin script run'
alias asg='atuin script get'
alias asl='atuin script list'
alias asn='atuin script new'
alias asrm='atuin script delete'
alias ash='alias | rg --color=never atuin'

# Tmux commands
alias tmls='tmux ls'
alias tms='tmux new-session -A  (tmls -F \'#{session_name}\' | fzf --height 30% --style=full)'
alias tm='tmux new -As'

# Frecuent commands
alias nv='nvim'
alias c='clear'
