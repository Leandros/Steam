#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

uglifycss github.css > github.min.css
uglifycss screen.css > screen.min.css
cat github.min.css > styles.min.css
cat screen.min.css >> styles.min.css

rm github.min.css
rm screen.min.css
