{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ./programs.nix
  ];

  # Home Manager needs a bit of information about you and the paths it should manage
  home.username = "tadeasf";
  home.homeDirectory = "/home/tadeasf";

  # Enable fontconfig
  fonts.fontconfig.enable = true;

  # This value determines the Home Manager release that your configuration is compatible with
  home.stateVersion = "24.11";

  # Let Home Manager install and manage itself
  programs.home-manager.enable = true;
}
