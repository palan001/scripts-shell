#!/bin/bash

#echo $1 $2 $3
#Define a variável aluno

echo "Digite o nome: "
read ALUNO

#Define a variável P1
echo "Digite a nota da P1:"
read P1



#Define a variiável P2
echo "Degite a nota da P2:"
read P2

#calculando a média
SOMA=$(expr $P1 + $P2)
MEDIA=$(expr $SOMA / 2)

echo "A média do $ALUNO é $MEDIA"

