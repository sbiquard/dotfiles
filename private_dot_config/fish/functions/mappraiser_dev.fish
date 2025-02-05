function mappraiser_dev
    # activate Python venv
    set -l venv_dir ~/work/repos/midapack/.venv
    echo "Activating virtual environment at '$venv_dir'"
    source $venv_dir/bin/activate.fish
    # set install location
    set -l install_dir ~/work/software/mappraiser
    echo "Mappraiser install location is '$install_dir'"
    set -gx MAPPRAISER_ROOT $install_dir
    _prepend_paths $install_dir
    _prepend_pythonpath $install_dir
    # export PREALPS_ROOT="/home/sbiquard/work/repos/preAlps"
end
