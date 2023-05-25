#!/bin/bash

for i in *figure*.pdf; do
  # remove the pdf extension from the filename so we can output the same filename but png extension
  fname=$(basename "$i" .pdf)
  pdftoppm -r 500 $i ${fname} -png
done
