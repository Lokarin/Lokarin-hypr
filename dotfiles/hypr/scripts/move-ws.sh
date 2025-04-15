#!/usr/bin/env bash

# Descobre o número do workspace atual
ws=$(hyprctl activeworkspace -j | jq '.id')

# Argumento: direção (left/right)
dir=$1

# Descobre o monitor de destino
mon=$(hyprctl monitors -j | jq -r --argjson cur "$(hyprctl activeworkspace -j | jq '.monitorID')" '
  map(select(.id != $cur)) | .[0].name')

# Executa o comando para mover o workspace
hyprctl dispatch moveworkspacetomonitor "$ws" "$mon"
