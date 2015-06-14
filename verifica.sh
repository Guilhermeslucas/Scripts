#!/bin/bash

touch resultado
if ls | grep $1 musicas > resultado
then
    echo "esse artista ja existe"
else
    echo "esse não exite"

rm resultado
   
fi

