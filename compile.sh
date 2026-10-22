#!/bin/sh

set -eu

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
cd "$SCRIPT_DIR"

echo "Compilando main.tex..."

if command -v latexmk >/dev/null 2>&1; then
    latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex
else
    for herramienta in pdflatex bibtex makeindex; do
        if ! command -v "$herramienta" >/dev/null 2>&1; then
            echo "Error: se requiere latexmk o las herramientas pdflatex, bibtex y makeindex." >&2
            exit 127
        fi
    done

    BUILD_DIR="$SCRIPT_DIR/.build"
    mkdir -p "$BUILD_DIR"

    pdflatex -interaction=nonstopmode -halt-on-error \
        -output-directory="$BUILD_DIR" main.tex

    (
        cd "$BUILD_DIR"
        BIBINPUTS="$SCRIPT_DIR:" bibtex main
        if [ -s main.acn ]; then
            makeindex -s main.ist -t main.alg -o main.acr main.acn
        fi
    )

    pdflatex -interaction=nonstopmode -halt-on-error \
        -output-directory="$BUILD_DIR" main.tex
    pdflatex -interaction=nonstopmode -halt-on-error \
        -output-directory="$BUILD_DIR" main.tex
    cp "$BUILD_DIR/main.pdf" "$SCRIPT_DIR/main.pdf"
fi

echo "Compilación terminada: $SCRIPT_DIR/main.pdf"
