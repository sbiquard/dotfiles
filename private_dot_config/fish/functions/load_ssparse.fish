function load_ssparse
    set -l dir ~/work/software/ssparse
    set -gx --prepend LD_LIBRARY_PATH $dir/lib
end
