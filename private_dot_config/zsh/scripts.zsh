# scripts.zsh


###----- CMB environment (TOAST + Mappraiser) -----###

_prepend_paths()
{
    dir="$1"
    export PATH="${dir}/bin:$PATH"
    export CPATH="${dir}/include:$CPATH"
    export LIBRARY_PATH="${dir}/lib:$LIBRARY_PATH"
    export LD_LIBRARY_PATH="${dir}/lib:$LD_LIBRARY_PATH"
}

_prepend_pythonpath()
{
    dir="$1"
    # Assume Python environment is already loaded
    pysite=$(python3 --version 2>&1 | awk '{print $2}' | sed -e "s#\(.*\)\.\(.*\)\..*#\1.\2#")
    export PYTHONPATH="${dir}/lib/python${pysite}/site-packages:$PYTHONPATH"
}

load_toast_intel()
{
    dir=~/work/software/toast-intel
    _prepend_paths $dir
    pyenv activate toast_intel
    _prepend_pythonpath $dir
    load_ssparse
}

load_mappraiser()
{
    dir=~/work/software/mappraiser
    echo "Mappraiser install location : ${dir}"
    _prepend_paths ${dir}
    _prepend_pythonpath ${dir}
    # export PREALPS_ROOT="/home/sbiquard/work/repos/preAlps"
}

cmbenv()
{
    module load compiler debugger mpi mkl
    echo "Loading TOAST"
    load_toast_intel
    echo "Loading Mappraiser"
    load_mappraiser
}


###----- TOAST dev install -----###

load_toast()
{
    dir=~/work/software/toast-gcc
    _prepend_paths $dir
    pyenv activate toastdev
    _prepend_pythonpath $dir
    load_ssparse
}

###---------- Jean Zay ----------###

hub_jz()
{
    # SSH port forwarding to apcssh gateway
    # assumes host 'apcssh' is configured in .ssh/config
    ssh -D localhost:9080 -N -f apcssh

    # Open firefox with jz profile
    firefox -p jz &
}


###---------- SuiteSparse ----------###

load_ssparse()
{
    dir=~/work/software/ssparse
    export LD_LIBRARY_PATH="${dir}/lib:$LD_LIBRARY_PATH"
}
