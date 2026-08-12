#!/usr/bin/env bash

# Workspace atual
ws=$(hyprctl activeworkspace -j | jq -r '.id')

# Monitor atual
cur=$(hyprctl activeworkspace -j | jq -r '.monitorID')

# Outro monitor
mon=$(hyprctl monitors -j |
    jq -r --argjson cur "$cur" '
        map(select(.id != $cur)) | .[0].name
    ')

# Move o workspace para o outro monitor
hyprctl dispatch "hl.dsp.workspace.move({ workspace = $ws, monitor = \"$mon\" })"
