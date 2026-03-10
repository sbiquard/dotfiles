function lazygit_update --description 'Update lazygit to the latest version'
    set lgversion (curl -sf "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')
    if test -z "$lgversion"
        echo "Error: could not fetch latest version" >&2
        return 1
    end

    if not curl -sLo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v$lgversion/lazygit_"$lgversion"_Linux_x86_64.tar.gz"
        echo "Error: download failed" >&2
        rm -f lazygit.tar.gz
        return 1
    end

    if not tar xf lazygit.tar.gz lazygit
        echo "Error: extraction failed" >&2
        rm -f lazygit.tar.gz
        return 1
    end

    if not sudo install lazygit -D -t /usr/local/bin/
        echo "Error: installation failed" >&2
        rm -f lazygit.tar.gz lazygit
        return 1
    end

    rm -f lazygit.tar.gz lazygit
    echo "lazygit $lgversion installed"
end
