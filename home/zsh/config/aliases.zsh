for file in ~/.config/zsh/aliases/*.zsh; do
    if [ -r "$file" ] && source "$file"
done
