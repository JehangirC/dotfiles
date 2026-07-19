{ config, pkgs, user, ... }:
{
  home.username = user;
  home.homeDirectory = "/home/${user}";
  home.stateVersion = "26.05";

  programs.home-manager.enable = true;

  # optional: let HM manage zshrc
  programs.zsh = {
    enable = true;
    # enableCompletion = true;
  };

  home.packages = with pkgs; [
    ripgrep fd bat eza jq git zsh
  ];
}

