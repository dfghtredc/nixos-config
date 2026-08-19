alias flake-check="nix flake check"
alias flake-update="nix flake update"
alias flake-lock="nix flake lock"
alias flake-show="nix flake show"

alias test-build='sudo nixos-rebuild test --flake ".#aaher"'
alias boot-build="sudo nixos-rebuild boot --flake ~/projects/nixos-config .#aaher"
alias rollback="sudo nixos-rebuild switch --rollback"

alias generations="sudo nix-env --list-generations --profile /nix/var/nix/profiles/system"

alias nix-search="nix search nixpkgs"
alias nix-dev="nix develop"
alias nix-run="nix run"

alias nix-gc="sudo nix-collect-garbage -d"
alias nix-gc-old="sudo nix-collect-garbage --delete-older-than 30d"
