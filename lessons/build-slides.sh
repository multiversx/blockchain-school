#!/bin/bash

set -e

THEME="source/mvx-theme.css"
INPUT="source/lesson1.md"

mkdir -p pdf pptx

marp "$INPUT" --pdf --theme "$THEME" -o pdf/lesson1.pdf --allow-local-files
marp "$INPUT" --pptx --theme "$THEME" -o pptx/lesson1.pptx --allow-local-files

echo "Done: PDF and PPTX generated."

