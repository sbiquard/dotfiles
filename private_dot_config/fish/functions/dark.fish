function dark --description 'Set shell theme to dark mode'
    yes | fish_config theme save "Catppuccin Frappe"
    sed -i 's/theme = .*/theme = "catppuccin_frappe"/' ~/.config/helix/config.toml
end
