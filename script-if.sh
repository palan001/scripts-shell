#!/bin/bash

echo "Digite o nome do usuário: "
read USUARIO

CONSULTA=$(getent passwd | grep ^$USUARIO | cut -d: -f1)

test -z $CONSULTA

if [ $? -eq 0 ] ; then
	echo "O usuario $USUARIO nao existe"
else
	echo "O usuario $USUARIO existe"
fi


