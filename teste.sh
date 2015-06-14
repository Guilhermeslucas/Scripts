#!/bin/bash

touch lixo
touch resposta

if ls | grep lixo > resposta
then
    echo "dahora"
else
    echo "not dahora"
fi

rm resposta
