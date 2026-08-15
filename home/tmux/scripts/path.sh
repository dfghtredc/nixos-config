#!/usr/bin/env bash

path="$1"

if [ "$path" = "$HOME" ]; then
    printf "~"
    exit
fi

if [[ "$path" == "$HOME/"* ]]; then 
    path="${path#"$HOME"/}"
fi

IFS='/' read -ra parts <<< "$path"

count="${#parts[@]}"

if [ "$count" -gt 3 ]; then
    printf "%s/%s/%s" \
	"${parts[count-3]}" \
	"${parts[count-2]}" \
	"${parts[count-1]}"

else
    printf "%s" "$path"
fi
