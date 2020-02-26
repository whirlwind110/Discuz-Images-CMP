#!/bin/bash
base='./'
du -s "$base"
find "$base" -iname "*.jpg"  -print0 -or -iname "*.jpeg" -print0|xargs -0 jpegoptim --strip-all
find "$base" -iname "*.png"  -print0|xargs -0 optipng -strip all -o9
du -s "$base"
