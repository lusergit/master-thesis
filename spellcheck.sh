#!/bin/bash

# Find all tex files that do not start as `mod', are not in the
# `discarded' or `old' folders and run aspell on them
find . -iwholename "**/src/chapters/**/[^mod]*.tex" \
     -not -path "**/discard*" \
     -not -path "**/old*" \
     -exec xargs aspell -t -c {} \;
