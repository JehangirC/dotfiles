{ config, pkgs, user, ... }:
{
  system.stateVersion = "26.05";

  users.users.${user} = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    shell = pkgs.zsh;
  };

  environment.systemPackages = with pkgs; [
    git
    curl
    wget
    vim
    zsh
  ];

  programs.zsh.enable = true;
  services.openssh.enable = true;
}
