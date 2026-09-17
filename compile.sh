#!/bin/sh

set -eu

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
cd "$SCRIPT_DIR"

if ! command -v latexmk >/dev/null 2>&1; then
    echo "Error: latexmk no está instalado o no está disponible en PATH." >&2
    exit 127
fi

echo "Compilando main.tex..."
latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex
echo "Compilación terminada: $SCRIPT_DIR/main.pdf"
