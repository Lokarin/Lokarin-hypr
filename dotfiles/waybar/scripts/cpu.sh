#!/usr/bin/bash

# leitura 1
read -r _ a b c d e f g h i j < /proc/stat
prev_total=$((a+b+c+d+e+f+g+h+i+j))
prev_idle=$d

sleep 0.2

# leitura 2
read -r _ a b c d e f g h i j < /proc/stat
total=$((a+b+c+d+e+f+g+h+i+j))
idle=$d

diff_total=$((total - prev_total))
diff_idle=$((idle - prev_idle))

if [ "$diff_total" -eq 0 ]; then
  cpu=0
else
  cpu=$((100 * (diff_total - diff_idle) / diff_total))
fi

printf " : %d%%\n" "$cpu"

