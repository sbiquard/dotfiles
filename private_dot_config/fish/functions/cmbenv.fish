function load_toast_intel
    set -l dir ~/work/software/toast-intel
    _prepend_paths $dir
    pyenv activate toast_intel
    _prepend_pythonpath $dir
    load_ssparse
end


function load_mappraiser
    set -l dir ~/work/software/mappraiser
    echo "Mappraiser install location : $dir"
    _prepend_paths $dir
    _prepend_pythonpath $dir
    # export PREALPS_ROOT="/home/sbiquard/work/repos/preAlps"
end


function cmbenv
    module load compiler debugger mpi mkl
    echo "Loading TOAST"
    load_toast_intel
    echo "Loading Mappraiser"
    load_mappraiser
end
