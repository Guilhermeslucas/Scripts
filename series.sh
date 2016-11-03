#!/bin/bash

#script to manage all the series I watch

#Prompt the user for its option
echo "Begin of the Script"
read -p "(i)nsert,(c)heck one,(v)erify all ou d(e)lete " option

if test $option = "i"
then
    read -p "Whats the series name " series
    read -p "Whats the season " season
    read -p "Type the episode " episode
    
    grep -v $series series.txt >> seriesaux.txt
    echo "$series,S$season,E$episode" >> seriesaux.txt
    mv seriesaux.txt series.txt

elif test $option = "c"
then
    read -p "Whats the series " series
    grep $series series.txt

elif test $option = "v"
then
    cat series.txt 

elif test $option = "e"
then 
    read -p "Whats the series " series
    grep -v $series series.txt >> seriesaux.txt
    mv seriesaux.txt series.txt

else
    echo "This is not a valid command"
fi
