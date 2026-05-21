#!/bin/bash

set -e

THEME="source/mvx-theme.css"

mkdir -p pdf pptx

build_lesson() {
    local input="$1"
    local name
    name=$(basename "$input" .md)

    marp "$input" --pdf --theme "$THEME" -o "pdf/${name}.pdf" --allow-local-files
    marp "$input" --pptx --theme "$THEME" -o "pptx/${name}.pptx" --allow-local-files

    echo "Built: ${name}"
}

for lesson in source/lesson*.md; do
    build_lesson "$lesson"
done

echo "Done: all lessons built."

