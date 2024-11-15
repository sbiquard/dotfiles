function mappraiser_dev
    set -l install_dir ~/work/software/mappraiser
    echo "Mappraiser install location is '$install_dir'"
    set -gx MAPPRAISER_ROOT $install_dir
    _prepend_paths $install_dir
    _prepend_pythonpath $install_dir
    set -l source_dir ~/work/repos/midapack
    set -l venv_dir $source_dir/.venv
    echo "Activating virtual environment at '$venv_dir'"
    source $venv_dir/bin/activate.fish
    # export PREALPS_ROOT="/home/sbiquard/work/repos/preAlps"
end
