###----- CMB environment (TOAST + Mappraiser) -----###

function _prepend_paths
    set -l dir "$argv[1]"
    set -gx --prepend PATH {$dir}/bin
    set -gx --prepend CPATH {$dir}/include
    set -gx --prepend LIBRARY_PATH {$dir}/lib
    set -gx --prepend LD_LIBRARY_PATH {$dir}/lib
end

function _prepend_pythonpath
    set -l dir "$argv[1]"
    # Assume Python environment is already loaded
    set -l pysite (python3 --version 2>&1 | awk '{print $2}' | sed -e "s#\(.*\)\.\(.*\)\..*#\1.\2#")
    set -gx --prepend PYTHONPATH {$dir}/lib/python{$pysite}/site-packages
end

function load_toast_intel
    set -l dir ~/work/software/toast-intel
    _prepend_paths $dir
    pyenv activate toast_intel
    _prepend_pythonpath $dir
    load_ssparse
end

function load_mappraiser
    set -l dir ~/work/software/mappraiser
    echo Mappraiser install location : $dir
    _prepend_paths $dir
    _prepend_pythonpath $dir
    # export PREALPS_ROOT="/home/sbiquard/work/repos/preAlps"
end

function cmbenv
    # module load compiler debugger mpi mkl
    module load compiler mpi mkl
    echo Loading TOAST
    load_toast_intel
    echo Loading Mappraiser
    load_mappraiser
end


###----- TOAST dev install -----###

function load_toast
    set -l dir ~/work/software/toast-gcc
    _prepend_paths $dir
    pyenv activate toastdev
    _prepend_pythonpath $dir
    load_ssparse
end


###---------- SuiteSparse ----------###

function load_ssparse
    set -l dir ~/work/software/ssparse
    set -gx --prepend LD_LIBRARY_PATH $dir/lib
end
