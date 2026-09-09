#!/bin/bash

script=$1
file=$script.sh

if [ -z "$script" ]; then
	echo "Erro: Favor específicar qual é o script (sem .sh no final)"
	exit 1

elif [ ! -f "$file" ]; then
	echo "Erro: '$file' não é um arquivo existente."
	exit 1

else
	cp "$script.sh" /home/lokarin/bin/"$script"
	echo "Copiado $file para ~/bin com sucesso!"
fi
