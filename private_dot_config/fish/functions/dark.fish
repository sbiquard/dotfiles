function dark --description 'Set shell theme to dark mode'
    yes | fish_config theme choose "Catppuccin Mocha"
    sed -i 's/theme = .*/theme = "catppuccin_mocha"/' ~/.config/helix/config.toml
    sed -i 's/color_theme = .*/color_theme = "catppuccin_mocha"/' ~/.config/btop/btop.conf
end
