#!/usr/bin/env bash

command="$1"

case "$command" in
    python|python3)
        echo "Python"
        ;;
    rustc|cargo)
        echo "Rust"
        ;;
    nix|nix-shell|nixos-rebuild)
        echo "Nix"
        ;;
    bash)
        echo "Bash"
        ;;
    zsh)
        echo "Zsh"
        ;;
    elixir|iex)
        echo "Elixir"
        ;;
    nu)
        echo "Nushell"
        ;;
    nvim|vim)
        echo "Neovim"
        ;;
    *)
        echo "$command"
        ;;
esac
