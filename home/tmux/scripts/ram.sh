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
    printf "%.1fG/%.1fG", used / 1024 / 1024, total / 1024 / 1024
}
' /proc/meminfo
