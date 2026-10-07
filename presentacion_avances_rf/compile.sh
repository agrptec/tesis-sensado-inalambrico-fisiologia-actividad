#!/bin/sh

set -eu

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
cd "$SCRIPT_DIR"

BUILD_DIR="$SCRIPT_DIR/.build"
mkdir -p "$BUILD_DIR"

pdflatex -interaction=nonstopmode -halt-on-error \
    -output-directory="$BUILD_DIR" main.tex
pdflatex -interaction=nonstopmode -halt-on-error \
    -output-directory="$BUILD_DIR" main.tex
cp "$BUILD_DIR/main.pdf" "$SCRIPT_DIR/main.pdf"

echo "Presentación compilada: $SCRIPT_DIR/main.pdf"
