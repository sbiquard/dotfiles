function light --description 'Set shell theme to light mode'
    yes | fish_config theme save "Catppuccin Latte"
    sed -i 's/theme = .*/theme = "catppuccin_latte"/' ~/.config/helix/config.toml
end
