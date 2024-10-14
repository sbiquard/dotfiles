# preferred software
set -gx EDITOR hx
set -gx BROWSER firefox

# pyenv
set -gx PYENV_ROOT ~/.pyenv

# TeX
set -gx --append PATH ~/texlive/2023/bin/x86_64-linux
set -gx --append MANPATH ~/texlive/2023/texmf-dist/doc/man
set -gx --append INFOPATH ~/texlive/2023/texmf-dist/doc/info
