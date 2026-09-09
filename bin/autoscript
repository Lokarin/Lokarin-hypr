#!/bin/bash

script_name=$1


if [ -z "$script_name" ]; then
	echo "Erro: Dê um nome ao script!"
	exit 1

else
	touch "$script_name.sh"

	which bash > "$script_name.sh"

	chmod +x "$script_name.sh"

	echo "$script_name.sh criado com sucesso!"

	nvim "$script_name.sh"
fi
