# zoxide
zoxide init fish | source

# environment modules
source /usr/share/modules/init/fish
module use ~/intel-oneapi-modulefiles

# fzf key bindings
fzf --fish | source

# jj completions
jj util completion fish | source

# uv completions
uv generate-shell-completion fish | source
uvx --generate-shell-completion fish | source

# prompt
starship init fish | source
