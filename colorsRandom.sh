#!/usr/bin/bash

# Simple CLI for shell-color-scripts
let random_index=$RANDOM
let num=12
let result=$random_index%$num+1

if [[ $result -eq 1 ]]
then
    colorscript -e illumina
elif [[ $result -eq 2 ]]
then
    colorscript -e space-invaders
elif [[ $result -eq 3 ]]
then
    colorscript -e bars
elif [[ $result -eq 4 ]]
then
    colorscript -e monster
elif [[ $result -eq 5 ]]
then
    colorscript -e pukeskull
elif [[ $result -eq 6 ]]
then
    colorscript -e zwaves
elif [[ $result -eq 7 ]]
then
    colorscript -e ghosts
elif [[ $result -eq 8 ]]
then
    colorscript -e panes
elif [[ $result -eq 9 ]]
then
    colorscript -e elfman
elif [[ $result -eq 10 ]]
then
    colorscript -e faces
elif [[ $result -eq 11 ]]
then
    colorscript -e rails
elif [[ $result -eq 12 ]]
then
    colorscript -e crunchbang-mini
else
    echo "Error en el código."
fi
