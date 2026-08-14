#~/.zshrc

export PATH="$HOME/.local/bin:$PATH"

HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

setopt appendhistory
setopt sharehistory
setopt hist_ignore_dups

#Zsh configuration
source ~/.config/zsh/options.zsh
source ~/.config/zsh/functions.zsh
source ~/.config/zsh/aliases.zsh
