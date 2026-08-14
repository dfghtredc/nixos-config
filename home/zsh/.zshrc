#~/.zshrc

export  PATH="$HOME/.local/bin:$PATH"

HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

setopt appendhistory
setopt sharehistory
setopt hist_ignore_dups

for config in ~/.config/zsh/aliases/*.zsh; do
    [ -r "$config" ] && source "$config"
done
