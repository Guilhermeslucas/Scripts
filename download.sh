#!/bin/bash

#Script simples, para aprender a usar comandos como curl
#wget, cut e grep
#sua funcao é baixar o nerdcast mais atual 

#usa comando curl para baixar o html, para procurar o link
echo "########baixando HTML########"
curl http://jovemnerd.com.br/categoria/nerdcast/ > site.html
echo "########baixado com sucesso########"

#procura pela ocorrencia do zip, que é parte do link para download
echo "########procurando link########"
grep .zip site.html > resultados.txt

#corta o arquivo para pegar somente o link
cut -d'"' -f2 resultados.txt > resultados2.txt

#direciona a saída do comando para a variável
Link=`head -1 resultados2.txt`
echo "########Link encontrado########"

#remove arquivos criados para a execução do Script
rm -f resultados*
rm -f site.html

#pergunta se o usuario quer baixar o nerdcast, tratando o link
echo "########Voce quer baixar $Link ? ########"
read -p "(S)im ou (N)ão " resposta
 

if test "$resposta" == "N"
then
    exit
fi

#finalmente baixa o conteudo
wget $Link


echo "####Seu Download foi realizado com sucesso. Bom Nerdcast####"

