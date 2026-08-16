
function gacp() {
    git add . &&
    git commit -m "$1" &&
    git push
}

# makes dir and then cds into it
function mkcd() {
   mkdir -p "$1" && cd "$1"
}

#rebuilds the nixos
function rebuild() {
    sudo nixos-rebuild switch --flake ".#aaher"
}

#rebuilds nixos and checks git status
function nrs() {
    sudo nixos-rebuild switch --flake ".#aaher" &&
    git -C ~/projects/nixos-config status
}

