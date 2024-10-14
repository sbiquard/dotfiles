function activate_venv
    if test -e .venv/bin/activate
        source .venv/bin/activate
    else
        echo "No .venv/bin/activate found"
    end
end
