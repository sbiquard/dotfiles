if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_config theme choose catppuccin-frappe
end

# activate this event handler for every new shell
function _auto_theme --on-variable fish_terminal_color_theme
    switch $fish_terminal_color_theme
        case light
            sed -i 's/theme = .*/theme = "catppuccin_latte"/' ~/.config/helix/config.toml
            sed -i 's/color_theme = .*/color_theme = "catppuccin_latte"/' ~/.config/btop/btop.conf
        case dark
            sed -i 's/theme = .*/theme = "catppuccin_frappe"/' ~/.config/helix/config.toml
            sed -i 's/color_theme = .*/color_theme = "catppuccin_frappe"/' ~/.config/btop/btop.conf
    end
end
