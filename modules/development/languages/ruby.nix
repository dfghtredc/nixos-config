{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    ruby
    rubyPackages.ruby-lsp
    rubyPackages.rubocop
  ];
}
