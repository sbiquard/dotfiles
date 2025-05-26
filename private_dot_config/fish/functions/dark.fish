function dark --description 'Set shell theme to dark mode'
    yes | fish_config theme save "Catppuccin Frappe"
    sed -i 's/theme = .*/theme = "catppuccin_frappe"/' ~/.config/helix/config.toml
    sed -i 's/color_theme = .*/color_theme = "catppuccin_frappe"/' ~/.config/btop/btop.conf
end
