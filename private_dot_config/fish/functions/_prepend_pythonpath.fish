function _prepend_pythonpath
    set -l dir "$argv[1]"
    # Assume Python environment is already loaded
    set -l pysite (python3 --version 2>&1 | awk '{print $2}' | sed -e "s#\(.*\)\.\(.*\)\..*#\1.\2#")
    set -gx --prepend PYTHONPATH {$dir}/lib/python{$pysite}/site-packages
end
