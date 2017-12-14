#!/bin/bash

while true
do

echo -e "

	1 - Adiicionar Usuario
	2 - Deletar Usuario
	3 - Verificar Usuario
	4 - Sair   "

echo -n "Escolha uma das opcoes: "
read OPT

case $OPT in 
1) 
	clear 
	echo -n "Digite o nome do usuario"
	read USUARIO
	echo -n "Digite a senha:"
	read SENHA

	echo "Adicionando novo usuario"
	adduser $USUARIO
	echo $SENHA | passwd $USUARIO --stdin
	if [ $? -eq 0 ]; then 
		echo "O usuario foi adicionado com sucesso"
	else
		echo "Nao foi possivel adicionar o usuario"
	fi
;;

2)
	clear
	echo "Digite o nome do usuario para deletar"
	read USUARIO
	
	echo "Deletando usuario"
	userdel $USUARIO
	
	if [ $? -eq 0 ]; then
		echo "O usuario foi deletado com sucesso"
	else
		echo "Nao foi possivel deletar o usuario"
	fi
;;

3)
	/root/scripts-shell/criar.sh
;;

4) 
	clear
	exit

;;

*) echo "Escolha uma opcao valida"

;;

esac
	
done
