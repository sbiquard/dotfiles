function load_toast
    set -l dir ~/work/software/toast-gcc
    _prepend_paths $dir
    pyenv activate toastdev
    _prepend_pythonpath $dir
    # load_ssparse
end
