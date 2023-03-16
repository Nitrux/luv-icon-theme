#! /bin/bash


find "$@" -name '*.svg' \
    | sed 's/.svg//g' \
    | xargs -I @ inkscape -z @.svg -o @.png
