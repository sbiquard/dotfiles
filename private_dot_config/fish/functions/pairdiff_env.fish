function load_toast_intel
    set -l dir ~/work/software/pair-diff/toast
    _prepend_paths $dir
    _prepend_pythonpath $dir
    # TOAST now compatible with latest SuiteSparse
    # load_ssparse
end

function load_mappraiser
    set -l dir ~/work/software/pair-diff/mappraiser
    _prepend_paths $dir
    _prepend_pythonpath $dir
end

function pairdiff_env
    pyenv activate pair-diff
    module load compiler debugger mpi mkl
    load_toast_intel
    load_mappraiser
end
