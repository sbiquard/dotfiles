# source .profile
bass source ~/.profile

# zoxide
zoxide init fish | source

# fzf key bindings
fzf --fish | source

# uv completions
uv generate-shell-completion fish | source
uvx --generate-shell-completion fish | source

# prompt
starship init fish | source

# prek completions
COMPLETE=fish prek | source
