function light --description 'Set shell theme to light mode'
    yes | fish_config theme choose "Catppuccin Latte"
    sed -i 's/theme = .*/theme = "catppuccin_latte"/' ~/.config/helix/config.toml
    sed -i 's/color_theme = .*/color_theme = "catppuccin_latte"/' ~/.config/btop/btop.conf
end
