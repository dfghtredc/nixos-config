#!/usr/bin/env bash

awk '
/MemTotal/ {
    total = $2
}

/MemAvailable/ {
    available = $2
}

END {
    used = total - available
    percentage = (used / total) * 100

    printf "%.1fG/%.1fG %.0f%%\n", \
        used / 1024 / 1024, \
        total / 1024 / 1024, \
        percentage
}
' /proc/meminfo
