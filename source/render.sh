#!/bin/bash

MAGENTA=$(tput setaf 5)
RESET=$(tput sgr0)

printf "Please list the Quarto files you want to render. Type 'all' to render all Quarto files.\n Examples: \n\t ${MAGENTA}filename1.qmd \n\t filename1.qmd filename2.qmd \n\t all\n${RESET}"
read quartofiles

if [ "$quartofiles" == "all" ]; then
    quarto render *.qmd --to pdf
else
    quarto render $quartofiles --to pdf
fi

mv *.pdf ..