function activate_venv
    if test -e .venv/bin/activate
        bass source .venv/bin/activate
    else
        echo No .venv/bin/activate found
    end
end
