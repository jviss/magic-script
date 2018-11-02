#!/bin/bash
for file in *; do
    if [ -d $file ]
    then
        cd $file
        $0
    else
        if [[ $file == *.tex ]]
        then
             lualatex $file
        elif [[ $file == *.java ]]
        then
             javac $file
        fi
    fi

done
