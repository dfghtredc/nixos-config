#!/usr/bin/env bash

read_cpu() {
    awk '
    /^cpu / {
        total = $2 + $3 + $4 + $5 + $6 + $7 + $8 + $9
        idle = $5 + $6
        print total, idle
        exit

    }
    ' /proc/stat
}

read -r total1 idle1 <<< "$(read_cpu)"

sleep 1

read -r total2 idle2 <<< "$(read_cpu)"

total_delta=$((total2 - total1))
idle_delta=$((idle2 - idle1))

if [ "$total_delta" -gt 0 ]; then
    awk -v total="$total_delta" -v idle="$idle_delta" \
        'BEGIN { printf "%.2f%%\n", ((total - idle) / total) * 100 }'

else
    printf "0.00%%\n"
fi


