for file in ~/.config/zsh/aliases/*.zsh; do
    if [ -f "$file" ]; then
        source "$file"
    fi
done
