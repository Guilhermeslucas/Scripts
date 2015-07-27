#!/bin/bash

#script para gerenciar as séries de tv que cada um acompanha
#serve para listar quais episodios ja viu e atualizar a lista
#alem de ser possivel sempre adicionar mais series quando quiser

#pergunta ao usuario qual o tipo de acao deseja realizar
echo "Início do Script"
read -p "(i)nserir,(c)onsultar uma,(v)er todas ou (e)xcluir " opcao

#insere no arquivo, retirando linha que possui a serie atualizada
if test $opcao = "i"
then
    read -p "Digite o nome da serie " serie
    read -p "Digire a temporada " temporada
    read -p "Digite o episodio " episodio
    
    #o -v mostra todos os arquivos que nao tem a variavel
    #e coloca em outro arquivo de texto, renomeando posteriormente
    grep -v $serie series.txt >> seriesaux.txt
    echo "$serie,S$temporada,E$episodio" >> seriesaux.txt
    mv seriesaux.txt /home/glucas/Documentos/Cursos/Shell\ Script/series.txt

#procura a ocorrencia da serie e mostra no terminal
elif test $opcao = "c"
then
    read -p "Digite a serie " serie
    grep $serie series.txt

#simplesmeste imprime na tela o txt que armazena as series
elif test $opcao = "v"
then
    cat series.txt 

#usa o mesmo principio do grep para inserir arquivos
elif test $opcao = "e"
then 
    read -p "Digite a serie " serie
    grep -v $serie series.txt >> seriesaux.txt
    mv seriesaux.txt /home/glucas/Documentos/Cursos/Shell\ Script/series.txt

else
    echo "Esse não é um comando válido"
fi

