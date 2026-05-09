#!/bin/sh
set -e

apk add --no-cache texlive texmf-dist-latexextra texmf-dist-fontsrecommended make
fmtutil-sys --byfmt pdflatex
bash .devcontainer/install-claude.sh
