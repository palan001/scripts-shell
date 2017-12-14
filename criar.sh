#!/bin/bash

echo "Adicionando usuarios no servidor" 


for usuario in $(cat  usuario.txt); do
	user=$(cat /etc/passwd | grep ^$usuario | cut -d: -f1)
test -z $user

		if [ $? -eq 0 ]; then
			echo "O usuário $usuario nao está cadastrado"
			echo "Para cadastrar, pressione ENTER"
			read
			useradd $usuario
			echo "Usuario cadastrado com sucesso"
		else
			echo "Usuario $usuario ja cadastrado"
		fi
done
