function activate_venv
    if test -e .venv/bin/activate.fish
        source .venv/bin/activate.fish
    else
        echo "No .venv/bin/activate.fish found"
    end
end
