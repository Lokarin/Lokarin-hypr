#!/usr/bin/env bash

# Importa as cores do pywal
source "${HOME}/.cache/wal/colors.sh"

# Cria um config temporário com as cores do pywal
cat > ~/.cache/mako_pywal_config <<EOF
max-visible=7
sort=-time
output=HDMI-A-1
layer=top
anchor=top-right

font=monospace 10
background-color=${color0}BF         
text-color=${color7}
width=300
height=200
margin=10
padding=5
border-size=2
border-color=${color4}               
border-radius=10
progress-color=over ${color4}F0
icons=1
max-icon-size=64
icon-path=""
markup=1
actions=1
default-timeout=10000
ignore-timeout=0
group-by=none
EOF

# Reinicia o mako com a nova configuração
pkill mako
mako --config ~/.cache/mako_pywal_config &

