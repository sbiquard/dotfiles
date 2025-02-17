function load_toast
    set -l dir ~/work/software/pair-diff/toast
    _prepend_paths $dir
    _prepend_pythonpath $dir
    # TOAST now compatible with latest SuiteSparse
    # load_ssparse
    set -gx TOAST_ROOT $dir
end

function load_mappraiser
    set -l install_dir ~/work/software/pair-diff/mappraiser
    echo "Mappraiser install location is '$install_dir'"
    set -gx MAPPRAISER_ROOT $install_dir
    _prepend_paths $install_dir
    _prepend_pythonpath $install_dir
end

function pairdiff_env
    set -l venv_dir ~/work/pairdiff/simu-sat/.venv
    echo "Activating virtual environment at '$venv_dir'"
    source $venv_dir/bin/activate.fish
    load_toast
    load_mappraiser
end
