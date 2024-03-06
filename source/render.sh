#!/bin/bash
echo "Please list the Quarto files (filename.qmd) you want to render:"
read quartofiles
quarto render $quartofiles --to pdf
mv *.pdf ..