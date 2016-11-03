#!/bin/bash

#this is a simple script to discover the price of the egg, for my grandfather

echo "########### Downloading HTML #######"
curl http://www.noticiasagricolas.com.br/cotacoes/ovos/ovos-extras-ceasas > code.html
echo "######## Downloaded HTML ######"

echo "##### Search for Patterns ######"
grep -A 1  \<td\>Vermelho\ -\ Extra\<\/td\> code.html > search.txt
echo "###### Found Patterns #######"

string=`sed -n '2p' search.txt`

echo $string

rm -f code.html
rm -f search.txt
