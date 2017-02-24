#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

minify --no-comments github.css
minify --no-comments screen.css
cat github.min.css > styles.min.css
cat screen.min.css >> styles.min.css

rm github.min.css
rm screen.min.css
