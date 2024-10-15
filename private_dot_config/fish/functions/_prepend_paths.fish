function _prepend_paths
    set -l dir "$argv[1]"
    set -gx --prepend PATH {$dir}/bin
    set -gx --prepend CPATH {$dir}/include
    set -gx --prepend LIBRARY_PATH {$dir}/lib
    set -gx --prepend LD_LIBRARY_PATH {$dir}/lib
end
