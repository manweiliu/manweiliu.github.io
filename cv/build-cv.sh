#!/bin/bash
# Build CV: cv.md → cv.pdf
# Usage: ./build-cv.sh
# You only need to edit cv.md — the template handles all formatting.

set -e

DIR="$(cd "$(dirname "$0")" && pwd)"

pandoc "$DIR/cv.md" \
  --template="$DIR/cv-template.tex" \
  --pdf-engine=xelatex \
  -o "$DIR/cv.pdf"

echo "✅ CV generated: $DIR/cv.pdf"
