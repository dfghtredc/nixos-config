#!/usr/bin/env bash

path="$1"

awk -F/ '
{
    start = NF - 2
    if (start < 1) start = 1

    for (i = start; i <= NF; i++) {
        if ($i != "") {
            printf "%s%s", sep, $i
            sep = "/"
        }
    }
}
' <<< "$path"
