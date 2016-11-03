#!/bin/bash

#Simple Script to learn some shell 
#it downloads the latest nerdcast

#usa comando curl para baixar o html, para procurar o link
echo "########Downloading HTML########"
curl http://jovemnerd.com.br/categoria/nerdcast/ > site.html
echo "########Downloaded HTML########"

#searches for .zip, that is the file part
echo "########procurando link########"
grep .zip site.html > results.txt

#cut the file to get the link
cut -d'"' -f2 results.txt > results2.txt

#makes the complete link
Link=`head -1 results2.txt`
echo "######## Found Link ########"

#Remove the files created by the script
rm -f results*
rm -f site.html

echo "######## Do you want to download $Link ? ########"
read -p "(S)im ou (N)ão " answer
 

if test "$answer" == "N"
then
    exit
fi

#downloads the file
wget $Link

echo "#### Download Completed. Have a nice nerdcast ####"
