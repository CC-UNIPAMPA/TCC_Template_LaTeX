#!/bin/bash

for FILE in $(ls *.tex)
do
    FILE=(${FILE//./ })
    RM_FILES=$(find . -type f -maxdepth 1 -name $FILE.\* | grep -v -E "($FILE.tex|$FILE.bib|$FILE.pdf)")
    echo "Removendo arquivos $RM_FILES ..."
    rm -f $RM_FILES
done

find . -type f -name \*.aux -exec rm -f {} \;
